/*
 * application_manager.c
 * 
 * Created: 10/4/2018 1:37:19 PM
 *  Author: I17643
 *  Modified: Nghia Tran 1/3/2021
 */

#include <string.h>
#include <time.h>
#include <stdio.h>
#include <atomic.h>
#include <avr/wdt.h>
#include "application_manager.h"
#include "atmel_start_pins.h"
#include "atmel_start.h"
#include "config/IoT_Sensor_Node_config.h"
#include "cloud/cloud_service.h"
#include "cloud/crypto_client/cryptoauthlib_main.h"
#include "cloud/crypto_client/crypto_client.h"
#include "cloud/wifi_service.h"
#if CFG_ENABLE_CLI
#include "cli/cli.h"
#endif
#include "credentials_storage/credentials_storage.h"
#include "led.h"
#include "debug_print.h"
#include "sensors_handling.h"

#define MAIN_DATATASK_INTERVAL 100L
// The debounce time is currently close to 2 Seconds.
#define SW_DEBOUNCE_INTERVAL 1460000L

#define SW0_TOGGLE_STATE SW0_get_level()
#define SW1_TOGGLE_STATE SW1_get_level()

// User button
#define BUTTON_5ML      32      //0b00100000    Key status reg 1
#define BUTTON_10ML     64      //0b01000000    Key status reg 1
#define BUTTON_15ML     128     //0b10000000    Key status reg 1
#define BUTTON_STOP     1       //0b00000001    Key status reg 2

// Dispense level
#define VOL_5ML         1       //0b00000001    Key status reg 1
#define VOL_10ML        3       //0b00000011    Key status reg 1
#define VOL_15ML        7       //0b00000111    Key status reg 1
#define VOL_20ML        15      //0b00001111    Key status reg 1
#define VOL_25ML        31      //0b00011111    Key status reg 1

// Pump PWM
#define PWM_VAL 900


// This will contain the device ID, before we have it this dummy value is the init value which is non-0
char                       attDeviceID[20] = "BAAAAADD1DBAAADD1D";
shared_networking_params_t shared_networking_params;
ATCA_STATUS                retValCryptoClientSerialNumber;

absolutetime_t MAIN_dataTask(void *payload);
timer_struct_t MAIN_dataTasksTimer = {MAIN_dataTask};


// Dispense parameter
uint8_t temp[5];
uint8_t liquidLevelRaw;
uint8_t buttonInputRaw;
uint8_t buttonStopInput;
uint8_t liquidLevelVal;
uint16_t pumpPWM;
int tempTotal;
uint8_t liquidLevelAverage;
uint8_t liquidLevel;
uint8_t dispenseAmountCmd;
bool processComplete = true;

//void dispense(uint8_t);
void dispenseProcess(void);

void wifiConnectionStateChanged(uint8_t status);



void application_init()
{
	uint8_t  mode          = WIFI_DEFAULT;
	uint32_t sw0CurrentVal = 0;
	uint32_t sw1CurrentVal = 0;
	uint32_t i             = 0;

	wdt_disable();

	// Initialization of modules before interrupts are enabled
	atmel_start_init();
    
    //Print welcome message
    //printf("**************************************************\r\n");
    //printf("*        Smart Liquid Dispenser                  *\r\n");
    //printf("**************************************************\r\n");

	LED_test();
#if CFG_ENABLE_CLI
	CLI_init();
	CLI_setdeviceId(attDeviceID);
#endif
	debug_init(attDeviceID);

	ENABLE_INTERRUPTS();

	// Initialization of modules where the init needs interrupts to be enabled
	cryptoauthlib_init();

	if (cryptoDeviceInitialized == false) {
		debug_printError("APP: CryptoAuthInit failed");
	}
	// Get serial number from the ECC608 chip
	retValCryptoClientSerialNumber = CRYPTO_CLIENT_printSerialNumber(attDeviceID);
	if (retValCryptoClientSerialNumber != ATCA_SUCCESS) {
		switch (retValCryptoClientSerialNumber) {
		case ATCA_GEN_FAIL:
			debug_printError("APP: DeviceID generation failed, unspecified error");
			break;
		case ATCA_BAD_PARAM:
			debug_printError("APP: DeviceID generation failed, bad argument");
		default:
			debug_printError("APP: DeviceID generation failed");
			break;
		}
	}
#if CFG_ENABLE_CLI
	CLI_setdeviceId(attDeviceID);
#endif
	debug_setPrefix(attDeviceID);

	// Blocking debounce
	for (i = 0; i < SW_DEBOUNCE_INTERVAL; i++) {
		sw0CurrentVal += SW0_TOGGLE_STATE;
		sw1CurrentVal += SW1_TOGGLE_STATE;
	}
	if (sw0CurrentVal < (SW_DEBOUNCE_INTERVAL / 2)) {
		if (sw1CurrentVal < (SW_DEBOUNCE_INTERVAL / 2)) {
			strcpy(ssid, CFG_MAIN_WLAN_SSID);
			strcpy(pass, CFG_MAIN_WLAN_PSK);
			sprintf((char *)authType, "%d", CFG_MAIN_WLAN_AUTH);
			LED_startBlinkingGreen();
		} else {
			mode = WIFI_SOFT_AP;
		}
	}
	wifi_init(wifiConnectionStateChanged, mode);

	if (mode == WIFI_DEFAULT) {
		CLOUD_init(attDeviceID);
		scheduler_timeout_create(&MAIN_dataTasksTimer, MAIN_DATATASK_INTERVAL);
	}
    
    //Init liquid level sensor 
    SENSOR_qtGetCommsReady();
    //SENSOR_qtGetSetup();
    //SENSOR_qtGetSetupSliderEna();
    //SENSOR_qtCalibrate();
    
    
	LED_test();
}

void application_post_provisioning(void)
{
	CLOUD_init(attDeviceID);
	scheduler_timeout_create(&MAIN_dataTasksTimer, MAIN_DATATASK_INTERVAL);
}

// React to the WIFI state change here. Status of 1 means connected, Status of 0 means disconnected
void wifiConnectionStateChanged(uint8_t status)
{
	// If we have no AP access we want to retry
	if (status != 1) {
		// Restart the WIFI module if we get disconnected from the WiFi Access Point (AP)
		CLOUD_reset();
	}
}

// This scheduler will check all tasks and timers that are due and service them
void runScheduler(void)
{
	scheduler_timeout_call_next_callback();
}

// This could be better done with a function pointer (DI) but in the interest of simplicity
//     we avoided that. This is being called from MAIN_dataTask below
void sendToCloud(void);

// This gets called by the scheduler approximately every 100ms
absolutetime_t MAIN_dataTask(void *payload)
{
	static time_t previousTransmissionTime = 0;

	// Get the current time. This uses the C standard library time functions
	time_t timeNow = time(NULL);

	// Example of how to send data when MQTT is connected every 1 second based on the system clock
	if (CLOUD_isConnected()) {
		// How many seconds since the last time this loop ran?
		int32_t delta = difftime(timeNow, previousTransmissionTime);

		if (delta >= CFG_SEND_INTERVAL) {
			previousTransmissionTime = timeNow;

			// Call the data task in main.c
			sendToCloud();
		}
	}

	LED_BLUE_set_level(!shared_networking_params.haveAPConnection);
	LED_RED_set_level(!shared_networking_params.haveERROR);
	if (LED_isBlinkingGreen() == false) {
		LED_GREEN_set_level(!CLOUD_isConnected());
	}
    
    //*********************************************************************
    // Process pump liquid
    //      1. Read user button input command and liquid level
    //      2. Base on command input, start dispense the amount
    //      3. Calculate average or perform average filter
    //      3. Perform dispense process
    //      4. Update PWM to pump motor
    //
    //      The dispense process also receives from command from the cloud
    //*********************************************************************
    //
    // Process 1: 
    // Read user button input command and liquid level
    // Read touch sensor QT2120 for liquid level and button input command
    // Qt2120Status[1]: Status of key 0-7. 
    // Qt2102Status[2]: Status of key 8-11] 
    SENSOR_qtReadKeyStatus(sizeof(Qt2120Status), Qt2120Status);
    //printf("%d %d\r\n", Qt2120Status[1], Qt2120Status[2]);
    buttonInputRaw = Qt2120Status[1] & 0b11100000;
    buttonStopInput = Qt2120Status[2] & 0b00000001;
    liquidLevelRaw = Qt2120Status[1] & 0b00011111;
    // Process 2: 
    // Base on command input, start dispense the amount
    // The user buttons use key 5-7 from Qt2120Status[1]] and 
    //    key 8 from Qt2120Status[2]
    // Key 5: Command to start pump 5ml
    // Key 6: Command to start pump 10ml
    // Key 7: Command to start pump 15ml
    // Key 8: Command to stop pump
    if(buttonInputRaw == BUTTON_5ML)
        dispense(5);
    else if (buttonInputRaw == BUTTON_10ML)
        dispense(10);
    else if (buttonInputRaw == BUTTON_15ML)
        dispense(15);
    else if (buttonStopInput == BUTTON_STOP) {
        processComplete = true;
        PWM_0_load_duty_cycle_ch0(0);
        dispense(0);
        printf("*** STOP***\r\n");
    }
    else
    {
    };
    
    
/*  if(buttonInputRaw == BUTTON_5ML)
        dispense(5);
    else if (buttonInputRaw == BUTTON_10ML)
        dispense(10);
    else if (buttonInputRaw == BUTTON_15ML)
        dispense(15);
    else if (Qt2120Status[2] == BUTTON_STOP) {
        processComplete = true;
        PWM_0_load_duty_cycle_ch0(0);
        printf("*** STOP***\r\n");
    }
    else
    {
    };
 */
    
    // Process 2: Calculate average sensor data (Average filter) 
    // Liquid sensor use key 0-4 from Qt2120Status[1]]
    // Key 0: to detect 5ml level
    // Key 0&1: to detect 10m level
    // Key 0&1&2: to detect 15 ml level
    // Key 0&1&2&3: to detect 20 ml level
    // Key 0&1&2&3&4: to detect 25 ml level
    temp[4] = temp[3]; 
    temp[3] = temp[2]; 
    temp[2] = temp[1]; 
    temp[1] = temp[0];
    temp[0] = liquidLevelRaw;//Qt2120Status[1];
    tempTotal = 0;
    
    int i;
    for(i = 0; i < 5; i++){
        tempTotal = tempTotal + temp[i];
    }
    liquidLevelAverage = (uint8_t) (tempTotal/5);
    liquidLevel = liquidLevelAverage;
 
    
    // If pump process is not complete, start and continue executing dispense process
    if(!processComplete) {
        dispenseProcess();
    }
 
    //Update pwm for pump motor
    PWM_0_load_duty_cycle_ch0(pumpPWM);  
    

	// This is milliseconds managed by the RTC and the scheduler, this return makes the
	//      timer run another time, returning 0 will make it stop
	return MAIN_DATATASK_INTERVAL;
}

// This function is called from receivedFromCloud in the main.c
// This function starts pump process and tells the dispense process what volume to be pumped
void dispense(uint8_t dispenseAmount)
{
    processComplete = false;
    dispenseAmountCmd = dispenseAmount; 
    
    // Set motor off
    PWM_0_load_duty_cycle_ch0(0);
    printf("\r\nDISPENSE: %d ml\r\n", dispenseAmountCmd );
}

// Dispense liquid process
// This function check level sensor. If the amount of liquid reaches desired 
// amount, the pump is stopped. If not set PWM as 85% to pump motor.
void dispenseProcess(void){
    // If command dispense 5 ml
    if(dispenseAmountCmd == 5){
        if (liquidLevel < VOL_5ML){
            pumpPWM = PWM_VAL;          //Start and Continue pumping
            printf(".");
        }
        else{
            pumpPWM = 0;             //Stop pumping
            processComplete = true;
            printf("\r\n*** Pump 5 ml Complete ***\r\n");
        }
    }
    
    // If command dispense 10 ml
    else if(dispenseAmountCmd == 10){
        if (liquidLevel < VOL_10ML){
            printf(".");
            pumpPWM = PWM_VAL;          //Start and Continue pumping
        }
        else{
            pumpPWM = 0;             //Stop pumping
            processComplete = true;
            printf("\r\n*** Pump 10 ml Complete ***\r\n");
        }
    }
    
    // If command dispense 15 ml
    else if(dispenseAmountCmd == 15){
        if (liquidLevel < VOL_15ML){
            printf(".");
            pumpPWM = PWM_VAL;          //Start and Continue pumping
        }
        else{
            pumpPWM = 0;             //Stop pumping
            processComplete = true;
            printf("\r\n*** Pump 15 ml Complete ***\r\n");
        }
    }
    
        // If command dispense 20 ml
    else if(dispenseAmountCmd == 20){
        if (liquidLevel < VOL_20ML){
            printf(".");
            pumpPWM = PWM_VAL;          //Start and Continue pumping
        }
        else{
            pumpPWM = 0;             //Stop pumping
            processComplete = true;
            printf("\r\n*** Pump 20 ml Complete ***\r\n");
        }
    }
    
    // If command dispense 25 ml
    else if(dispenseAmountCmd == 25){
        if (liquidLevel < VOL_25ML){
            printf(".");
            pumpPWM = PWM_VAL;          //Start and Continue pumping
        }
        else{
            pumpPWM = 0;             //Stop pumping
            processComplete = true;
            printf("\r\n*** Pump 25 ml Complete ***\r\n");
        }
    }
    
    // Other 
    else{
        pumpPWM = 0;             //Stop pumping
        processComplete = true;
    }
        
}