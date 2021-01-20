/*
    \file   sensors_handling.h

    \brief  Sensors handler header file.

    (c) 2018 Microchip Technology Inc. and its subsidiaries.

    Subject to your compliance with these terms, you may use Microchip software and any
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party
    license terms applicable to your use of third party software (including open source software) that
    may accompany Microchip software.

    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS
    FOR A PARTICULAR PURPOSE.

    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS
    SOFTWARE.
 * 
 *  Modified: Nghia Tran 1/3/2021
*/

#ifndef SENSORS_HANDLING_H
#define SENSORS_HANDLING_H

#include <stdint.h>
/*============================================================================
Enums
============================================================================*/
/* 
 * This address map can be used for read\write particular info from QT device
 * using the interfaces twi_read() or twi_write()
 */

enum { // QT2120 registers
	QT_CHIP_ID = 0,
	QT_FIRMWARE_VERSION,
	QT_DETECTION_STATUS,
	QT_KEY_STATUS,
	QT_SLIDER_POSITION = 5,
	QT_CALIBRATE,
	QT_RESET,
	QT_LP,
	QT_TTD,
	QT_ATD,
	QT_DI,
	QT_TRD,
	QT_DHT,
	QT_SLIDER_OPTION,
	QT_CHARDE_TIME,
	QT_KEY0_DTHR,
	QT_KEY1_DTHR,
	QT_KEY2_DTHR,
	QT_KEY3_DTHR,
	QT_KEY4_DTHR,
	QT_KEY5_DTHR,
	QT_KEY6_DTHR,
	QT_KEY7_DTHR,
	QT_KEY8_DTHR,
	QT_KEY9_DTHR,
	QT_KEY10_DTHR,
	QT_KEY11_DTHR,	
	QT_KEY0_CTRL,
	QT_KEY1_CTRL,
	QT_KEY2_CTRL,
	QT_KEY3_CTRL,
	QT_KEY4_CTRL,
	QT_KEY5_CTRL,
	QT_KEY6_CTRL,
	QT_KEY7_CTRL,
	QT_KEY8_CTRL,
	QT_KEY9_CTRL,
	QT_KEY10_CTRL,
	QT_KEY11_CTRL,	
	QT_KEY0_PULSE_SCALE,
	QT_KEY1_PULSE_SCALE,
	QT_KEY2_PULSE_SCALE,
	QT_KEY3_PULSE_SCALE,
	QT_KEY4_PULSE_SCALE,
	QT_KEY5_PULSE_SCALE,
	QT_KEY6_PULSE_SCALE,
	QT_KEY7_PULSE_SCALE,
	QT_KEY8_PULSE_SCALE,
	QT_KEY9_PULSE_SCALE,
	QT_KEY10_PULSE_SCALE,
	QT_KEY11_PULSE_SCALE,
	QT_KEY0_SIGNAL,
	QT_KEY1_SIGNAL = 54,
	QT_KEY2_SIGNAL = 56,
	QT_KEY3_SIGNAL = 58,
	QT_KEY4_SIGNAL = 60,
	QT_KEY5_SIGNAL = 62,
	QT_KEY6_SIGNAL = 64,
	QT_KEY7_SIGNAL = 66,
	QT_KEY8_SIGNAL = 68,
	QT_KEY9_SIGNAL = 70,
	QT_KEY10_SIGNAL = 72,
	QT_KEY11_SIGNAL = 74,	
	QT_KEY0_REFERENCE = 76,
	QT_KEY1_REFERENCE = 78,
	QT_KEY2_REFERENCE = 80,
	QT_KEY3_REFERENCE = 82,
	QT_KEY4_REFERENCE = 84,
	QT_KEY5_REFERENCE = 86,
	QT_KEY6_REFERENCE = 88,
	QT_KEY7_REFERENCE = 90,
	QT_KEY8_REFERENCE = 92,
	QT_KEY9_REFERENCE = 94,
	QT_KEY10_REFERENCE = 96,
	QT_KEY11_REFERENCE = 98,	
};


/*============================================================================
Type definitions
============================================================================*/

//structure verified - Yes
//tested - Yes (50KHz, 100 KHz & 400 KHz I2C speed)

typedef struct
{
	// 16ms intervals between key measurements	
	uint8_t LP_Mode;
	
	// Towards touch drift	
	uint8_t TTD;
		
	// Away from touch drift
	uint8_t ATD;
	
	// Detection Integrator
	uint8_t DI;
	
	// Touch recal Delay
	uint8_t TRD;
	
	// Drift Hold Time
	uint8_t DHT;
	
	// Slider Options
	uint8_t slider_reserved : 6;
	uint8_t slider_wheel_en : 1;  // Enable wheel
	uint8_t slider_en : 1;  // Enable slider or wheel
	
	// Charge Time
	uint8_t charge_time;
	
	// Detect Threshold	
	uint8_t key0_DTHR;	// Key0 Detect Threshold
	uint8_t key1_DTHR;	// Key1 Detect Threshold
	uint8_t key2_DTHR;	// Key2 Detect Threshold	
	uint8_t key3_DTHR;	// Key3 Detect Threshold	
	uint8_t key4_DTHR;	// Key4 Detect Threshold	
	uint8_t key5_DTHR;	// Key5 Detect Threshold
	uint8_t key6_DTHR;	// Key6 Detect Threshold
	uint8_t key7_DTHR;	// Key7 Detect Threshold
	uint8_t key8_DTHR;	// Key8 Detect Threshold	
	uint8_t key9_DTHR;	// Key9 Detect Threshold	
	uint8_t key10_DTHR;	// Key10 Detect Threshold	
	uint8_t key11_DTHR;	// Key11 Detect Threshold
	
	// Key Control
	
	//Key 0	
	uint8_t key0_GPO_En : 1;	// Enable GPO and disable this key for touch
	uint8_t key0_GPO_level : 1;	// Select GPO level
	uint8_t key0_AKS : 2;		// Enable AKS 
	uint8_t key0_GUARD : 1;		// Select as guard channel
	uint8_t key0_resvd : 3;		// Reserved	
	//Key 1	
	uint8_t key1_GPO_En : 1;	// Enable GPO and disable this key for touch
	uint8_t key1_GPO_level : 1;	// Select GPO level
	uint8_t key1_AKS : 2;		// Enable AKS 
	uint8_t key1_GUARD : 1;		// Select as guard channel
	uint8_t key1_resvd : 3;		// Reserved	
	//Key 2	
	uint8_t key2_GPO_En : 1;	// Enable GPO and disable this key for touch
	uint8_t key2_GPO_level : 1;	// Select GPO level
	uint8_t key2_AKS : 2;		// Enable AKS 
	uint8_t key2_GUARD : 1;		// Select as guard channel
	uint8_t key2_resvd : 3;		// Reserved	
	//Key 3	
	uint8_t key3_GPO_En : 1;	// Enable GPO and disable this key for touch
	uint8_t key3_GPO_level : 1;	// Select GPO level
	uint8_t key3_AKS : 2;		// Enable AKS 
	uint8_t key3_GUARD : 1;		// Select as guard channel
	uint8_t key3_resvd : 3;		// Reserved	
	//Key 4	
	uint8_t key4_GPO_En : 1;	// Enable GPO and disable this key for touch
	uint8_t key4_GPO_level : 1;	// Select GPO level
	uint8_t key4_AKS : 2;		// Enable AKS 
	uint8_t key4_GUARD : 1;		// Select as guard channel
	uint8_t key4_resvd : 3;		// Reserved	
	//Key 5	
	uint8_t key5_GPO_En : 1;	// Enable GPO and disable this key for touch
	uint8_t key5_GPO_level : 1;	// Select GPO level
	uint8_t key5_AKS : 2;		// Enable AKS 
	uint8_t key5_GUARD : 1;		// Select as guard channel
	uint8_t key5_resvd : 3;		// Reserved	
	//Key 6	
	uint8_t key6_GPO_En : 1;	// Enable GPO and disable this key for touch
	uint8_t key6_GPO_level : 1;	// Select GPO level
	uint8_t key6_AKS : 2;		// Enable AKS 
	uint8_t key6_GUARD : 1;		// Select as guard channel
	uint8_t key6_resvd : 3;		// Reserved	
	//Key 7	
	uint8_t key7_GPO_En : 1;	// Enable GPO and disable this key for touch
	uint8_t key7_GPO_level : 1;	// Select GPO level
	uint8_t key7_AKS : 2;		// Enable AKS 
	uint8_t key7_GUARD : 1;		// Select as guard channel
	uint8_t key7_resvd : 3;		// Reserved	
	//Key 8	
	uint8_t key8_GPO_En : 1;	// Enable GPO and disable this key for touch
	uint8_t key8_GPO_level : 1;	// Select GPO level
	uint8_t key8_AKS : 2;		// Enable AKS 
	uint8_t key8_GUARD : 1;		// Select as guard channel
	uint8_t key8_resvd : 3;		// Reserved	
	//Key 9	
	uint8_t key9_GPO_En : 1;	// Enable GPO and disable this key for touch
	uint8_t key9_GPO_level : 1;	// Select GPO level
	uint8_t key9_AKS : 2;		// Enable AKS 
	uint8_t key9_GUARD : 1;		// Select as guard channel
	uint8_t key9_resvd : 3;		// Reserved	
	//Key 10
	uint8_t key10_GPO_En : 1;		// Enable GPO and disable this key for touch
	uint8_t key10_GPO_level : 1;	// Select GPO level
	uint8_t key10_AKS : 2;			// Enable AKS 
	uint8_t key10_GUARD : 1;		// Select as guard channel
	uint8_t key10_resvd : 3;		// Reserved	
	//Key 11	
	uint8_t key11_GPO_En : 1;		// Enable GPO and disable this key for touch
	uint8_t key11_GPO_level : 1;	// Select GPO level
	uint8_t key11_AKS : 2;			// Enable AKS 
	uint8_t key11_GUARD : 1;		// Select as guard channel
	uint8_t key11_resvd : 3;		// Reserved
	
	// Pulse\Scale for keys
	// key 0
	uint8_t key0_scale : 4;	// No of measurements
	uint8_t key0_pulse : 4;	// Averaging factor	
	// key 1
	uint8_t key1_scale : 4;	// No of measurements
	uint8_t key1_pulse : 4;	// Averaging factor	
	// key 2
	uint8_t key2_scale : 4;	// No of measurements
	uint8_t key2_pulse : 4;	// Averaging factor	
	// key 3
	uint8_t key3_scale : 4;	// No of measurements
	uint8_t key3_pulse : 4;	// Averaging factor	
	// key 4
	uint8_t key4_scale : 4;	// No of measurements
	uint8_t key4_pulse : 4;	// Averaging factor	
	// key 5
	uint8_t key5_scale : 4;	// No of measurements
	uint8_t key5_pulse : 4;	// Averaging factor	
	// key 6
	uint8_t key6_scale : 4;	// No of measurements
	uint8_t key6_pulse : 4;	// Averaging factor	
	// key 7
	uint8_t key7_scale : 4;	// No of measurements
	uint8_t key7_pulse : 4;	// Averaging factor	
	// key 8
	uint8_t key8_scale : 4;	// No of measurements
	uint8_t key8_pulse : 4;	// Averaging factor	
	//key 9
	uint8_t key9_scale : 4;	// No of measurements
	uint8_t key9_pulse : 4;	// Averaging factor	
	//key 10
	uint8_t key10_scale : 4; // No of measurements
	uint8_t key10_pulse : 4; // Averaging factor	
	//key 11
	uint8_t key11_scale : 4; // No of measurements
	uint8_t key11_pulse : 4; // Averaging factor	
	
}SetupBlock;

/*============================================================================
External variables
============================================================================*/
extern SetupBlock setup_block;
extern uint8_t Qt2120Status[4];


uint16_t SENSORS_getLightValue(void);
int16_t  SENSORS_getTempValue(void);
//uint8_t SENSOR_qtReadSetupBlock(size_t ReadLength, uint8_t *ReadPtr);
//uint8_t SENSOR_qtWriteSetupBlock(size_t WriteLength, uint8_t *WritePtr);
void SENSOR_qtGetCommsReady(void);
void SENSOR_qtGetSetup(void);
//uint8_t SENSOR_qtReadKeyStatus(size_t ReadLength, uint8_t *ReadPtr);
uint8_t SENSOR_qtReadKeyStatus(uint8_t, uint8_t *);
void SENSOR_qtGetSetupSliderEna(void);
void SENSOR_qtReset(void);
void SENSOR_qtClearReset(void);
void SENSOR_qtCalibrate(void);
void dispense(uint8_t);
#endif /* SENSORS_HANDLING_H*/


