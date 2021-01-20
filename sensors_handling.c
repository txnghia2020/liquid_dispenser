/*
    \file   sensors_handling.c

    \brief  Sensors handling handler source file.

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
 * Modified: Nghia Tran 1/3/2020
*/

#include <stdint.h>
#include "sensors_handling.h"
#include "adc_basic.h"
#include "i2c_simple_master.h"

#define MCP9809_ADDR 0x18
#define MCP9808_REG_TA 0x05
#define LIGHT_SENSOR_ADC_CHANNEL 5

#define QT2120_DEVICE_ID    0x3E
#define QT2120_ADDR     0x1C
#define QT2120_SETUPS_BLOCK_ADDR    8
#define QT2120_STATUS_ADDR  2
#define QT2120_STATUS_SIZE 4
#define QT2120_SLIDER_OPT_ADDR  14
#define QT2120_CALIBRATE_ADDR  6
#define QT2120_RESET_ADDR  7

/*============================================================================
Global variable definitions
============================================================================*/

// Setup block structure
SetupBlock setup_block;

// application storage for QT device-status
uint8_t Qt2120Status[QT2120_STATUS_SIZE];


uint16_t SENSORS_getLightValue(void)
{
	return ADC_0_get_conversion(LIGHT_SENSOR_ADC_CHANNEL);
}

int16_t SENSORS_getTempValue(void)
{
	int32_t temperature;

	temperature = I2C_0_read2ByteRegister(MCP9809_ADDR, MCP9808_REG_TA);

	temperature = temperature << 19;
	temperature = temperature >> 19;

	temperature *= 100;
	temperature /= 16;

	return temperature;
}


/*============================================================================
Name    :   ReadSetupBlock
------------------------------------------------------------------------------
Purpose :	Read entire setup block from QT-device
Input   :   ReadLength	:	Number of bytes to read
			ReadPtr		:	Pointer to byte array for read-data
Output  :   none
Return	:	TRUE if read successful, else FALSE
Notes   :
============================================================================*/
uint8_t SENSOR_qtReadSetupBlock(size_t ReadLength, uint8_t *ReadPtr)
{
	// Read setup block
	return (I2C_0_readDataBlock ( QT2120_ADDR, QT2120_SETUPS_BLOCK_ADDR, ReadPtr, ReadLength));
}		

/*============================================================================
Name    :   WriteSetupBlock
------------------------------------------------------------------------------
Purpose :	write entire setup block to QT-device
Input   :   WriteLength	:	Number of bytes to write
			WritePtr	:	Pointer to byte array containing write-data
Output  :   none
Return	:	TRUE if write successful, else FALSE
Notes   :
============================================================================*/
uint8_t SENSOR_qtWriteSetupBlock(size_t WriteLength, uint8_t *WritePtr)
{	
	// write setup block
	return(I2C_0_writeDataBlock(QT2120_ADDR, QT2120_SETUPS_BLOCK_ADDR, WritePtr, WriteLength));
}

/*============================================================================
Name    :   GetCommsReady
------------------------------------------------------------------------------
Purpose :   Check communication is ready and able to read Chip ID
Input   :   none
Output  :   none
Return	:   none
Notes   :
============================================================================*/
void SENSOR_qtGetCommsReady(void)
{
	uint8_t chip_id;	
	/* Establish communication with the QT device
	 * wait for successful transfer at the device's address - Read Chip-ID 
	 */
	while (I2C_0_readDataBlock(QT2120_ADDR, QT_CHIP_ID, &chip_id, 1));	
 	/* Check that the responding device is a intended device! 
	 * If the read chip ID is wrong, the program goes no further.*/
	while (chip_id != QT2120_DEVICE_ID);
    //I2C_0_read1ByteRegister(QT2120_ADDR, QT_CHIP_ID);
}

/*============================================================================
Name    :   Setup for Qtouch sensor
------------------------------------------------------------------------------
Purpose :   Check communication is ready and able to read Chip ID
Input   :   none
Output  :   none
Return	:   none
Notes   :
============================================================================*/
void SENSOR_qtGetSetup(void)
{

        // Read setup block
    if (SENSOR_qtReadSetupBlock(sizeof(setup_block), (uint8_t *)&setup_block) == 0)
    {	    
        /* TO DO : modify setup block parameters here
        * from default valus if required 
        * For example: To set NTHR for Key 0 to 20
        * setup_block.key0_NTHR = 20; 
        */
        //setup_block.slider_wheel_en = 0;
        //setup_block.slider_en = 1;
        if (SENSOR_qtWriteSetupBlock(sizeof(setup_block),(uint8_t *)&setup_block) == 0)
        {};
    }
}

/*============================================================================
Name    :   ReadKeyStatus
------------------------------------------------------------------------------
Purpose :	Read detection status of all keys
Input   :   ReadLength	:	Number of bytes to read
			ReadPtr		:	Pointer to byte array for read-data
Output  :   none
Return	:	TRUE if read successful, else FALSE
Notes   :
============================================================================*/
uint8_t SENSOR_qtReadKeyStatus(uint8_t ReadLength, uint8_t *ReadPtr)
{
	// Read detection status of all keys
	return (I2C_0_readDataBlock ( QT2120_ADDR, QT2120_STATUS_ADDR, ReadPtr, ReadLength));
}

/*============================================================================
Name    :   SENSOR_qtGetSetupSliderEna
------------------------------------------------------------------------------
Purpose :   Enable slider touch 
Input   :   none
Output  :   none
Return	:   none
Notes   :
============================================================================*/
void SENSOR_qtGetSetupSliderEna(void)
{
    I2C_0_write1ByteRegister(QT2120_ADDR, 14, 0x80);
}

/*============================================================================
Name    :   SENSOR_qtReset
------------------------------------------------------------------------------
Purpose :   Reset device QT2120
Input   :   none
Output  :   none
Return	:   none
Notes   :
============================================================================*/
void SENSOR_qtReset(void)
{
    I2C_0_write1ByteRegister(QT2120_ADDR, QT2120_RESET_ADDR, 0x1);
}

/*============================================================================
Name    :   SENSOR_qtClearReset
------------------------------------------------------------------------------
Purpose :   Clear Reset device QT2120
Input   :   none
Output  :   none
Return	:   none
Notes   :
============================================================================*/
void SENSOR_qtClearReset(void)
{
    I2C_0_write1ByteRegister(QT2120_ADDR, QT2120_RESET_ADDR, 0x0);
}


/*============================================================================
Name    :   SENSOR_qtCalibrate
------------------------------------------------------------------------------
Purpose :   Clear Reset device QT2120
Input   :   none
Output  :   none
Return	:   none
Notes   :
============================================================================*/
void SENSOR_qtCalibrate(void)
{
    I2C_0_write1ByteRegister(QT2120_ADDR, QT2120_CALIBRATE_ADDR, 0x1);
}