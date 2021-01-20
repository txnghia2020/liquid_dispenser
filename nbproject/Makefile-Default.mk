#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-Default.mk)" "nbproject/Makefile-local-Default.mk"
include nbproject/Makefile-local-Default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=Default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/AVR_IOT_DISPENSER.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/AVR_IOT_DISPENSER.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=cli/cli.c cloud/bsd_adapter/bsdWINC.c cloud/crypto_client/cryptoauthlib_main.c cloud/crypto_client/crypto_client.c cloud/mqtt_packetPopulation/mqtt_packetPopulate.c cloud/cloud_service.c cloud/wifi_service.c credentials_storage/credentials_storage.c cryptoauthlib/lib/atcacert/atcacert_client.c cryptoauthlib/lib/atcacert/atcacert_date.c cryptoauthlib/lib/atcacert/atcacert_def.c cryptoauthlib/lib/atcacert/atcacert_der.c cryptoauthlib/lib/atcacert/atcacert_host_hw.c cryptoauthlib/lib/atcacert/atcacert_host_sw.c cryptoauthlib/lib/basic/atca_basic.c cryptoauthlib/lib/basic/atca_basic_aes.c cryptoauthlib/lib/basic/atca_basic_checkmac.c cryptoauthlib/lib/basic/atca_basic_counter.c cryptoauthlib/lib/basic/atca_basic_derivekey.c cryptoauthlib/lib/basic/atca_basic_ecdh.c cryptoauthlib/lib/basic/atca_basic_gendig.c cryptoauthlib/lib/basic/atca_basic_genkey.c cryptoauthlib/lib/basic/atca_basic_hmac.c cryptoauthlib/lib/basic/atca_basic_info.c cryptoauthlib/lib/basic/atca_basic_kdf.c cryptoauthlib/lib/basic/atca_basic_lock.c cryptoauthlib/lib/basic/atca_basic_mac.c cryptoauthlib/lib/basic/atca_basic_nonce.c cryptoauthlib/lib/basic/atca_basic_privwrite.c cryptoauthlib/lib/basic/atca_basic_random.c cryptoauthlib/lib/basic/atca_basic_read.c cryptoauthlib/lib/basic/atca_basic_secureboot.c cryptoauthlib/lib/basic/atca_basic_selftest.c cryptoauthlib/lib/basic/atca_basic_sha.c cryptoauthlib/lib/basic/atca_basic_sign.c cryptoauthlib/lib/basic/atca_basic_updateextra.c cryptoauthlib/lib/basic/atca_basic_verify.c cryptoauthlib/lib/basic/atca_basic_write.c cryptoauthlib/lib/basic/atca_helpers.c cryptoauthlib/lib/crypto/hashes/sha1_routines.c cryptoauthlib/lib/crypto/hashes/sha2_routines.c cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.c cryptoauthlib/lib/crypto/atca_crypto_sw_rand.c cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.c cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.c cryptoauthlib/lib/hal/atca_hal.c cryptoauthlib/lib/hal/hal_atmega4809_i2c.c cryptoauthlib/lib/hal/hal_atmega4809_timer.c cryptoauthlib/lib/host/atca_host.c cryptoauthlib/lib/jwt/atca_jwt.c cryptoauthlib/lib/tls/atcatls.c cryptoauthlib/lib/tls/atcatls_cfg.c cryptoauthlib/lib/atca_cfgs.c cryptoauthlib/lib/atca_command.c cryptoauthlib/lib/atca_device.c cryptoauthlib/lib/atca_execution.c cryptoauthlib/lib/atca_iface.c examples/src/adc_basic_example.c examples/src/i2c_master_example.c examples/src/pwm_basic_example.c examples/src/spi_basic_example.c examples/src/timeout_example.c examples/src/usart_basic_example.c mqtt/mqtt_comm_bsd/mqtt_comm_layer.c mqtt/mqtt_core/mqtt_core.c mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.c mqtt/mqtt_packetTransfer_interface.c src/driver_init.c src/adc_basic.c src/bod.c src/clkctrl.c src/cpuint.c src/i2c_master.c src/i2c_simple_master.c src/i2c_types.c src/protected_io.S src/pwm_basic.c src/slpctrl.c src/spi_basic.c src/timeout.c src/usart_basic.c winc/bsp/source/nm_bsp_mega.c winc/bus_wrapper/source/nm_bus_wrapper_mega.c winc/common/source/nm_common.c winc/driver/source/m2m_ate_mode.c winc/driver/source/m2m_crypto.c winc/driver/source/m2m_hif.c winc/driver/source/m2m_ota.c winc/driver/source/m2m_periph.c winc/driver/source/m2m_ssl.c winc/driver/source/m2m_wifi.c winc/driver/source/nmasic.c winc/driver/source/nmbus.c winc/driver/source/nmdrv.c winc/driver/source/nmi2c.c winc/driver/source/nmspi.c winc/driver/source/nmuart.c winc/socket/source/socket.c winc/spi_flash/source/spi_flash.c application_manager.c debug_print.c led.c main.c sensors_handling.c driver_isr.c atmel_start.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/cli/cli.o ${OBJECTDIR}/cloud/bsd_adapter/bsdWINC.o ${OBJECTDIR}/cloud/crypto_client/cryptoauthlib_main.o ${OBJECTDIR}/cloud/crypto_client/crypto_client.o ${OBJECTDIR}/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o ${OBJECTDIR}/cloud/cloud_service.o ${OBJECTDIR}/cloud/wifi_service.o ${OBJECTDIR}/credentials_storage/credentials_storage.o ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_client.o ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_date.o ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_def.o ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_der.o ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_host_hw.o ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_host_sw.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_aes.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_checkmac.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_counter.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_derivekey.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_ecdh.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_gendig.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_genkey.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_hmac.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_info.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_kdf.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_lock.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_mac.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_nonce.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_privwrite.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_random.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_read.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_secureboot.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_selftest.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_sha.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_sign.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_updateextra.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_verify.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_write.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_helpers.o ${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes/sha1_routines.o ${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes/sha2_routines.o ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o ${OBJECTDIR}/cryptoauthlib/lib/hal/atca_hal.o ${OBJECTDIR}/cryptoauthlib/lib/hal/hal_atmega4809_i2c.o ${OBJECTDIR}/cryptoauthlib/lib/hal/hal_atmega4809_timer.o ${OBJECTDIR}/cryptoauthlib/lib/host/atca_host.o ${OBJECTDIR}/cryptoauthlib/lib/jwt/atca_jwt.o ${OBJECTDIR}/cryptoauthlib/lib/tls/atcatls.o ${OBJECTDIR}/cryptoauthlib/lib/tls/atcatls_cfg.o ${OBJECTDIR}/cryptoauthlib/lib/atca_cfgs.o ${OBJECTDIR}/cryptoauthlib/lib/atca_command.o ${OBJECTDIR}/cryptoauthlib/lib/atca_device.o ${OBJECTDIR}/cryptoauthlib/lib/atca_execution.o ${OBJECTDIR}/cryptoauthlib/lib/atca_iface.o ${OBJECTDIR}/examples/src/adc_basic_example.o ${OBJECTDIR}/examples/src/i2c_master_example.o ${OBJECTDIR}/examples/src/pwm_basic_example.o ${OBJECTDIR}/examples/src/spi_basic_example.o ${OBJECTDIR}/examples/src/timeout_example.o ${OBJECTDIR}/examples/src/usart_basic_example.o ${OBJECTDIR}/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o ${OBJECTDIR}/mqtt/mqtt_core/mqtt_core.o ${OBJECTDIR}/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o ${OBJECTDIR}/mqtt/mqtt_packetTransfer_interface.o ${OBJECTDIR}/src/driver_init.o ${OBJECTDIR}/src/adc_basic.o ${OBJECTDIR}/src/bod.o ${OBJECTDIR}/src/clkctrl.o ${OBJECTDIR}/src/cpuint.o ${OBJECTDIR}/src/i2c_master.o ${OBJECTDIR}/src/i2c_simple_master.o ${OBJECTDIR}/src/i2c_types.o ${OBJECTDIR}/src/protected_io.o ${OBJECTDIR}/src/pwm_basic.o ${OBJECTDIR}/src/slpctrl.o ${OBJECTDIR}/src/spi_basic.o ${OBJECTDIR}/src/timeout.o ${OBJECTDIR}/src/usart_basic.o ${OBJECTDIR}/winc/bsp/source/nm_bsp_mega.o ${OBJECTDIR}/winc/bus_wrapper/source/nm_bus_wrapper_mega.o ${OBJECTDIR}/winc/common/source/nm_common.o ${OBJECTDIR}/winc/driver/source/m2m_ate_mode.o ${OBJECTDIR}/winc/driver/source/m2m_crypto.o ${OBJECTDIR}/winc/driver/source/m2m_hif.o ${OBJECTDIR}/winc/driver/source/m2m_ota.o ${OBJECTDIR}/winc/driver/source/m2m_periph.o ${OBJECTDIR}/winc/driver/source/m2m_ssl.o ${OBJECTDIR}/winc/driver/source/m2m_wifi.o ${OBJECTDIR}/winc/driver/source/nmasic.o ${OBJECTDIR}/winc/driver/source/nmbus.o ${OBJECTDIR}/winc/driver/source/nmdrv.o ${OBJECTDIR}/winc/driver/source/nmi2c.o ${OBJECTDIR}/winc/driver/source/nmspi.o ${OBJECTDIR}/winc/driver/source/nmuart.o ${OBJECTDIR}/winc/socket/source/socket.o ${OBJECTDIR}/winc/spi_flash/source/spi_flash.o ${OBJECTDIR}/application_manager.o ${OBJECTDIR}/debug_print.o ${OBJECTDIR}/led.o ${OBJECTDIR}/main.o ${OBJECTDIR}/sensors_handling.o ${OBJECTDIR}/driver_isr.o ${OBJECTDIR}/atmel_start.o
POSSIBLE_DEPFILES=${OBJECTDIR}/cli/cli.o.d ${OBJECTDIR}/cloud/bsd_adapter/bsdWINC.o.d ${OBJECTDIR}/cloud/crypto_client/cryptoauthlib_main.o.d ${OBJECTDIR}/cloud/crypto_client/crypto_client.o.d ${OBJECTDIR}/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o.d ${OBJECTDIR}/cloud/cloud_service.o.d ${OBJECTDIR}/cloud/wifi_service.o.d ${OBJECTDIR}/credentials_storage/credentials_storage.o.d ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_client.o.d ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_date.o.d ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_def.o.d ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_der.o.d ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_host_hw.o.d ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_host_sw.o.d ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic.o.d ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_aes.o.d ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_checkmac.o.d ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_counter.o.d ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_derivekey.o.d ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_ecdh.o.d ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_gendig.o.d ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_genkey.o.d ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_hmac.o.d ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_info.o.d ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_kdf.o.d ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_lock.o.d ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_mac.o.d ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_nonce.o.d ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_privwrite.o.d ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_random.o.d ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_read.o.d ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_secureboot.o.d ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_selftest.o.d ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_sha.o.d ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_sign.o.d ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_updateextra.o.d ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_verify.o.d ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_write.o.d ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_helpers.o.d ${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes/sha1_routines.o.d ${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes/sha2_routines.o.d ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o.d ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o.d ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o.d ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o.d ${OBJECTDIR}/cryptoauthlib/lib/hal/atca_hal.o.d ${OBJECTDIR}/cryptoauthlib/lib/hal/hal_atmega4809_i2c.o.d ${OBJECTDIR}/cryptoauthlib/lib/hal/hal_atmega4809_timer.o.d ${OBJECTDIR}/cryptoauthlib/lib/host/atca_host.o.d ${OBJECTDIR}/cryptoauthlib/lib/jwt/atca_jwt.o.d ${OBJECTDIR}/cryptoauthlib/lib/tls/atcatls.o.d ${OBJECTDIR}/cryptoauthlib/lib/tls/atcatls_cfg.o.d ${OBJECTDIR}/cryptoauthlib/lib/atca_cfgs.o.d ${OBJECTDIR}/cryptoauthlib/lib/atca_command.o.d ${OBJECTDIR}/cryptoauthlib/lib/atca_device.o.d ${OBJECTDIR}/cryptoauthlib/lib/atca_execution.o.d ${OBJECTDIR}/cryptoauthlib/lib/atca_iface.o.d ${OBJECTDIR}/examples/src/adc_basic_example.o.d ${OBJECTDIR}/examples/src/i2c_master_example.o.d ${OBJECTDIR}/examples/src/pwm_basic_example.o.d ${OBJECTDIR}/examples/src/spi_basic_example.o.d ${OBJECTDIR}/examples/src/timeout_example.o.d ${OBJECTDIR}/examples/src/usart_basic_example.o.d ${OBJECTDIR}/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o.d ${OBJECTDIR}/mqtt/mqtt_core/mqtt_core.o.d ${OBJECTDIR}/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o.d ${OBJECTDIR}/mqtt/mqtt_packetTransfer_interface.o.d ${OBJECTDIR}/src/driver_init.o.d ${OBJECTDIR}/src/adc_basic.o.d ${OBJECTDIR}/src/bod.o.d ${OBJECTDIR}/src/clkctrl.o.d ${OBJECTDIR}/src/cpuint.o.d ${OBJECTDIR}/src/i2c_master.o.d ${OBJECTDIR}/src/i2c_simple_master.o.d ${OBJECTDIR}/src/i2c_types.o.d ${OBJECTDIR}/src/protected_io.o.d ${OBJECTDIR}/src/pwm_basic.o.d ${OBJECTDIR}/src/slpctrl.o.d ${OBJECTDIR}/src/spi_basic.o.d ${OBJECTDIR}/src/timeout.o.d ${OBJECTDIR}/src/usart_basic.o.d ${OBJECTDIR}/winc/bsp/source/nm_bsp_mega.o.d ${OBJECTDIR}/winc/bus_wrapper/source/nm_bus_wrapper_mega.o.d ${OBJECTDIR}/winc/common/source/nm_common.o.d ${OBJECTDIR}/winc/driver/source/m2m_ate_mode.o.d ${OBJECTDIR}/winc/driver/source/m2m_crypto.o.d ${OBJECTDIR}/winc/driver/source/m2m_hif.o.d ${OBJECTDIR}/winc/driver/source/m2m_ota.o.d ${OBJECTDIR}/winc/driver/source/m2m_periph.o.d ${OBJECTDIR}/winc/driver/source/m2m_ssl.o.d ${OBJECTDIR}/winc/driver/source/m2m_wifi.o.d ${OBJECTDIR}/winc/driver/source/nmasic.o.d ${OBJECTDIR}/winc/driver/source/nmbus.o.d ${OBJECTDIR}/winc/driver/source/nmdrv.o.d ${OBJECTDIR}/winc/driver/source/nmi2c.o.d ${OBJECTDIR}/winc/driver/source/nmspi.o.d ${OBJECTDIR}/winc/driver/source/nmuart.o.d ${OBJECTDIR}/winc/socket/source/socket.o.d ${OBJECTDIR}/winc/spi_flash/source/spi_flash.o.d ${OBJECTDIR}/application_manager.o.d ${OBJECTDIR}/debug_print.o.d ${OBJECTDIR}/led.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/sensors_handling.o.d ${OBJECTDIR}/driver_isr.o.d ${OBJECTDIR}/atmel_start.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/cli/cli.o ${OBJECTDIR}/cloud/bsd_adapter/bsdWINC.o ${OBJECTDIR}/cloud/crypto_client/cryptoauthlib_main.o ${OBJECTDIR}/cloud/crypto_client/crypto_client.o ${OBJECTDIR}/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o ${OBJECTDIR}/cloud/cloud_service.o ${OBJECTDIR}/cloud/wifi_service.o ${OBJECTDIR}/credentials_storage/credentials_storage.o ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_client.o ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_date.o ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_def.o ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_der.o ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_host_hw.o ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_host_sw.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_aes.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_checkmac.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_counter.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_derivekey.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_ecdh.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_gendig.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_genkey.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_hmac.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_info.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_kdf.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_lock.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_mac.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_nonce.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_privwrite.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_random.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_read.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_secureboot.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_selftest.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_sha.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_sign.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_updateextra.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_verify.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_write.o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_helpers.o ${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes/sha1_routines.o ${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes/sha2_routines.o ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o ${OBJECTDIR}/cryptoauthlib/lib/hal/atca_hal.o ${OBJECTDIR}/cryptoauthlib/lib/hal/hal_atmega4809_i2c.o ${OBJECTDIR}/cryptoauthlib/lib/hal/hal_atmega4809_timer.o ${OBJECTDIR}/cryptoauthlib/lib/host/atca_host.o ${OBJECTDIR}/cryptoauthlib/lib/jwt/atca_jwt.o ${OBJECTDIR}/cryptoauthlib/lib/tls/atcatls.o ${OBJECTDIR}/cryptoauthlib/lib/tls/atcatls_cfg.o ${OBJECTDIR}/cryptoauthlib/lib/atca_cfgs.o ${OBJECTDIR}/cryptoauthlib/lib/atca_command.o ${OBJECTDIR}/cryptoauthlib/lib/atca_device.o ${OBJECTDIR}/cryptoauthlib/lib/atca_execution.o ${OBJECTDIR}/cryptoauthlib/lib/atca_iface.o ${OBJECTDIR}/examples/src/adc_basic_example.o ${OBJECTDIR}/examples/src/i2c_master_example.o ${OBJECTDIR}/examples/src/pwm_basic_example.o ${OBJECTDIR}/examples/src/spi_basic_example.o ${OBJECTDIR}/examples/src/timeout_example.o ${OBJECTDIR}/examples/src/usart_basic_example.o ${OBJECTDIR}/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o ${OBJECTDIR}/mqtt/mqtt_core/mqtt_core.o ${OBJECTDIR}/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o ${OBJECTDIR}/mqtt/mqtt_packetTransfer_interface.o ${OBJECTDIR}/src/driver_init.o ${OBJECTDIR}/src/adc_basic.o ${OBJECTDIR}/src/bod.o ${OBJECTDIR}/src/clkctrl.o ${OBJECTDIR}/src/cpuint.o ${OBJECTDIR}/src/i2c_master.o ${OBJECTDIR}/src/i2c_simple_master.o ${OBJECTDIR}/src/i2c_types.o ${OBJECTDIR}/src/protected_io.o ${OBJECTDIR}/src/pwm_basic.o ${OBJECTDIR}/src/slpctrl.o ${OBJECTDIR}/src/spi_basic.o ${OBJECTDIR}/src/timeout.o ${OBJECTDIR}/src/usart_basic.o ${OBJECTDIR}/winc/bsp/source/nm_bsp_mega.o ${OBJECTDIR}/winc/bus_wrapper/source/nm_bus_wrapper_mega.o ${OBJECTDIR}/winc/common/source/nm_common.o ${OBJECTDIR}/winc/driver/source/m2m_ate_mode.o ${OBJECTDIR}/winc/driver/source/m2m_crypto.o ${OBJECTDIR}/winc/driver/source/m2m_hif.o ${OBJECTDIR}/winc/driver/source/m2m_ota.o ${OBJECTDIR}/winc/driver/source/m2m_periph.o ${OBJECTDIR}/winc/driver/source/m2m_ssl.o ${OBJECTDIR}/winc/driver/source/m2m_wifi.o ${OBJECTDIR}/winc/driver/source/nmasic.o ${OBJECTDIR}/winc/driver/source/nmbus.o ${OBJECTDIR}/winc/driver/source/nmdrv.o ${OBJECTDIR}/winc/driver/source/nmi2c.o ${OBJECTDIR}/winc/driver/source/nmspi.o ${OBJECTDIR}/winc/driver/source/nmuart.o ${OBJECTDIR}/winc/socket/source/socket.o ${OBJECTDIR}/winc/spi_flash/source/spi_flash.o ${OBJECTDIR}/application_manager.o ${OBJECTDIR}/debug_print.o ${OBJECTDIR}/led.o ${OBJECTDIR}/main.o ${OBJECTDIR}/sensors_handling.o ${OBJECTDIR}/driver_isr.o ${OBJECTDIR}/atmel_start.o

# Source Files
SOURCEFILES=cli/cli.c cloud/bsd_adapter/bsdWINC.c cloud/crypto_client/cryptoauthlib_main.c cloud/crypto_client/crypto_client.c cloud/mqtt_packetPopulation/mqtt_packetPopulate.c cloud/cloud_service.c cloud/wifi_service.c credentials_storage/credentials_storage.c cryptoauthlib/lib/atcacert/atcacert_client.c cryptoauthlib/lib/atcacert/atcacert_date.c cryptoauthlib/lib/atcacert/atcacert_def.c cryptoauthlib/lib/atcacert/atcacert_der.c cryptoauthlib/lib/atcacert/atcacert_host_hw.c cryptoauthlib/lib/atcacert/atcacert_host_sw.c cryptoauthlib/lib/basic/atca_basic.c cryptoauthlib/lib/basic/atca_basic_aes.c cryptoauthlib/lib/basic/atca_basic_checkmac.c cryptoauthlib/lib/basic/atca_basic_counter.c cryptoauthlib/lib/basic/atca_basic_derivekey.c cryptoauthlib/lib/basic/atca_basic_ecdh.c cryptoauthlib/lib/basic/atca_basic_gendig.c cryptoauthlib/lib/basic/atca_basic_genkey.c cryptoauthlib/lib/basic/atca_basic_hmac.c cryptoauthlib/lib/basic/atca_basic_info.c cryptoauthlib/lib/basic/atca_basic_kdf.c cryptoauthlib/lib/basic/atca_basic_lock.c cryptoauthlib/lib/basic/atca_basic_mac.c cryptoauthlib/lib/basic/atca_basic_nonce.c cryptoauthlib/lib/basic/atca_basic_privwrite.c cryptoauthlib/lib/basic/atca_basic_random.c cryptoauthlib/lib/basic/atca_basic_read.c cryptoauthlib/lib/basic/atca_basic_secureboot.c cryptoauthlib/lib/basic/atca_basic_selftest.c cryptoauthlib/lib/basic/atca_basic_sha.c cryptoauthlib/lib/basic/atca_basic_sign.c cryptoauthlib/lib/basic/atca_basic_updateextra.c cryptoauthlib/lib/basic/atca_basic_verify.c cryptoauthlib/lib/basic/atca_basic_write.c cryptoauthlib/lib/basic/atca_helpers.c cryptoauthlib/lib/crypto/hashes/sha1_routines.c cryptoauthlib/lib/crypto/hashes/sha2_routines.c cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.c cryptoauthlib/lib/crypto/atca_crypto_sw_rand.c cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.c cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.c cryptoauthlib/lib/hal/atca_hal.c cryptoauthlib/lib/hal/hal_atmega4809_i2c.c cryptoauthlib/lib/hal/hal_atmega4809_timer.c cryptoauthlib/lib/host/atca_host.c cryptoauthlib/lib/jwt/atca_jwt.c cryptoauthlib/lib/tls/atcatls.c cryptoauthlib/lib/tls/atcatls_cfg.c cryptoauthlib/lib/atca_cfgs.c cryptoauthlib/lib/atca_command.c cryptoauthlib/lib/atca_device.c cryptoauthlib/lib/atca_execution.c cryptoauthlib/lib/atca_iface.c examples/src/adc_basic_example.c examples/src/i2c_master_example.c examples/src/pwm_basic_example.c examples/src/spi_basic_example.c examples/src/timeout_example.c examples/src/usart_basic_example.c mqtt/mqtt_comm_bsd/mqtt_comm_layer.c mqtt/mqtt_core/mqtt_core.c mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.c mqtt/mqtt_packetTransfer_interface.c src/driver_init.c src/adc_basic.c src/bod.c src/clkctrl.c src/cpuint.c src/i2c_master.c src/i2c_simple_master.c src/i2c_types.c src/protected_io.S src/pwm_basic.c src/slpctrl.c src/spi_basic.c src/timeout.c src/usart_basic.c winc/bsp/source/nm_bsp_mega.c winc/bus_wrapper/source/nm_bus_wrapper_mega.c winc/common/source/nm_common.c winc/driver/source/m2m_ate_mode.c winc/driver/source/m2m_crypto.c winc/driver/source/m2m_hif.c winc/driver/source/m2m_ota.c winc/driver/source/m2m_periph.c winc/driver/source/m2m_ssl.c winc/driver/source/m2m_wifi.c winc/driver/source/nmasic.c winc/driver/source/nmbus.c winc/driver/source/nmdrv.c winc/driver/source/nmi2c.c winc/driver/source/nmspi.c winc/driver/source/nmuart.c winc/socket/source/socket.c winc/spi_flash/source/spi_flash.c application_manager.c debug_print.c led.c main.c sensors_handling.c driver_isr.c atmel_start.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-Default.mk dist/${CND_CONF}/${IMAGE_TYPE}/AVR_IOT_DISPENSER.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATmega4808
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/cli/cli.o: cli/cli.c  .generated_files/700ba32e82c93f557f890e0d84a679be89a0e4a0.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cli" 
	@${RM} ${OBJECTDIR}/cli/cli.o.d 
	@${RM} ${OBJECTDIR}/cli/cli.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cli/cli.o.d" -MT "${OBJECTDIR}/cli/cli.o.d" -MT ${OBJECTDIR}/cli/cli.o -o ${OBJECTDIR}/cli/cli.o cli/cli.c 
	
${OBJECTDIR}/cloud/bsd_adapter/bsdWINC.o: cloud/bsd_adapter/bsdWINC.c  .generated_files/21c4af8c5166ad99f2847d4624953c7c27dfb738.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cloud/bsd_adapter" 
	@${RM} ${OBJECTDIR}/cloud/bsd_adapter/bsdWINC.o.d 
	@${RM} ${OBJECTDIR}/cloud/bsd_adapter/bsdWINC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cloud/bsd_adapter/bsdWINC.o.d" -MT "${OBJECTDIR}/cloud/bsd_adapter/bsdWINC.o.d" -MT ${OBJECTDIR}/cloud/bsd_adapter/bsdWINC.o -o ${OBJECTDIR}/cloud/bsd_adapter/bsdWINC.o cloud/bsd_adapter/bsdWINC.c 
	
${OBJECTDIR}/cloud/crypto_client/cryptoauthlib_main.o: cloud/crypto_client/cryptoauthlib_main.c  .generated_files/ada4cbe84de1099e5b40c0d4a8aeb263e2e638b0.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cloud/crypto_client" 
	@${RM} ${OBJECTDIR}/cloud/crypto_client/cryptoauthlib_main.o.d 
	@${RM} ${OBJECTDIR}/cloud/crypto_client/cryptoauthlib_main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cloud/crypto_client/cryptoauthlib_main.o.d" -MT "${OBJECTDIR}/cloud/crypto_client/cryptoauthlib_main.o.d" -MT ${OBJECTDIR}/cloud/crypto_client/cryptoauthlib_main.o -o ${OBJECTDIR}/cloud/crypto_client/cryptoauthlib_main.o cloud/crypto_client/cryptoauthlib_main.c 
	
${OBJECTDIR}/cloud/crypto_client/crypto_client.o: cloud/crypto_client/crypto_client.c  .generated_files/8dd3478b18613b4d71d05286d44f8619f68f37db.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cloud/crypto_client" 
	@${RM} ${OBJECTDIR}/cloud/crypto_client/crypto_client.o.d 
	@${RM} ${OBJECTDIR}/cloud/crypto_client/crypto_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cloud/crypto_client/crypto_client.o.d" -MT "${OBJECTDIR}/cloud/crypto_client/crypto_client.o.d" -MT ${OBJECTDIR}/cloud/crypto_client/crypto_client.o -o ${OBJECTDIR}/cloud/crypto_client/crypto_client.o cloud/crypto_client/crypto_client.c 
	
${OBJECTDIR}/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o: cloud/mqtt_packetPopulation/mqtt_packetPopulate.c  .generated_files/648d9a181b43e3f2de328fcb2388044cfce0282f.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cloud/mqtt_packetPopulation" 
	@${RM} ${OBJECTDIR}/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o.d 
	@${RM} ${OBJECTDIR}/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o.d" -MT "${OBJECTDIR}/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o.d" -MT ${OBJECTDIR}/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o -o ${OBJECTDIR}/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o cloud/mqtt_packetPopulation/mqtt_packetPopulate.c 
	
${OBJECTDIR}/cloud/cloud_service.o: cloud/cloud_service.c  .generated_files/a11c24792a43f3c29186427799a895b5cead7b0a.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cloud" 
	@${RM} ${OBJECTDIR}/cloud/cloud_service.o.d 
	@${RM} ${OBJECTDIR}/cloud/cloud_service.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cloud/cloud_service.o.d" -MT "${OBJECTDIR}/cloud/cloud_service.o.d" -MT ${OBJECTDIR}/cloud/cloud_service.o -o ${OBJECTDIR}/cloud/cloud_service.o cloud/cloud_service.c 
	
${OBJECTDIR}/cloud/wifi_service.o: cloud/wifi_service.c  .generated_files/eb8bc3624e9e8b968463481402c8a03f57682b88.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cloud" 
	@${RM} ${OBJECTDIR}/cloud/wifi_service.o.d 
	@${RM} ${OBJECTDIR}/cloud/wifi_service.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cloud/wifi_service.o.d" -MT "${OBJECTDIR}/cloud/wifi_service.o.d" -MT ${OBJECTDIR}/cloud/wifi_service.o -o ${OBJECTDIR}/cloud/wifi_service.o cloud/wifi_service.c 
	
${OBJECTDIR}/credentials_storage/credentials_storage.o: credentials_storage/credentials_storage.c  .generated_files/3cfb168c8474a1d512bbaea3935c71f865b89233.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/credentials_storage" 
	@${RM} ${OBJECTDIR}/credentials_storage/credentials_storage.o.d 
	@${RM} ${OBJECTDIR}/credentials_storage/credentials_storage.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/credentials_storage/credentials_storage.o.d" -MT "${OBJECTDIR}/credentials_storage/credentials_storage.o.d" -MT ${OBJECTDIR}/credentials_storage/credentials_storage.o -o ${OBJECTDIR}/credentials_storage/credentials_storage.o credentials_storage/credentials_storage.c 
	
${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_client.o: cryptoauthlib/lib/atcacert/atcacert_client.c  .generated_files/6d1deadc2c621f56188e4ec28c78e3975edfe9a1.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_client.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_client.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_client.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_client.o -o ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_client.o cryptoauthlib/lib/atcacert/atcacert_client.c 
	
${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_date.o: cryptoauthlib/lib/atcacert/atcacert_date.c  .generated_files/1e8393febe2d906bd9bf8f21860717b95e1c9286.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_date.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_date.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_date.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_date.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_date.o -o ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_date.o cryptoauthlib/lib/atcacert/atcacert_date.c 
	
${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_def.o: cryptoauthlib/lib/atcacert/atcacert_def.c  .generated_files/b4e551063290dcabde60569d1c5b632d0f5dbf95.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_def.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_def.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_def.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_def.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_def.o -o ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_def.o cryptoauthlib/lib/atcacert/atcacert_def.c 
	
${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_der.o: cryptoauthlib/lib/atcacert/atcacert_der.c  .generated_files/728a7ec368eafc064f4c8d27967b6c0a8df9a650.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_der.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_der.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_der.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_der.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_der.o -o ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_der.o cryptoauthlib/lib/atcacert/atcacert_der.c 
	
${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_host_hw.o: cryptoauthlib/lib/atcacert/atcacert_host_hw.c  .generated_files/252eb2682f45a7acdf5c6c41a5fab3d0b1542278.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_host_hw.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_host_hw.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_host_hw.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_host_hw.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_host_hw.o -o ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_host_hw.o cryptoauthlib/lib/atcacert/atcacert_host_hw.c 
	
${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_host_sw.o: cryptoauthlib/lib/atcacert/atcacert_host_sw.c  .generated_files/edac3512386616851e136ae4e5d5e8bef167c06b.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_host_sw.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_host_sw.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_host_sw.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_host_sw.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_host_sw.o -o ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_host_sw.o cryptoauthlib/lib/atcacert/atcacert_host_sw.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic.o: cryptoauthlib/lib/basic/atca_basic.c  .generated_files/3139b103ef5298a9d53f1e5cc1744489fd8409f3.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic.o cryptoauthlib/lib/basic/atca_basic.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_aes.o: cryptoauthlib/lib/basic/atca_basic_aes.c  .generated_files/1b04287b71337492ef6bbaf9117c94a58d9bacb5.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_aes.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_aes.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_aes.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_aes.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_aes.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_aes.o cryptoauthlib/lib/basic/atca_basic_aes.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_checkmac.o: cryptoauthlib/lib/basic/atca_basic_checkmac.c  .generated_files/d7e2a537cc1d7a9a9e02ed17ab641d8596084a80.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_checkmac.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_checkmac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_checkmac.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_checkmac.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_checkmac.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_checkmac.o cryptoauthlib/lib/basic/atca_basic_checkmac.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_counter.o: cryptoauthlib/lib/basic/atca_basic_counter.c  .generated_files/9a5b2794b5bf60831fe2da3124902f1083f30d37.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_counter.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_counter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_counter.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_counter.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_counter.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_counter.o cryptoauthlib/lib/basic/atca_basic_counter.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_derivekey.o: cryptoauthlib/lib/basic/atca_basic_derivekey.c  .generated_files/6df9345b7c6467612d2659492d03e7f03bfd891e.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_derivekey.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_derivekey.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_derivekey.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_derivekey.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_derivekey.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_derivekey.o cryptoauthlib/lib/basic/atca_basic_derivekey.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_ecdh.o: cryptoauthlib/lib/basic/atca_basic_ecdh.c  .generated_files/cb786b896dabfca3e858f1a97c7b1e19f6d81c5e.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_ecdh.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_ecdh.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_ecdh.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_ecdh.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_ecdh.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_ecdh.o cryptoauthlib/lib/basic/atca_basic_ecdh.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_gendig.o: cryptoauthlib/lib/basic/atca_basic_gendig.c  .generated_files/86529ff63048459a2a7f56ba92c41ef5473e7330.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_gendig.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_gendig.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_gendig.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_gendig.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_gendig.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_gendig.o cryptoauthlib/lib/basic/atca_basic_gendig.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_genkey.o: cryptoauthlib/lib/basic/atca_basic_genkey.c  .generated_files/29f1d24b460b24fb9d3ef6e868efbe69681e599.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_genkey.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_genkey.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_genkey.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_genkey.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_genkey.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_genkey.o cryptoauthlib/lib/basic/atca_basic_genkey.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_hmac.o: cryptoauthlib/lib/basic/atca_basic_hmac.c  .generated_files/9a173cddf73a161c524e1584b356df58d16f8499.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_hmac.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_hmac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_hmac.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_hmac.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_hmac.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_hmac.o cryptoauthlib/lib/basic/atca_basic_hmac.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_info.o: cryptoauthlib/lib/basic/atca_basic_info.c  .generated_files/f495c8741ae03cd4375dd187ec163ec6f8d44429.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_info.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_info.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_info.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_info.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_info.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_info.o cryptoauthlib/lib/basic/atca_basic_info.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_kdf.o: cryptoauthlib/lib/basic/atca_basic_kdf.c  .generated_files/98e0a70a3dc96540ff60129072e20a4e954d7978.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_kdf.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_kdf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_kdf.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_kdf.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_kdf.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_kdf.o cryptoauthlib/lib/basic/atca_basic_kdf.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_lock.o: cryptoauthlib/lib/basic/atca_basic_lock.c  .generated_files/bde1f1b22a9ca9121bd5a08c4b9aedbe62871b9c.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_lock.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_lock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_lock.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_lock.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_lock.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_lock.o cryptoauthlib/lib/basic/atca_basic_lock.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_mac.o: cryptoauthlib/lib/basic/atca_basic_mac.c  .generated_files/81ba94f4013bd48ff84dc0a1b0b3285ad38711ae.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_mac.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_mac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_mac.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_mac.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_mac.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_mac.o cryptoauthlib/lib/basic/atca_basic_mac.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_nonce.o: cryptoauthlib/lib/basic/atca_basic_nonce.c  .generated_files/240ff9c9baa00e9711fee404d4f65333bdc0c2f6.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_nonce.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_nonce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_nonce.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_nonce.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_nonce.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_nonce.o cryptoauthlib/lib/basic/atca_basic_nonce.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_privwrite.o: cryptoauthlib/lib/basic/atca_basic_privwrite.c  .generated_files/47f5bbf7533872eb33d1513061f684a3ae5c8a1f.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_privwrite.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_privwrite.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_privwrite.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_privwrite.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_privwrite.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_privwrite.o cryptoauthlib/lib/basic/atca_basic_privwrite.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_random.o: cryptoauthlib/lib/basic/atca_basic_random.c  .generated_files/3a08a2e61b2dfc631c89e4a06e1d7468dde3c0f9.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_random.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_random.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_random.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_random.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_random.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_random.o cryptoauthlib/lib/basic/atca_basic_random.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_read.o: cryptoauthlib/lib/basic/atca_basic_read.c  .generated_files/15120f6ae26a8c9f55fd4b1045a86bef57c1b5d6.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_read.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_read.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_read.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_read.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_read.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_read.o cryptoauthlib/lib/basic/atca_basic_read.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_secureboot.o: cryptoauthlib/lib/basic/atca_basic_secureboot.c  .generated_files/b3e1755484534616f31d05eb0159fb56c742264c.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_secureboot.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_secureboot.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_secureboot.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_secureboot.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_secureboot.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_secureboot.o cryptoauthlib/lib/basic/atca_basic_secureboot.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_selftest.o: cryptoauthlib/lib/basic/atca_basic_selftest.c  .generated_files/c8fd1b0f8abd516924b4e17c3b2074ee1d9bd6a2.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_selftest.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_selftest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_selftest.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_selftest.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_selftest.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_selftest.o cryptoauthlib/lib/basic/atca_basic_selftest.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_sha.o: cryptoauthlib/lib/basic/atca_basic_sha.c  .generated_files/c3b0bb34eb8b90bd298f7d4e48569b6a09bbacad.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_sha.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_sha.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_sha.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_sha.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_sha.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_sha.o cryptoauthlib/lib/basic/atca_basic_sha.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_sign.o: cryptoauthlib/lib/basic/atca_basic_sign.c  .generated_files/8eeafb4777b24b66f5a351567d9eb11f13493dbd.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_sign.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_sign.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_sign.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_sign.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_sign.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_sign.o cryptoauthlib/lib/basic/atca_basic_sign.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_updateextra.o: cryptoauthlib/lib/basic/atca_basic_updateextra.c  .generated_files/153ac6b5173affd9b39b6872b1d453fa7c49d3e7.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_updateextra.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_updateextra.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_updateextra.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_updateextra.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_updateextra.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_updateextra.o cryptoauthlib/lib/basic/atca_basic_updateextra.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_verify.o: cryptoauthlib/lib/basic/atca_basic_verify.c  .generated_files/eea1c0177f6d895144fbf7afe3e1d722bb530e1a.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_verify.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_verify.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_verify.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_verify.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_verify.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_verify.o cryptoauthlib/lib/basic/atca_basic_verify.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_write.o: cryptoauthlib/lib/basic/atca_basic_write.c  .generated_files/450fb0361bf608f6d8765d65d50adf45aafd1aec.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_write.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_write.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_write.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_write.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_write.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_write.o cryptoauthlib/lib/basic/atca_basic_write.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_helpers.o: cryptoauthlib/lib/basic/atca_helpers.c  .generated_files/5844aa82277b8ee39ab42b694b50538f417e6aa3.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_helpers.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_helpers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_helpers.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_helpers.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_helpers.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_helpers.o cryptoauthlib/lib/basic/atca_helpers.c 
	
${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes/sha1_routines.o: cryptoauthlib/lib/crypto/hashes/sha1_routines.c  .generated_files/d1b7b3be6201a4bb93f8cbbac7ee1fe743b35355.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes/sha1_routines.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes/sha1_routines.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes/sha1_routines.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes/sha1_routines.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes/sha1_routines.o -o ${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes/sha1_routines.o cryptoauthlib/lib/crypto/hashes/sha1_routines.c 
	
${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes/sha2_routines.o: cryptoauthlib/lib/crypto/hashes/sha2_routines.c  .generated_files/1e2d792e2f35f11e89d16b5ed0122c27a37a4dab.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes/sha2_routines.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes/sha2_routines.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes/sha2_routines.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes/sha2_routines.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes/sha2_routines.o -o ${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes/sha2_routines.o cryptoauthlib/lib/crypto/hashes/sha2_routines.c 
	
${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o: cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.c  .generated_files/b38a863f6b9517297399b2ce5fdf7ca2920ebc3d.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/crypto" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o -o ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.c 
	
${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o: cryptoauthlib/lib/crypto/atca_crypto_sw_rand.c  .generated_files/414a0786b8571507313c0abec851fa3a456eef5e.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/crypto" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o -o ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o cryptoauthlib/lib/crypto/atca_crypto_sw_rand.c 
	
${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o: cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.c  .generated_files/ca87b4d36e1f080c38967893a784168384fa8144.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/crypto" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o -o ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.c 
	
${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o: cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.c  .generated_files/a2af4a077af7b76f4c39ffb02c382b3f8fc453ee.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/crypto" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o -o ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.c 
	
${OBJECTDIR}/cryptoauthlib/lib/hal/atca_hal.o: cryptoauthlib/lib/hal/atca_hal.c  .generated_files/70885ff5b0d2923bb13f73bdfcc75a77df03492.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/hal" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/hal/atca_hal.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/hal/atca_hal.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/hal/atca_hal.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/hal/atca_hal.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/hal/atca_hal.o -o ${OBJECTDIR}/cryptoauthlib/lib/hal/atca_hal.o cryptoauthlib/lib/hal/atca_hal.c 
	
${OBJECTDIR}/cryptoauthlib/lib/hal/hal_atmega4809_i2c.o: cryptoauthlib/lib/hal/hal_atmega4809_i2c.c  .generated_files/84504054a5d7d2b4798ad7f9d119198185d39602.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/hal" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/hal/hal_atmega4809_i2c.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/hal/hal_atmega4809_i2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/hal/hal_atmega4809_i2c.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/hal/hal_atmega4809_i2c.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/hal/hal_atmega4809_i2c.o -o ${OBJECTDIR}/cryptoauthlib/lib/hal/hal_atmega4809_i2c.o cryptoauthlib/lib/hal/hal_atmega4809_i2c.c 
	
${OBJECTDIR}/cryptoauthlib/lib/hal/hal_atmega4809_timer.o: cryptoauthlib/lib/hal/hal_atmega4809_timer.c  .generated_files/f46b80ff4672c9c94f4eff367ae5a42a09e5ed4f.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/hal" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/hal/hal_atmega4809_timer.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/hal/hal_atmega4809_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/hal/hal_atmega4809_timer.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/hal/hal_atmega4809_timer.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/hal/hal_atmega4809_timer.o -o ${OBJECTDIR}/cryptoauthlib/lib/hal/hal_atmega4809_timer.o cryptoauthlib/lib/hal/hal_atmega4809_timer.c 
	
${OBJECTDIR}/cryptoauthlib/lib/host/atca_host.o: cryptoauthlib/lib/host/atca_host.c  .generated_files/df4425f5f9a16d210d1ae9a2610a04d751235317.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/host" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/host/atca_host.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/host/atca_host.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/host/atca_host.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/host/atca_host.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/host/atca_host.o -o ${OBJECTDIR}/cryptoauthlib/lib/host/atca_host.o cryptoauthlib/lib/host/atca_host.c 
	
${OBJECTDIR}/cryptoauthlib/lib/jwt/atca_jwt.o: cryptoauthlib/lib/jwt/atca_jwt.c  .generated_files/90b3b4695c2e803de03da2f2e3aada8b702665a8.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/jwt" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/jwt/atca_jwt.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/jwt/atca_jwt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/jwt/atca_jwt.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/jwt/atca_jwt.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/jwt/atca_jwt.o -o ${OBJECTDIR}/cryptoauthlib/lib/jwt/atca_jwt.o cryptoauthlib/lib/jwt/atca_jwt.c 
	
${OBJECTDIR}/cryptoauthlib/lib/tls/atcatls.o: cryptoauthlib/lib/tls/atcatls.c  .generated_files/a14286eef27546e7a86f87989ba098ea5193f66e.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/tls" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/tls/atcatls.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/tls/atcatls.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/tls/atcatls.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/tls/atcatls.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/tls/atcatls.o -o ${OBJECTDIR}/cryptoauthlib/lib/tls/atcatls.o cryptoauthlib/lib/tls/atcatls.c 
	
${OBJECTDIR}/cryptoauthlib/lib/tls/atcatls_cfg.o: cryptoauthlib/lib/tls/atcatls_cfg.c  .generated_files/af846cade1f9ca5cbf049e73aa71b4d62ae5a86b.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/tls" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/tls/atcatls_cfg.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/tls/atcatls_cfg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/tls/atcatls_cfg.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/tls/atcatls_cfg.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/tls/atcatls_cfg.o -o ${OBJECTDIR}/cryptoauthlib/lib/tls/atcatls_cfg.o cryptoauthlib/lib/tls/atcatls_cfg.c 
	
${OBJECTDIR}/cryptoauthlib/lib/atca_cfgs.o: cryptoauthlib/lib/atca_cfgs.c  .generated_files/760a21bf08a01303a2a8277aa1f2026391be8f07.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atca_cfgs.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atca_cfgs.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/atca_cfgs.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/atca_cfgs.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/atca_cfgs.o -o ${OBJECTDIR}/cryptoauthlib/lib/atca_cfgs.o cryptoauthlib/lib/atca_cfgs.c 
	
${OBJECTDIR}/cryptoauthlib/lib/atca_command.o: cryptoauthlib/lib/atca_command.c  .generated_files/c944325a9824843b843cc1b8b2d58a424f1c9da5.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atca_command.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atca_command.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/atca_command.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/atca_command.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/atca_command.o -o ${OBJECTDIR}/cryptoauthlib/lib/atca_command.o cryptoauthlib/lib/atca_command.c 
	
${OBJECTDIR}/cryptoauthlib/lib/atca_device.o: cryptoauthlib/lib/atca_device.c  .generated_files/473a9e5aa23bca39e98fddfff1d8b0d22b48a428.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atca_device.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atca_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/atca_device.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/atca_device.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/atca_device.o -o ${OBJECTDIR}/cryptoauthlib/lib/atca_device.o cryptoauthlib/lib/atca_device.c 
	
${OBJECTDIR}/cryptoauthlib/lib/atca_execution.o: cryptoauthlib/lib/atca_execution.c  .generated_files/87f9e7fb28ed52d215d0a5976499db425212da42.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atca_execution.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atca_execution.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/atca_execution.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/atca_execution.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/atca_execution.o -o ${OBJECTDIR}/cryptoauthlib/lib/atca_execution.o cryptoauthlib/lib/atca_execution.c 
	
${OBJECTDIR}/cryptoauthlib/lib/atca_iface.o: cryptoauthlib/lib/atca_iface.c  .generated_files/d78129954a75fcd21e46af6c0333ac3b03e8e0b9.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atca_iface.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atca_iface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/atca_iface.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/atca_iface.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/atca_iface.o -o ${OBJECTDIR}/cryptoauthlib/lib/atca_iface.o cryptoauthlib/lib/atca_iface.c 
	
${OBJECTDIR}/examples/src/adc_basic_example.o: examples/src/adc_basic_example.c  .generated_files/ce2e82338aac2d038cc734389f83f6bb86fa93f8.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/examples/src" 
	@${RM} ${OBJECTDIR}/examples/src/adc_basic_example.o.d 
	@${RM} ${OBJECTDIR}/examples/src/adc_basic_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/examples/src/adc_basic_example.o.d" -MT "${OBJECTDIR}/examples/src/adc_basic_example.o.d" -MT ${OBJECTDIR}/examples/src/adc_basic_example.o -o ${OBJECTDIR}/examples/src/adc_basic_example.o examples/src/adc_basic_example.c 
	
${OBJECTDIR}/examples/src/i2c_master_example.o: examples/src/i2c_master_example.c  .generated_files/4b35acd95be90bdf9f286e36c4666f5f73823405.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/examples/src" 
	@${RM} ${OBJECTDIR}/examples/src/i2c_master_example.o.d 
	@${RM} ${OBJECTDIR}/examples/src/i2c_master_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/examples/src/i2c_master_example.o.d" -MT "${OBJECTDIR}/examples/src/i2c_master_example.o.d" -MT ${OBJECTDIR}/examples/src/i2c_master_example.o -o ${OBJECTDIR}/examples/src/i2c_master_example.o examples/src/i2c_master_example.c 
	
${OBJECTDIR}/examples/src/pwm_basic_example.o: examples/src/pwm_basic_example.c  .generated_files/4a094868720b4a68c20f699202ba019f80084762.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/examples/src" 
	@${RM} ${OBJECTDIR}/examples/src/pwm_basic_example.o.d 
	@${RM} ${OBJECTDIR}/examples/src/pwm_basic_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/examples/src/pwm_basic_example.o.d" -MT "${OBJECTDIR}/examples/src/pwm_basic_example.o.d" -MT ${OBJECTDIR}/examples/src/pwm_basic_example.o -o ${OBJECTDIR}/examples/src/pwm_basic_example.o examples/src/pwm_basic_example.c 
	
${OBJECTDIR}/examples/src/spi_basic_example.o: examples/src/spi_basic_example.c  .generated_files/371075b5efe8e917f4d9f9b899ec6e4b9d8e1cad.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/examples/src" 
	@${RM} ${OBJECTDIR}/examples/src/spi_basic_example.o.d 
	@${RM} ${OBJECTDIR}/examples/src/spi_basic_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/examples/src/spi_basic_example.o.d" -MT "${OBJECTDIR}/examples/src/spi_basic_example.o.d" -MT ${OBJECTDIR}/examples/src/spi_basic_example.o -o ${OBJECTDIR}/examples/src/spi_basic_example.o examples/src/spi_basic_example.c 
	
${OBJECTDIR}/examples/src/timeout_example.o: examples/src/timeout_example.c  .generated_files/89e625c1be62a08cb829ad2bc504750ff50e8038.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/examples/src" 
	@${RM} ${OBJECTDIR}/examples/src/timeout_example.o.d 
	@${RM} ${OBJECTDIR}/examples/src/timeout_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/examples/src/timeout_example.o.d" -MT "${OBJECTDIR}/examples/src/timeout_example.o.d" -MT ${OBJECTDIR}/examples/src/timeout_example.o -o ${OBJECTDIR}/examples/src/timeout_example.o examples/src/timeout_example.c 
	
${OBJECTDIR}/examples/src/usart_basic_example.o: examples/src/usart_basic_example.c  .generated_files/922eea27850d4e0136cd013aaa4d5b7abe0f8f21.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/examples/src" 
	@${RM} ${OBJECTDIR}/examples/src/usart_basic_example.o.d 
	@${RM} ${OBJECTDIR}/examples/src/usart_basic_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/examples/src/usart_basic_example.o.d" -MT "${OBJECTDIR}/examples/src/usart_basic_example.o.d" -MT ${OBJECTDIR}/examples/src/usart_basic_example.o -o ${OBJECTDIR}/examples/src/usart_basic_example.o examples/src/usart_basic_example.c 
	
${OBJECTDIR}/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o: mqtt/mqtt_comm_bsd/mqtt_comm_layer.c  .generated_files/c53dba5b8ffeeb1eae8e8a22b972b4ebb172aaef.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/mqtt/mqtt_comm_bsd" 
	@${RM} ${OBJECTDIR}/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o.d 
	@${RM} ${OBJECTDIR}/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o.d" -MT "${OBJECTDIR}/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o.d" -MT ${OBJECTDIR}/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o -o ${OBJECTDIR}/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o mqtt/mqtt_comm_bsd/mqtt_comm_layer.c 
	
${OBJECTDIR}/mqtt/mqtt_core/mqtt_core.o: mqtt/mqtt_core/mqtt_core.c  .generated_files/dc13954a121cec8cba37f518c55d62ce7d2f0c6a.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/mqtt/mqtt_core" 
	@${RM} ${OBJECTDIR}/mqtt/mqtt_core/mqtt_core.o.d 
	@${RM} ${OBJECTDIR}/mqtt/mqtt_core/mqtt_core.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/mqtt/mqtt_core/mqtt_core.o.d" -MT "${OBJECTDIR}/mqtt/mqtt_core/mqtt_core.o.d" -MT ${OBJECTDIR}/mqtt/mqtt_core/mqtt_core.o -o ${OBJECTDIR}/mqtt/mqtt_core/mqtt_core.o mqtt/mqtt_core/mqtt_core.c 
	
${OBJECTDIR}/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o: mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.c  .generated_files/23cc33cf9c2e18700824433b3be01191733a0e65.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/mqtt/mqtt_exchange_buffer" 
	@${RM} ${OBJECTDIR}/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o.d 
	@${RM} ${OBJECTDIR}/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o.d" -MT "${OBJECTDIR}/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o.d" -MT ${OBJECTDIR}/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o -o ${OBJECTDIR}/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.c 
	
${OBJECTDIR}/mqtt/mqtt_packetTransfer_interface.o: mqtt/mqtt_packetTransfer_interface.c  .generated_files/d5b8f5f6be9cacf510b03ec7eb690f5c5f251e56.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/mqtt" 
	@${RM} ${OBJECTDIR}/mqtt/mqtt_packetTransfer_interface.o.d 
	@${RM} ${OBJECTDIR}/mqtt/mqtt_packetTransfer_interface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/mqtt/mqtt_packetTransfer_interface.o.d" -MT "${OBJECTDIR}/mqtt/mqtt_packetTransfer_interface.o.d" -MT ${OBJECTDIR}/mqtt/mqtt_packetTransfer_interface.o -o ${OBJECTDIR}/mqtt/mqtt_packetTransfer_interface.o mqtt/mqtt_packetTransfer_interface.c 
	
${OBJECTDIR}/src/driver_init.o: src/driver_init.c  .generated_files/dc86b9d73dbc92d458948b2c3ef3d7eb4d96f458.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/driver_init.o.d 
	@${RM} ${OBJECTDIR}/src/driver_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/src/driver_init.o.d" -MT "${OBJECTDIR}/src/driver_init.o.d" -MT ${OBJECTDIR}/src/driver_init.o -o ${OBJECTDIR}/src/driver_init.o src/driver_init.c 
	
${OBJECTDIR}/src/adc_basic.o: src/adc_basic.c  .generated_files/c71dd5ed81e31809d8880d1f1480238cf84f4e5c.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/adc_basic.o.d 
	@${RM} ${OBJECTDIR}/src/adc_basic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/src/adc_basic.o.d" -MT "${OBJECTDIR}/src/adc_basic.o.d" -MT ${OBJECTDIR}/src/adc_basic.o -o ${OBJECTDIR}/src/adc_basic.o src/adc_basic.c 
	
${OBJECTDIR}/src/bod.o: src/bod.c  .generated_files/39b56cfe6dfb4eb03f4e62c891279bab56fe3e60.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/bod.o.d 
	@${RM} ${OBJECTDIR}/src/bod.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/src/bod.o.d" -MT "${OBJECTDIR}/src/bod.o.d" -MT ${OBJECTDIR}/src/bod.o -o ${OBJECTDIR}/src/bod.o src/bod.c 
	
${OBJECTDIR}/src/clkctrl.o: src/clkctrl.c  .generated_files/994340c18919f2c99b2637ed004fa27ad89c75f0.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/clkctrl.o.d 
	@${RM} ${OBJECTDIR}/src/clkctrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/src/clkctrl.o.d" -MT "${OBJECTDIR}/src/clkctrl.o.d" -MT ${OBJECTDIR}/src/clkctrl.o -o ${OBJECTDIR}/src/clkctrl.o src/clkctrl.c 
	
${OBJECTDIR}/src/cpuint.o: src/cpuint.c  .generated_files/23b0053d8366650fc34520218fe10178a1f07d1d.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/cpuint.o.d 
	@${RM} ${OBJECTDIR}/src/cpuint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/src/cpuint.o.d" -MT "${OBJECTDIR}/src/cpuint.o.d" -MT ${OBJECTDIR}/src/cpuint.o -o ${OBJECTDIR}/src/cpuint.o src/cpuint.c 
	
${OBJECTDIR}/src/i2c_master.o: src/i2c_master.c  .generated_files/55dd01575890a41087ddd6d8f77dfe5bbbd3463c.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/i2c_master.o.d 
	@${RM} ${OBJECTDIR}/src/i2c_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/src/i2c_master.o.d" -MT "${OBJECTDIR}/src/i2c_master.o.d" -MT ${OBJECTDIR}/src/i2c_master.o -o ${OBJECTDIR}/src/i2c_master.o src/i2c_master.c 
	
${OBJECTDIR}/src/i2c_simple_master.o: src/i2c_simple_master.c  .generated_files/db0c00afc2eb7af0e5444440da159154a5dfddf7.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/i2c_simple_master.o.d 
	@${RM} ${OBJECTDIR}/src/i2c_simple_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/src/i2c_simple_master.o.d" -MT "${OBJECTDIR}/src/i2c_simple_master.o.d" -MT ${OBJECTDIR}/src/i2c_simple_master.o -o ${OBJECTDIR}/src/i2c_simple_master.o src/i2c_simple_master.c 
	
${OBJECTDIR}/src/i2c_types.o: src/i2c_types.c  .generated_files/e47536623e133692412c529eef4019abb9cef4b7.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/i2c_types.o.d 
	@${RM} ${OBJECTDIR}/src/i2c_types.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/src/i2c_types.o.d" -MT "${OBJECTDIR}/src/i2c_types.o.d" -MT ${OBJECTDIR}/src/i2c_types.o -o ${OBJECTDIR}/src/i2c_types.o src/i2c_types.c 
	
${OBJECTDIR}/src/pwm_basic.o: src/pwm_basic.c  .generated_files/8e49b194578b5e29ed9fa8c832ebaacaa415beb7.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/pwm_basic.o.d 
	@${RM} ${OBJECTDIR}/src/pwm_basic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/src/pwm_basic.o.d" -MT "${OBJECTDIR}/src/pwm_basic.o.d" -MT ${OBJECTDIR}/src/pwm_basic.o -o ${OBJECTDIR}/src/pwm_basic.o src/pwm_basic.c 
	
${OBJECTDIR}/src/slpctrl.o: src/slpctrl.c  .generated_files/b4e376b6927d3e97c5aa067ec48c4b066d335437.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/slpctrl.o.d 
	@${RM} ${OBJECTDIR}/src/slpctrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/src/slpctrl.o.d" -MT "${OBJECTDIR}/src/slpctrl.o.d" -MT ${OBJECTDIR}/src/slpctrl.o -o ${OBJECTDIR}/src/slpctrl.o src/slpctrl.c 
	
${OBJECTDIR}/src/spi_basic.o: src/spi_basic.c  .generated_files/921e0f484f5d353d7f591feff194ce870afabe24.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/spi_basic.o.d 
	@${RM} ${OBJECTDIR}/src/spi_basic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/src/spi_basic.o.d" -MT "${OBJECTDIR}/src/spi_basic.o.d" -MT ${OBJECTDIR}/src/spi_basic.o -o ${OBJECTDIR}/src/spi_basic.o src/spi_basic.c 
	
${OBJECTDIR}/src/timeout.o: src/timeout.c  .generated_files/32177943c31edf2cae55d8073916128274c41297.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/timeout.o.d 
	@${RM} ${OBJECTDIR}/src/timeout.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/src/timeout.o.d" -MT "${OBJECTDIR}/src/timeout.o.d" -MT ${OBJECTDIR}/src/timeout.o -o ${OBJECTDIR}/src/timeout.o src/timeout.c 
	
${OBJECTDIR}/src/usart_basic.o: src/usart_basic.c  .generated_files/1ce9bb844a0489aa1f7bc71aeaa9459ccff3adcc.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/usart_basic.o.d 
	@${RM} ${OBJECTDIR}/src/usart_basic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/src/usart_basic.o.d" -MT "${OBJECTDIR}/src/usart_basic.o.d" -MT ${OBJECTDIR}/src/usart_basic.o -o ${OBJECTDIR}/src/usart_basic.o src/usart_basic.c 
	
${OBJECTDIR}/winc/bsp/source/nm_bsp_mega.o: winc/bsp/source/nm_bsp_mega.c  .generated_files/4862539b6df86a64b2a64ba9be23307edca0025d.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/winc/bsp/source" 
	@${RM} ${OBJECTDIR}/winc/bsp/source/nm_bsp_mega.o.d 
	@${RM} ${OBJECTDIR}/winc/bsp/source/nm_bsp_mega.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/winc/bsp/source/nm_bsp_mega.o.d" -MT "${OBJECTDIR}/winc/bsp/source/nm_bsp_mega.o.d" -MT ${OBJECTDIR}/winc/bsp/source/nm_bsp_mega.o -o ${OBJECTDIR}/winc/bsp/source/nm_bsp_mega.o winc/bsp/source/nm_bsp_mega.c 
	
${OBJECTDIR}/winc/bus_wrapper/source/nm_bus_wrapper_mega.o: winc/bus_wrapper/source/nm_bus_wrapper_mega.c  .generated_files/e27fb592b97661327c9f9579fe37b6121dd78c66.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/winc/bus_wrapper/source" 
	@${RM} ${OBJECTDIR}/winc/bus_wrapper/source/nm_bus_wrapper_mega.o.d 
	@${RM} ${OBJECTDIR}/winc/bus_wrapper/source/nm_bus_wrapper_mega.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/winc/bus_wrapper/source/nm_bus_wrapper_mega.o.d" -MT "${OBJECTDIR}/winc/bus_wrapper/source/nm_bus_wrapper_mega.o.d" -MT ${OBJECTDIR}/winc/bus_wrapper/source/nm_bus_wrapper_mega.o -o ${OBJECTDIR}/winc/bus_wrapper/source/nm_bus_wrapper_mega.o winc/bus_wrapper/source/nm_bus_wrapper_mega.c 
	
${OBJECTDIR}/winc/common/source/nm_common.o: winc/common/source/nm_common.c  .generated_files/94badab4062767562296de88c5621e24d4294e27.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/winc/common/source" 
	@${RM} ${OBJECTDIR}/winc/common/source/nm_common.o.d 
	@${RM} ${OBJECTDIR}/winc/common/source/nm_common.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/winc/common/source/nm_common.o.d" -MT "${OBJECTDIR}/winc/common/source/nm_common.o.d" -MT ${OBJECTDIR}/winc/common/source/nm_common.o -o ${OBJECTDIR}/winc/common/source/nm_common.o winc/common/source/nm_common.c 
	
${OBJECTDIR}/winc/driver/source/m2m_ate_mode.o: winc/driver/source/m2m_ate_mode.c  .generated_files/eebcbb6f91e2de5b1657de13384ee2e38f3bbeae.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/winc/driver/source" 
	@${RM} ${OBJECTDIR}/winc/driver/source/m2m_ate_mode.o.d 
	@${RM} ${OBJECTDIR}/winc/driver/source/m2m_ate_mode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/winc/driver/source/m2m_ate_mode.o.d" -MT "${OBJECTDIR}/winc/driver/source/m2m_ate_mode.o.d" -MT ${OBJECTDIR}/winc/driver/source/m2m_ate_mode.o -o ${OBJECTDIR}/winc/driver/source/m2m_ate_mode.o winc/driver/source/m2m_ate_mode.c 
	
${OBJECTDIR}/winc/driver/source/m2m_crypto.o: winc/driver/source/m2m_crypto.c  .generated_files/59de03de3204d1cbf584353dddea71094cc026cd.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/winc/driver/source" 
	@${RM} ${OBJECTDIR}/winc/driver/source/m2m_crypto.o.d 
	@${RM} ${OBJECTDIR}/winc/driver/source/m2m_crypto.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/winc/driver/source/m2m_crypto.o.d" -MT "${OBJECTDIR}/winc/driver/source/m2m_crypto.o.d" -MT ${OBJECTDIR}/winc/driver/source/m2m_crypto.o -o ${OBJECTDIR}/winc/driver/source/m2m_crypto.o winc/driver/source/m2m_crypto.c 
	
${OBJECTDIR}/winc/driver/source/m2m_hif.o: winc/driver/source/m2m_hif.c  .generated_files/e257b0aef7b285464e852811b3def99ef0dd6677.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/winc/driver/source" 
	@${RM} ${OBJECTDIR}/winc/driver/source/m2m_hif.o.d 
	@${RM} ${OBJECTDIR}/winc/driver/source/m2m_hif.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/winc/driver/source/m2m_hif.o.d" -MT "${OBJECTDIR}/winc/driver/source/m2m_hif.o.d" -MT ${OBJECTDIR}/winc/driver/source/m2m_hif.o -o ${OBJECTDIR}/winc/driver/source/m2m_hif.o winc/driver/source/m2m_hif.c 
	
${OBJECTDIR}/winc/driver/source/m2m_ota.o: winc/driver/source/m2m_ota.c  .generated_files/ae476032e998a193557095b115632d98546dd17c.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/winc/driver/source" 
	@${RM} ${OBJECTDIR}/winc/driver/source/m2m_ota.o.d 
	@${RM} ${OBJECTDIR}/winc/driver/source/m2m_ota.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/winc/driver/source/m2m_ota.o.d" -MT "${OBJECTDIR}/winc/driver/source/m2m_ota.o.d" -MT ${OBJECTDIR}/winc/driver/source/m2m_ota.o -o ${OBJECTDIR}/winc/driver/source/m2m_ota.o winc/driver/source/m2m_ota.c 
	
${OBJECTDIR}/winc/driver/source/m2m_periph.o: winc/driver/source/m2m_periph.c  .generated_files/317fbcbb32d1274c680b556440be8a4caa3ee414.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/winc/driver/source" 
	@${RM} ${OBJECTDIR}/winc/driver/source/m2m_periph.o.d 
	@${RM} ${OBJECTDIR}/winc/driver/source/m2m_periph.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/winc/driver/source/m2m_periph.o.d" -MT "${OBJECTDIR}/winc/driver/source/m2m_periph.o.d" -MT ${OBJECTDIR}/winc/driver/source/m2m_periph.o -o ${OBJECTDIR}/winc/driver/source/m2m_periph.o winc/driver/source/m2m_periph.c 
	
${OBJECTDIR}/winc/driver/source/m2m_ssl.o: winc/driver/source/m2m_ssl.c  .generated_files/e899352fba255900625b277426a55f165129f677.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/winc/driver/source" 
	@${RM} ${OBJECTDIR}/winc/driver/source/m2m_ssl.o.d 
	@${RM} ${OBJECTDIR}/winc/driver/source/m2m_ssl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/winc/driver/source/m2m_ssl.o.d" -MT "${OBJECTDIR}/winc/driver/source/m2m_ssl.o.d" -MT ${OBJECTDIR}/winc/driver/source/m2m_ssl.o -o ${OBJECTDIR}/winc/driver/source/m2m_ssl.o winc/driver/source/m2m_ssl.c 
	
${OBJECTDIR}/winc/driver/source/m2m_wifi.o: winc/driver/source/m2m_wifi.c  .generated_files/e7f6fc8b33a30c1e8c92f2b1acd859e93de5b126.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/winc/driver/source" 
	@${RM} ${OBJECTDIR}/winc/driver/source/m2m_wifi.o.d 
	@${RM} ${OBJECTDIR}/winc/driver/source/m2m_wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/winc/driver/source/m2m_wifi.o.d" -MT "${OBJECTDIR}/winc/driver/source/m2m_wifi.o.d" -MT ${OBJECTDIR}/winc/driver/source/m2m_wifi.o -o ${OBJECTDIR}/winc/driver/source/m2m_wifi.o winc/driver/source/m2m_wifi.c 
	
${OBJECTDIR}/winc/driver/source/nmasic.o: winc/driver/source/nmasic.c  .generated_files/9e9588c46ef10c4cba3d70c6539782fc6c0f3c16.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/winc/driver/source" 
	@${RM} ${OBJECTDIR}/winc/driver/source/nmasic.o.d 
	@${RM} ${OBJECTDIR}/winc/driver/source/nmasic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/winc/driver/source/nmasic.o.d" -MT "${OBJECTDIR}/winc/driver/source/nmasic.o.d" -MT ${OBJECTDIR}/winc/driver/source/nmasic.o -o ${OBJECTDIR}/winc/driver/source/nmasic.o winc/driver/source/nmasic.c 
	
${OBJECTDIR}/winc/driver/source/nmbus.o: winc/driver/source/nmbus.c  .generated_files/98e16509268ec4cbb0908e25df9d11b6d1d1c0cf.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/winc/driver/source" 
	@${RM} ${OBJECTDIR}/winc/driver/source/nmbus.o.d 
	@${RM} ${OBJECTDIR}/winc/driver/source/nmbus.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/winc/driver/source/nmbus.o.d" -MT "${OBJECTDIR}/winc/driver/source/nmbus.o.d" -MT ${OBJECTDIR}/winc/driver/source/nmbus.o -o ${OBJECTDIR}/winc/driver/source/nmbus.o winc/driver/source/nmbus.c 
	
${OBJECTDIR}/winc/driver/source/nmdrv.o: winc/driver/source/nmdrv.c  .generated_files/4168662c8a1a00a9dc53bed971430e511136cc07.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/winc/driver/source" 
	@${RM} ${OBJECTDIR}/winc/driver/source/nmdrv.o.d 
	@${RM} ${OBJECTDIR}/winc/driver/source/nmdrv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/winc/driver/source/nmdrv.o.d" -MT "${OBJECTDIR}/winc/driver/source/nmdrv.o.d" -MT ${OBJECTDIR}/winc/driver/source/nmdrv.o -o ${OBJECTDIR}/winc/driver/source/nmdrv.o winc/driver/source/nmdrv.c 
	
${OBJECTDIR}/winc/driver/source/nmi2c.o: winc/driver/source/nmi2c.c  .generated_files/3b96673fb9afc0051bfd5d72e1dc486e7ff8bfda.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/winc/driver/source" 
	@${RM} ${OBJECTDIR}/winc/driver/source/nmi2c.o.d 
	@${RM} ${OBJECTDIR}/winc/driver/source/nmi2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/winc/driver/source/nmi2c.o.d" -MT "${OBJECTDIR}/winc/driver/source/nmi2c.o.d" -MT ${OBJECTDIR}/winc/driver/source/nmi2c.o -o ${OBJECTDIR}/winc/driver/source/nmi2c.o winc/driver/source/nmi2c.c 
	
${OBJECTDIR}/winc/driver/source/nmspi.o: winc/driver/source/nmspi.c  .generated_files/23767989a18cc7b2a40b4b15933ed9cba9c9893c.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/winc/driver/source" 
	@${RM} ${OBJECTDIR}/winc/driver/source/nmspi.o.d 
	@${RM} ${OBJECTDIR}/winc/driver/source/nmspi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/winc/driver/source/nmspi.o.d" -MT "${OBJECTDIR}/winc/driver/source/nmspi.o.d" -MT ${OBJECTDIR}/winc/driver/source/nmspi.o -o ${OBJECTDIR}/winc/driver/source/nmspi.o winc/driver/source/nmspi.c 
	
${OBJECTDIR}/winc/driver/source/nmuart.o: winc/driver/source/nmuart.c  .generated_files/86e433194509903cf07d6f288834f75d3601f938.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/winc/driver/source" 
	@${RM} ${OBJECTDIR}/winc/driver/source/nmuart.o.d 
	@${RM} ${OBJECTDIR}/winc/driver/source/nmuart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/winc/driver/source/nmuart.o.d" -MT "${OBJECTDIR}/winc/driver/source/nmuart.o.d" -MT ${OBJECTDIR}/winc/driver/source/nmuart.o -o ${OBJECTDIR}/winc/driver/source/nmuart.o winc/driver/source/nmuart.c 
	
${OBJECTDIR}/winc/socket/source/socket.o: winc/socket/source/socket.c  .generated_files/dfbe496f72428b1138e4dffc1381c681eae0fc91.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/winc/socket/source" 
	@${RM} ${OBJECTDIR}/winc/socket/source/socket.o.d 
	@${RM} ${OBJECTDIR}/winc/socket/source/socket.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/winc/socket/source/socket.o.d" -MT "${OBJECTDIR}/winc/socket/source/socket.o.d" -MT ${OBJECTDIR}/winc/socket/source/socket.o -o ${OBJECTDIR}/winc/socket/source/socket.o winc/socket/source/socket.c 
	
${OBJECTDIR}/winc/spi_flash/source/spi_flash.o: winc/spi_flash/source/spi_flash.c  .generated_files/1637ee020f29ef37c73eb582793205051f44eb54.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/winc/spi_flash/source" 
	@${RM} ${OBJECTDIR}/winc/spi_flash/source/spi_flash.o.d 
	@${RM} ${OBJECTDIR}/winc/spi_flash/source/spi_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/winc/spi_flash/source/spi_flash.o.d" -MT "${OBJECTDIR}/winc/spi_flash/source/spi_flash.o.d" -MT ${OBJECTDIR}/winc/spi_flash/source/spi_flash.o -o ${OBJECTDIR}/winc/spi_flash/source/spi_flash.o winc/spi_flash/source/spi_flash.c 
	
${OBJECTDIR}/application_manager.o: application_manager.c  .generated_files/219d8005ba15a81c74d0b0fdf1b0b52c613e61a0.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/application_manager.o.d 
	@${RM} ${OBJECTDIR}/application_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/application_manager.o.d" -MT "${OBJECTDIR}/application_manager.o.d" -MT ${OBJECTDIR}/application_manager.o -o ${OBJECTDIR}/application_manager.o application_manager.c 
	
${OBJECTDIR}/debug_print.o: debug_print.c  .generated_files/255141199c7df7ae140a70753e513833c9751162.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/debug_print.o.d 
	@${RM} ${OBJECTDIR}/debug_print.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/debug_print.o.d" -MT "${OBJECTDIR}/debug_print.o.d" -MT ${OBJECTDIR}/debug_print.o -o ${OBJECTDIR}/debug_print.o debug_print.c 
	
${OBJECTDIR}/led.o: led.c  .generated_files/ff05a43c4e366bbe901f4f6cf7c775a0e8bacc62.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/led.o.d 
	@${RM} ${OBJECTDIR}/led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/led.o.d" -MT "${OBJECTDIR}/led.o.d" -MT ${OBJECTDIR}/led.o -o ${OBJECTDIR}/led.o led.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/2a15d6bfdd8bdd0cc66aa02ed8a5abdc52e43159.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/sensors_handling.o: sensors_handling.c  .generated_files/aff0d36baa233603e4ed17c1cd78ca654944e1d0.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/sensors_handling.o.d 
	@${RM} ${OBJECTDIR}/sensors_handling.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/sensors_handling.o.d" -MT "${OBJECTDIR}/sensors_handling.o.d" -MT ${OBJECTDIR}/sensors_handling.o -o ${OBJECTDIR}/sensors_handling.o sensors_handling.c 
	
${OBJECTDIR}/driver_isr.o: driver_isr.c  .generated_files/b6bf92425b663ea46f9601ea37949bd496de7e68.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/driver_isr.o.d 
	@${RM} ${OBJECTDIR}/driver_isr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/driver_isr.o.d" -MT "${OBJECTDIR}/driver_isr.o.d" -MT ${OBJECTDIR}/driver_isr.o -o ${OBJECTDIR}/driver_isr.o driver_isr.c 
	
${OBJECTDIR}/atmel_start.o: atmel_start.c  .generated_files/5d13392cb2b441eb3634bd65aec054d4cd445781.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/atmel_start.o.d 
	@${RM} ${OBJECTDIR}/atmel_start.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/atmel_start.o.d" -MT "${OBJECTDIR}/atmel_start.o.d" -MT ${OBJECTDIR}/atmel_start.o -o ${OBJECTDIR}/atmel_start.o atmel_start.c 
	
else
${OBJECTDIR}/cli/cli.o: cli/cli.c  .generated_files/7563d9efd345ca8e32085b671322aa0343301142.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cli" 
	@${RM} ${OBJECTDIR}/cli/cli.o.d 
	@${RM} ${OBJECTDIR}/cli/cli.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cli/cli.o.d" -MT "${OBJECTDIR}/cli/cli.o.d" -MT ${OBJECTDIR}/cli/cli.o -o ${OBJECTDIR}/cli/cli.o cli/cli.c 
	
${OBJECTDIR}/cloud/bsd_adapter/bsdWINC.o: cloud/bsd_adapter/bsdWINC.c  .generated_files/51901a63df21327e1ef94f6b01a5e141f235fd5e.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cloud/bsd_adapter" 
	@${RM} ${OBJECTDIR}/cloud/bsd_adapter/bsdWINC.o.d 
	@${RM} ${OBJECTDIR}/cloud/bsd_adapter/bsdWINC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cloud/bsd_adapter/bsdWINC.o.d" -MT "${OBJECTDIR}/cloud/bsd_adapter/bsdWINC.o.d" -MT ${OBJECTDIR}/cloud/bsd_adapter/bsdWINC.o -o ${OBJECTDIR}/cloud/bsd_adapter/bsdWINC.o cloud/bsd_adapter/bsdWINC.c 
	
${OBJECTDIR}/cloud/crypto_client/cryptoauthlib_main.o: cloud/crypto_client/cryptoauthlib_main.c  .generated_files/14968e62f23ad52bd175ef56abc2aca31ca70ee1.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cloud/crypto_client" 
	@${RM} ${OBJECTDIR}/cloud/crypto_client/cryptoauthlib_main.o.d 
	@${RM} ${OBJECTDIR}/cloud/crypto_client/cryptoauthlib_main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cloud/crypto_client/cryptoauthlib_main.o.d" -MT "${OBJECTDIR}/cloud/crypto_client/cryptoauthlib_main.o.d" -MT ${OBJECTDIR}/cloud/crypto_client/cryptoauthlib_main.o -o ${OBJECTDIR}/cloud/crypto_client/cryptoauthlib_main.o cloud/crypto_client/cryptoauthlib_main.c 
	
${OBJECTDIR}/cloud/crypto_client/crypto_client.o: cloud/crypto_client/crypto_client.c  .generated_files/b46cd245069ba34212e9d4724cb38b07b975d771.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cloud/crypto_client" 
	@${RM} ${OBJECTDIR}/cloud/crypto_client/crypto_client.o.d 
	@${RM} ${OBJECTDIR}/cloud/crypto_client/crypto_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cloud/crypto_client/crypto_client.o.d" -MT "${OBJECTDIR}/cloud/crypto_client/crypto_client.o.d" -MT ${OBJECTDIR}/cloud/crypto_client/crypto_client.o -o ${OBJECTDIR}/cloud/crypto_client/crypto_client.o cloud/crypto_client/crypto_client.c 
	
${OBJECTDIR}/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o: cloud/mqtt_packetPopulation/mqtt_packetPopulate.c  .generated_files/81ca723dfca6b2419d116b578558470c418a4599.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cloud/mqtt_packetPopulation" 
	@${RM} ${OBJECTDIR}/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o.d 
	@${RM} ${OBJECTDIR}/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o.d" -MT "${OBJECTDIR}/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o.d" -MT ${OBJECTDIR}/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o -o ${OBJECTDIR}/cloud/mqtt_packetPopulation/mqtt_packetPopulate.o cloud/mqtt_packetPopulation/mqtt_packetPopulate.c 
	
${OBJECTDIR}/cloud/cloud_service.o: cloud/cloud_service.c  .generated_files/941954b452478cc0a1687e9d6920751c3cf7f983.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cloud" 
	@${RM} ${OBJECTDIR}/cloud/cloud_service.o.d 
	@${RM} ${OBJECTDIR}/cloud/cloud_service.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cloud/cloud_service.o.d" -MT "${OBJECTDIR}/cloud/cloud_service.o.d" -MT ${OBJECTDIR}/cloud/cloud_service.o -o ${OBJECTDIR}/cloud/cloud_service.o cloud/cloud_service.c 
	
${OBJECTDIR}/cloud/wifi_service.o: cloud/wifi_service.c  .generated_files/9df99c57806210ab5d9abf1eef65b2a04a7f607b.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cloud" 
	@${RM} ${OBJECTDIR}/cloud/wifi_service.o.d 
	@${RM} ${OBJECTDIR}/cloud/wifi_service.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cloud/wifi_service.o.d" -MT "${OBJECTDIR}/cloud/wifi_service.o.d" -MT ${OBJECTDIR}/cloud/wifi_service.o -o ${OBJECTDIR}/cloud/wifi_service.o cloud/wifi_service.c 
	
${OBJECTDIR}/credentials_storage/credentials_storage.o: credentials_storage/credentials_storage.c  .generated_files/72ef0cca706b550c808afeefb0dda7232b40839f.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/credentials_storage" 
	@${RM} ${OBJECTDIR}/credentials_storage/credentials_storage.o.d 
	@${RM} ${OBJECTDIR}/credentials_storage/credentials_storage.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/credentials_storage/credentials_storage.o.d" -MT "${OBJECTDIR}/credentials_storage/credentials_storage.o.d" -MT ${OBJECTDIR}/credentials_storage/credentials_storage.o -o ${OBJECTDIR}/credentials_storage/credentials_storage.o credentials_storage/credentials_storage.c 
	
${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_client.o: cryptoauthlib/lib/atcacert/atcacert_client.c  .generated_files/e72c97ce6cc44e9ab14e2992012df6dedf5addbf.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_client.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_client.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_client.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_client.o -o ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_client.o cryptoauthlib/lib/atcacert/atcacert_client.c 
	
${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_date.o: cryptoauthlib/lib/atcacert/atcacert_date.c  .generated_files/90d1ecb20eb5ae84984691e2933ed614c4cf26db.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_date.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_date.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_date.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_date.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_date.o -o ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_date.o cryptoauthlib/lib/atcacert/atcacert_date.c 
	
${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_def.o: cryptoauthlib/lib/atcacert/atcacert_def.c  .generated_files/62cb19d1bb5582cf9691dd5081578d23633efc06.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_def.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_def.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_def.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_def.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_def.o -o ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_def.o cryptoauthlib/lib/atcacert/atcacert_def.c 
	
${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_der.o: cryptoauthlib/lib/atcacert/atcacert_der.c  .generated_files/8f9b2281691a66ee9d25bb7c13b496ac8f7559e3.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_der.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_der.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_der.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_der.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_der.o -o ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_der.o cryptoauthlib/lib/atcacert/atcacert_der.c 
	
${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_host_hw.o: cryptoauthlib/lib/atcacert/atcacert_host_hw.c  .generated_files/5577add3ce1f05faf205911e980310f0e2093df7.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_host_hw.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_host_hw.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_host_hw.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_host_hw.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_host_hw.o -o ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_host_hw.o cryptoauthlib/lib/atcacert/atcacert_host_hw.c 
	
${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_host_sw.o: cryptoauthlib/lib/atcacert/atcacert_host_sw.c  .generated_files/b5deb2f22009c67de6ae20226835cb0c47f71cd2.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/atcacert" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_host_sw.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_host_sw.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_host_sw.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_host_sw.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_host_sw.o -o ${OBJECTDIR}/cryptoauthlib/lib/atcacert/atcacert_host_sw.o cryptoauthlib/lib/atcacert/atcacert_host_sw.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic.o: cryptoauthlib/lib/basic/atca_basic.c  .generated_files/c9ef1d31b3cb6fb0454323b42b4ea7a169004a47.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic.o cryptoauthlib/lib/basic/atca_basic.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_aes.o: cryptoauthlib/lib/basic/atca_basic_aes.c  .generated_files/13dce67a66b208b58098cc4ae08663a15a52aaa8.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_aes.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_aes.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_aes.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_aes.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_aes.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_aes.o cryptoauthlib/lib/basic/atca_basic_aes.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_checkmac.o: cryptoauthlib/lib/basic/atca_basic_checkmac.c  .generated_files/bb8bf775a5fe516fe311c6e5ed251c31327f220f.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_checkmac.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_checkmac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_checkmac.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_checkmac.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_checkmac.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_checkmac.o cryptoauthlib/lib/basic/atca_basic_checkmac.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_counter.o: cryptoauthlib/lib/basic/atca_basic_counter.c  .generated_files/7bc6588a54222c05660ca0407b936023a84b788c.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_counter.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_counter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_counter.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_counter.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_counter.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_counter.o cryptoauthlib/lib/basic/atca_basic_counter.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_derivekey.o: cryptoauthlib/lib/basic/atca_basic_derivekey.c  .generated_files/ebec2efef0b32f875750d48b10a25927475b7681.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_derivekey.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_derivekey.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_derivekey.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_derivekey.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_derivekey.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_derivekey.o cryptoauthlib/lib/basic/atca_basic_derivekey.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_ecdh.o: cryptoauthlib/lib/basic/atca_basic_ecdh.c  .generated_files/4b7c4647da36392b644ae12f75bd3fb9d93ad633.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_ecdh.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_ecdh.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_ecdh.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_ecdh.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_ecdh.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_ecdh.o cryptoauthlib/lib/basic/atca_basic_ecdh.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_gendig.o: cryptoauthlib/lib/basic/atca_basic_gendig.c  .generated_files/6f31f27df6471e56ed6d4f69fa2bbbb2fc5f44ea.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_gendig.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_gendig.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_gendig.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_gendig.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_gendig.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_gendig.o cryptoauthlib/lib/basic/atca_basic_gendig.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_genkey.o: cryptoauthlib/lib/basic/atca_basic_genkey.c  .generated_files/d132cc737b1ad3d89665d31dc762b0074a7759da.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_genkey.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_genkey.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_genkey.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_genkey.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_genkey.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_genkey.o cryptoauthlib/lib/basic/atca_basic_genkey.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_hmac.o: cryptoauthlib/lib/basic/atca_basic_hmac.c  .generated_files/bee5e78a1928bcbfa1c7a6b74ffe56da40425b4.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_hmac.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_hmac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_hmac.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_hmac.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_hmac.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_hmac.o cryptoauthlib/lib/basic/atca_basic_hmac.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_info.o: cryptoauthlib/lib/basic/atca_basic_info.c  .generated_files/e08e2b9e4a6e10417a58af500fe964b187fe2e7a.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_info.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_info.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_info.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_info.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_info.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_info.o cryptoauthlib/lib/basic/atca_basic_info.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_kdf.o: cryptoauthlib/lib/basic/atca_basic_kdf.c  .generated_files/7327bb5f0320c6e628355e1c045421ff0494f355.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_kdf.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_kdf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_kdf.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_kdf.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_kdf.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_kdf.o cryptoauthlib/lib/basic/atca_basic_kdf.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_lock.o: cryptoauthlib/lib/basic/atca_basic_lock.c  .generated_files/b61a9e567c0a6c3b7c0a86e1ce45c9291e5194.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_lock.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_lock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_lock.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_lock.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_lock.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_lock.o cryptoauthlib/lib/basic/atca_basic_lock.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_mac.o: cryptoauthlib/lib/basic/atca_basic_mac.c  .generated_files/d20e93bb90806c106011817df3dfb80529c9903.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_mac.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_mac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_mac.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_mac.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_mac.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_mac.o cryptoauthlib/lib/basic/atca_basic_mac.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_nonce.o: cryptoauthlib/lib/basic/atca_basic_nonce.c  .generated_files/cad104022198cc07fadb3a0e22c8875623b8c6c3.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_nonce.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_nonce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_nonce.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_nonce.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_nonce.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_nonce.o cryptoauthlib/lib/basic/atca_basic_nonce.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_privwrite.o: cryptoauthlib/lib/basic/atca_basic_privwrite.c  .generated_files/4f699252f48886398bae854a0804c284c1566385.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_privwrite.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_privwrite.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_privwrite.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_privwrite.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_privwrite.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_privwrite.o cryptoauthlib/lib/basic/atca_basic_privwrite.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_random.o: cryptoauthlib/lib/basic/atca_basic_random.c  .generated_files/77de763ab2071c22fee41c816899cdbd2cd5e0b9.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_random.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_random.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_random.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_random.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_random.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_random.o cryptoauthlib/lib/basic/atca_basic_random.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_read.o: cryptoauthlib/lib/basic/atca_basic_read.c  .generated_files/4c9f48f3593bf5bdfd33d044c96b771bd9deb5b5.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_read.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_read.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_read.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_read.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_read.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_read.o cryptoauthlib/lib/basic/atca_basic_read.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_secureboot.o: cryptoauthlib/lib/basic/atca_basic_secureboot.c  .generated_files/3ee207cd081892436798419d775445bebf368f85.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_secureboot.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_secureboot.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_secureboot.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_secureboot.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_secureboot.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_secureboot.o cryptoauthlib/lib/basic/atca_basic_secureboot.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_selftest.o: cryptoauthlib/lib/basic/atca_basic_selftest.c  .generated_files/447acf481643def9bcd5950c40c6ae6ab28e9a0d.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_selftest.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_selftest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_selftest.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_selftest.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_selftest.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_selftest.o cryptoauthlib/lib/basic/atca_basic_selftest.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_sha.o: cryptoauthlib/lib/basic/atca_basic_sha.c  .generated_files/12dc1fdda44e511eccc6a69e98af40fe35be5a3d.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_sha.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_sha.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_sha.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_sha.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_sha.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_sha.o cryptoauthlib/lib/basic/atca_basic_sha.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_sign.o: cryptoauthlib/lib/basic/atca_basic_sign.c  .generated_files/89b52f787b3239c898da7ccebd71fea8b42530da.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_sign.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_sign.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_sign.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_sign.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_sign.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_sign.o cryptoauthlib/lib/basic/atca_basic_sign.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_updateextra.o: cryptoauthlib/lib/basic/atca_basic_updateextra.c  .generated_files/d295ea9180a483825ea371bb1d76038548247ae1.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_updateextra.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_updateextra.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_updateextra.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_updateextra.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_updateextra.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_updateextra.o cryptoauthlib/lib/basic/atca_basic_updateextra.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_verify.o: cryptoauthlib/lib/basic/atca_basic_verify.c  .generated_files/98a92e58f50f4ef0e4d9f750c2f85dca457e9db7.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_verify.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_verify.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_verify.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_verify.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_verify.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_verify.o cryptoauthlib/lib/basic/atca_basic_verify.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_write.o: cryptoauthlib/lib/basic/atca_basic_write.c  .generated_files/86727a48cc3a87f29f647b40a219f53196f2d2dc.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_write.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_write.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_write.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_write.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_write.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_basic_write.o cryptoauthlib/lib/basic/atca_basic_write.c 
	
${OBJECTDIR}/cryptoauthlib/lib/basic/atca_helpers.o: cryptoauthlib/lib/basic/atca_helpers.c  .generated_files/cff223570a45c9ed5c1aebc69f81ae6b08f272b8.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/basic" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_helpers.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_helpers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_helpers.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/basic/atca_helpers.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_helpers.o -o ${OBJECTDIR}/cryptoauthlib/lib/basic/atca_helpers.o cryptoauthlib/lib/basic/atca_helpers.c 
	
${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes/sha1_routines.o: cryptoauthlib/lib/crypto/hashes/sha1_routines.c  .generated_files/9005aa41c55b2f90a3361c03c01bd03b833e943c.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes/sha1_routines.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes/sha1_routines.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes/sha1_routines.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes/sha1_routines.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes/sha1_routines.o -o ${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes/sha1_routines.o cryptoauthlib/lib/crypto/hashes/sha1_routines.c 
	
${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes/sha2_routines.o: cryptoauthlib/lib/crypto/hashes/sha2_routines.c  .generated_files/39ab00e9711f98b0fa249b85d1d9b009c9774479.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes/sha2_routines.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes/sha2_routines.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes/sha2_routines.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes/sha2_routines.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes/sha2_routines.o -o ${OBJECTDIR}/cryptoauthlib/lib/crypto/hashes/sha2_routines.o cryptoauthlib/lib/crypto/hashes/sha2_routines.c 
	
${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o: cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.c  .generated_files/9460d11754655cd8d338f7c1e4d41ea3be2bd90c.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/crypto" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o -o ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.o cryptoauthlib/lib/crypto/atca_crypto_sw_ecdsa.c 
	
${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o: cryptoauthlib/lib/crypto/atca_crypto_sw_rand.c  .generated_files/56cf1bfcfa74ff09f397c97149f9e75bfd7d5a88.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/crypto" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o -o ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_rand.o cryptoauthlib/lib/crypto/atca_crypto_sw_rand.c 
	
${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o: cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.c  .generated_files/1f169b56373d04e052017b8ac3d644287fceb290.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/crypto" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o -o ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.o cryptoauthlib/lib/crypto/atca_crypto_sw_sha1.c 
	
${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o: cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.c  .generated_files/915b1dd2692a98a158affa7a8e849eaa7351efa5.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/crypto" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o -o ${OBJECTDIR}/cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.o cryptoauthlib/lib/crypto/atca_crypto_sw_sha2.c 
	
${OBJECTDIR}/cryptoauthlib/lib/hal/atca_hal.o: cryptoauthlib/lib/hal/atca_hal.c  .generated_files/2f4cc86a5887d6673df16f6410ab7d68e2a48734.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/hal" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/hal/atca_hal.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/hal/atca_hal.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/hal/atca_hal.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/hal/atca_hal.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/hal/atca_hal.o -o ${OBJECTDIR}/cryptoauthlib/lib/hal/atca_hal.o cryptoauthlib/lib/hal/atca_hal.c 
	
${OBJECTDIR}/cryptoauthlib/lib/hal/hal_atmega4809_i2c.o: cryptoauthlib/lib/hal/hal_atmega4809_i2c.c  .generated_files/4ff38be024ba90d1fb3339611ddc05dfec3a240a.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/hal" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/hal/hal_atmega4809_i2c.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/hal/hal_atmega4809_i2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/hal/hal_atmega4809_i2c.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/hal/hal_atmega4809_i2c.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/hal/hal_atmega4809_i2c.o -o ${OBJECTDIR}/cryptoauthlib/lib/hal/hal_atmega4809_i2c.o cryptoauthlib/lib/hal/hal_atmega4809_i2c.c 
	
${OBJECTDIR}/cryptoauthlib/lib/hal/hal_atmega4809_timer.o: cryptoauthlib/lib/hal/hal_atmega4809_timer.c  .generated_files/b957ca39c841d1687ee2259a05d07273a3f4d72b.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/hal" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/hal/hal_atmega4809_timer.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/hal/hal_atmega4809_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/hal/hal_atmega4809_timer.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/hal/hal_atmega4809_timer.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/hal/hal_atmega4809_timer.o -o ${OBJECTDIR}/cryptoauthlib/lib/hal/hal_atmega4809_timer.o cryptoauthlib/lib/hal/hal_atmega4809_timer.c 
	
${OBJECTDIR}/cryptoauthlib/lib/host/atca_host.o: cryptoauthlib/lib/host/atca_host.c  .generated_files/da47964a38c08c91a2a6e05acbcf67bd56697779.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/host" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/host/atca_host.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/host/atca_host.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/host/atca_host.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/host/atca_host.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/host/atca_host.o -o ${OBJECTDIR}/cryptoauthlib/lib/host/atca_host.o cryptoauthlib/lib/host/atca_host.c 
	
${OBJECTDIR}/cryptoauthlib/lib/jwt/atca_jwt.o: cryptoauthlib/lib/jwt/atca_jwt.c  .generated_files/261c2a2fdfb86b10c763705f6465d24c5d23ae53.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/jwt" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/jwt/atca_jwt.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/jwt/atca_jwt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/jwt/atca_jwt.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/jwt/atca_jwt.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/jwt/atca_jwt.o -o ${OBJECTDIR}/cryptoauthlib/lib/jwt/atca_jwt.o cryptoauthlib/lib/jwt/atca_jwt.c 
	
${OBJECTDIR}/cryptoauthlib/lib/tls/atcatls.o: cryptoauthlib/lib/tls/atcatls.c  .generated_files/128243bc812eb3efdd27c3eb0b3b8f085ecf0dc7.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/tls" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/tls/atcatls.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/tls/atcatls.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/tls/atcatls.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/tls/atcatls.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/tls/atcatls.o -o ${OBJECTDIR}/cryptoauthlib/lib/tls/atcatls.o cryptoauthlib/lib/tls/atcatls.c 
	
${OBJECTDIR}/cryptoauthlib/lib/tls/atcatls_cfg.o: cryptoauthlib/lib/tls/atcatls_cfg.c  .generated_files/b11661b1372ea46720a38de099c1293a1990bbd2.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib/tls" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/tls/atcatls_cfg.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/tls/atcatls_cfg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/tls/atcatls_cfg.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/tls/atcatls_cfg.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/tls/atcatls_cfg.o -o ${OBJECTDIR}/cryptoauthlib/lib/tls/atcatls_cfg.o cryptoauthlib/lib/tls/atcatls_cfg.c 
	
${OBJECTDIR}/cryptoauthlib/lib/atca_cfgs.o: cryptoauthlib/lib/atca_cfgs.c  .generated_files/7b481ede7b829b508acd2671b392caae149335c3.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atca_cfgs.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atca_cfgs.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/atca_cfgs.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/atca_cfgs.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/atca_cfgs.o -o ${OBJECTDIR}/cryptoauthlib/lib/atca_cfgs.o cryptoauthlib/lib/atca_cfgs.c 
	
${OBJECTDIR}/cryptoauthlib/lib/atca_command.o: cryptoauthlib/lib/atca_command.c  .generated_files/1c4c704db62287096094374270a82f2d161d57fb.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atca_command.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atca_command.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/atca_command.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/atca_command.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/atca_command.o -o ${OBJECTDIR}/cryptoauthlib/lib/atca_command.o cryptoauthlib/lib/atca_command.c 
	
${OBJECTDIR}/cryptoauthlib/lib/atca_device.o: cryptoauthlib/lib/atca_device.c  .generated_files/a53d53f7e5973a67aaa53cdd5e59341c1f031576.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atca_device.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atca_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/atca_device.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/atca_device.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/atca_device.o -o ${OBJECTDIR}/cryptoauthlib/lib/atca_device.o cryptoauthlib/lib/atca_device.c 
	
${OBJECTDIR}/cryptoauthlib/lib/atca_execution.o: cryptoauthlib/lib/atca_execution.c  .generated_files/d18c9100c38cdf64b9ad6929bdb61266841a624c.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atca_execution.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atca_execution.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/atca_execution.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/atca_execution.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/atca_execution.o -o ${OBJECTDIR}/cryptoauthlib/lib/atca_execution.o cryptoauthlib/lib/atca_execution.c 
	
${OBJECTDIR}/cryptoauthlib/lib/atca_iface.o: cryptoauthlib/lib/atca_iface.c  .generated_files/e606197ec9c8e87916cc225c6af0bcb3aefcd5b0.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/cryptoauthlib/lib" 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atca_iface.o.d 
	@${RM} ${OBJECTDIR}/cryptoauthlib/lib/atca_iface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/cryptoauthlib/lib/atca_iface.o.d" -MT "${OBJECTDIR}/cryptoauthlib/lib/atca_iface.o.d" -MT ${OBJECTDIR}/cryptoauthlib/lib/atca_iface.o -o ${OBJECTDIR}/cryptoauthlib/lib/atca_iface.o cryptoauthlib/lib/atca_iface.c 
	
${OBJECTDIR}/examples/src/adc_basic_example.o: examples/src/adc_basic_example.c  .generated_files/428552fad1501c8909b7936b954aac0f1ad191c5.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/examples/src" 
	@${RM} ${OBJECTDIR}/examples/src/adc_basic_example.o.d 
	@${RM} ${OBJECTDIR}/examples/src/adc_basic_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/examples/src/adc_basic_example.o.d" -MT "${OBJECTDIR}/examples/src/adc_basic_example.o.d" -MT ${OBJECTDIR}/examples/src/adc_basic_example.o -o ${OBJECTDIR}/examples/src/adc_basic_example.o examples/src/adc_basic_example.c 
	
${OBJECTDIR}/examples/src/i2c_master_example.o: examples/src/i2c_master_example.c  .generated_files/6543090670474bf14bdbcfa590bf3dd96757e49a.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/examples/src" 
	@${RM} ${OBJECTDIR}/examples/src/i2c_master_example.o.d 
	@${RM} ${OBJECTDIR}/examples/src/i2c_master_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/examples/src/i2c_master_example.o.d" -MT "${OBJECTDIR}/examples/src/i2c_master_example.o.d" -MT ${OBJECTDIR}/examples/src/i2c_master_example.o -o ${OBJECTDIR}/examples/src/i2c_master_example.o examples/src/i2c_master_example.c 
	
${OBJECTDIR}/examples/src/pwm_basic_example.o: examples/src/pwm_basic_example.c  .generated_files/4db7696ce86995450192ac2a5c2c5320613ea2de.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/examples/src" 
	@${RM} ${OBJECTDIR}/examples/src/pwm_basic_example.o.d 
	@${RM} ${OBJECTDIR}/examples/src/pwm_basic_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/examples/src/pwm_basic_example.o.d" -MT "${OBJECTDIR}/examples/src/pwm_basic_example.o.d" -MT ${OBJECTDIR}/examples/src/pwm_basic_example.o -o ${OBJECTDIR}/examples/src/pwm_basic_example.o examples/src/pwm_basic_example.c 
	
${OBJECTDIR}/examples/src/spi_basic_example.o: examples/src/spi_basic_example.c  .generated_files/53c81a6a23114791b69fa02af2be55b2416d7d6.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/examples/src" 
	@${RM} ${OBJECTDIR}/examples/src/spi_basic_example.o.d 
	@${RM} ${OBJECTDIR}/examples/src/spi_basic_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/examples/src/spi_basic_example.o.d" -MT "${OBJECTDIR}/examples/src/spi_basic_example.o.d" -MT ${OBJECTDIR}/examples/src/spi_basic_example.o -o ${OBJECTDIR}/examples/src/spi_basic_example.o examples/src/spi_basic_example.c 
	
${OBJECTDIR}/examples/src/timeout_example.o: examples/src/timeout_example.c  .generated_files/52bf9bdcb5bbcb70b2e7807000d38454571fa04c.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/examples/src" 
	@${RM} ${OBJECTDIR}/examples/src/timeout_example.o.d 
	@${RM} ${OBJECTDIR}/examples/src/timeout_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/examples/src/timeout_example.o.d" -MT "${OBJECTDIR}/examples/src/timeout_example.o.d" -MT ${OBJECTDIR}/examples/src/timeout_example.o -o ${OBJECTDIR}/examples/src/timeout_example.o examples/src/timeout_example.c 
	
${OBJECTDIR}/examples/src/usart_basic_example.o: examples/src/usart_basic_example.c  .generated_files/a37058e760bf2511c4df5b0db12b0687b8e0bdbd.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/examples/src" 
	@${RM} ${OBJECTDIR}/examples/src/usart_basic_example.o.d 
	@${RM} ${OBJECTDIR}/examples/src/usart_basic_example.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/examples/src/usart_basic_example.o.d" -MT "${OBJECTDIR}/examples/src/usart_basic_example.o.d" -MT ${OBJECTDIR}/examples/src/usart_basic_example.o -o ${OBJECTDIR}/examples/src/usart_basic_example.o examples/src/usart_basic_example.c 
	
${OBJECTDIR}/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o: mqtt/mqtt_comm_bsd/mqtt_comm_layer.c  .generated_files/75f9723fd8638a009c8090802ee077d26cb6fdcd.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/mqtt/mqtt_comm_bsd" 
	@${RM} ${OBJECTDIR}/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o.d 
	@${RM} ${OBJECTDIR}/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o.d" -MT "${OBJECTDIR}/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o.d" -MT ${OBJECTDIR}/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o -o ${OBJECTDIR}/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o mqtt/mqtt_comm_bsd/mqtt_comm_layer.c 
	
${OBJECTDIR}/mqtt/mqtt_core/mqtt_core.o: mqtt/mqtt_core/mqtt_core.c  .generated_files/b1c9aad0b7774ff5617fd050d66be102595bbe11.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/mqtt/mqtt_core" 
	@${RM} ${OBJECTDIR}/mqtt/mqtt_core/mqtt_core.o.d 
	@${RM} ${OBJECTDIR}/mqtt/mqtt_core/mqtt_core.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/mqtt/mqtt_core/mqtt_core.o.d" -MT "${OBJECTDIR}/mqtt/mqtt_core/mqtt_core.o.d" -MT ${OBJECTDIR}/mqtt/mqtt_core/mqtt_core.o -o ${OBJECTDIR}/mqtt/mqtt_core/mqtt_core.o mqtt/mqtt_core/mqtt_core.c 
	
${OBJECTDIR}/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o: mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.c  .generated_files/78bcc74c960cb2260f178cda66bc36bdc86ce5ae.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/mqtt/mqtt_exchange_buffer" 
	@${RM} ${OBJECTDIR}/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o.d 
	@${RM} ${OBJECTDIR}/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o.d" -MT "${OBJECTDIR}/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o.d" -MT ${OBJECTDIR}/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o -o ${OBJECTDIR}/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.c 
	
${OBJECTDIR}/mqtt/mqtt_packetTransfer_interface.o: mqtt/mqtt_packetTransfer_interface.c  .generated_files/d11170512de48231c7eff12aa0017b78a2b14462.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/mqtt" 
	@${RM} ${OBJECTDIR}/mqtt/mqtt_packetTransfer_interface.o.d 
	@${RM} ${OBJECTDIR}/mqtt/mqtt_packetTransfer_interface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/mqtt/mqtt_packetTransfer_interface.o.d" -MT "${OBJECTDIR}/mqtt/mqtt_packetTransfer_interface.o.d" -MT ${OBJECTDIR}/mqtt/mqtt_packetTransfer_interface.o -o ${OBJECTDIR}/mqtt/mqtt_packetTransfer_interface.o mqtt/mqtt_packetTransfer_interface.c 
	
${OBJECTDIR}/src/driver_init.o: src/driver_init.c  .generated_files/5a999faac86387fd7bdb05e1940a938a78a6498d.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/driver_init.o.d 
	@${RM} ${OBJECTDIR}/src/driver_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/src/driver_init.o.d" -MT "${OBJECTDIR}/src/driver_init.o.d" -MT ${OBJECTDIR}/src/driver_init.o -o ${OBJECTDIR}/src/driver_init.o src/driver_init.c 
	
${OBJECTDIR}/src/adc_basic.o: src/adc_basic.c  .generated_files/ed098941ea32877ae4efff4360a447e92af0633f.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/adc_basic.o.d 
	@${RM} ${OBJECTDIR}/src/adc_basic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/src/adc_basic.o.d" -MT "${OBJECTDIR}/src/adc_basic.o.d" -MT ${OBJECTDIR}/src/adc_basic.o -o ${OBJECTDIR}/src/adc_basic.o src/adc_basic.c 
	
${OBJECTDIR}/src/bod.o: src/bod.c  .generated_files/9ed5ef5ca90cf7cfc3456287aa4c5e743e56c661.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/bod.o.d 
	@${RM} ${OBJECTDIR}/src/bod.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/src/bod.o.d" -MT "${OBJECTDIR}/src/bod.o.d" -MT ${OBJECTDIR}/src/bod.o -o ${OBJECTDIR}/src/bod.o src/bod.c 
	
${OBJECTDIR}/src/clkctrl.o: src/clkctrl.c  .generated_files/c1e21664ae19427b39fc2f5731bbada9bce031e8.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/clkctrl.o.d 
	@${RM} ${OBJECTDIR}/src/clkctrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/src/clkctrl.o.d" -MT "${OBJECTDIR}/src/clkctrl.o.d" -MT ${OBJECTDIR}/src/clkctrl.o -o ${OBJECTDIR}/src/clkctrl.o src/clkctrl.c 
	
${OBJECTDIR}/src/cpuint.o: src/cpuint.c  .generated_files/b150dafcf00a500a58df6959c77c9d30f07b12f0.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/cpuint.o.d 
	@${RM} ${OBJECTDIR}/src/cpuint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/src/cpuint.o.d" -MT "${OBJECTDIR}/src/cpuint.o.d" -MT ${OBJECTDIR}/src/cpuint.o -o ${OBJECTDIR}/src/cpuint.o src/cpuint.c 
	
${OBJECTDIR}/src/i2c_master.o: src/i2c_master.c  .generated_files/4c6123b74c439c0cc02d7c0294676ca9eae8a3b5.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/i2c_master.o.d 
	@${RM} ${OBJECTDIR}/src/i2c_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/src/i2c_master.o.d" -MT "${OBJECTDIR}/src/i2c_master.o.d" -MT ${OBJECTDIR}/src/i2c_master.o -o ${OBJECTDIR}/src/i2c_master.o src/i2c_master.c 
	
${OBJECTDIR}/src/i2c_simple_master.o: src/i2c_simple_master.c  .generated_files/aeb973267b24ca62c9f0f38b45ef758a1b01eec7.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/i2c_simple_master.o.d 
	@${RM} ${OBJECTDIR}/src/i2c_simple_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/src/i2c_simple_master.o.d" -MT "${OBJECTDIR}/src/i2c_simple_master.o.d" -MT ${OBJECTDIR}/src/i2c_simple_master.o -o ${OBJECTDIR}/src/i2c_simple_master.o src/i2c_simple_master.c 
	
${OBJECTDIR}/src/i2c_types.o: src/i2c_types.c  .generated_files/7ee6cdbb8376aba1a20e442f1d67011f7ce71c59.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/i2c_types.o.d 
	@${RM} ${OBJECTDIR}/src/i2c_types.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/src/i2c_types.o.d" -MT "${OBJECTDIR}/src/i2c_types.o.d" -MT ${OBJECTDIR}/src/i2c_types.o -o ${OBJECTDIR}/src/i2c_types.o src/i2c_types.c 
	
${OBJECTDIR}/src/pwm_basic.o: src/pwm_basic.c  .generated_files/3fb910b45ccb2b61ba9fe6713b4577cbab523bd1.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/pwm_basic.o.d 
	@${RM} ${OBJECTDIR}/src/pwm_basic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/src/pwm_basic.o.d" -MT "${OBJECTDIR}/src/pwm_basic.o.d" -MT ${OBJECTDIR}/src/pwm_basic.o -o ${OBJECTDIR}/src/pwm_basic.o src/pwm_basic.c 
	
${OBJECTDIR}/src/slpctrl.o: src/slpctrl.c  .generated_files/699a89abf90da02afc295ac2c3b945a6ab8ce640.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/slpctrl.o.d 
	@${RM} ${OBJECTDIR}/src/slpctrl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/src/slpctrl.o.d" -MT "${OBJECTDIR}/src/slpctrl.o.d" -MT ${OBJECTDIR}/src/slpctrl.o -o ${OBJECTDIR}/src/slpctrl.o src/slpctrl.c 
	
${OBJECTDIR}/src/spi_basic.o: src/spi_basic.c  .generated_files/248fa8d29ffcf05f4eff5d248c00371dd2b5dba.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/spi_basic.o.d 
	@${RM} ${OBJECTDIR}/src/spi_basic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/src/spi_basic.o.d" -MT "${OBJECTDIR}/src/spi_basic.o.d" -MT ${OBJECTDIR}/src/spi_basic.o -o ${OBJECTDIR}/src/spi_basic.o src/spi_basic.c 
	
${OBJECTDIR}/src/timeout.o: src/timeout.c  .generated_files/861132a80395c0b64e4f1d3a72a100246501a50a.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/timeout.o.d 
	@${RM} ${OBJECTDIR}/src/timeout.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/src/timeout.o.d" -MT "${OBJECTDIR}/src/timeout.o.d" -MT ${OBJECTDIR}/src/timeout.o -o ${OBJECTDIR}/src/timeout.o src/timeout.c 
	
${OBJECTDIR}/src/usart_basic.o: src/usart_basic.c  .generated_files/9c9e566c5d795cc11ce9b5d21fa53e522c7cf844.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/usart_basic.o.d 
	@${RM} ${OBJECTDIR}/src/usart_basic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/src/usart_basic.o.d" -MT "${OBJECTDIR}/src/usart_basic.o.d" -MT ${OBJECTDIR}/src/usart_basic.o -o ${OBJECTDIR}/src/usart_basic.o src/usart_basic.c 
	
${OBJECTDIR}/winc/bsp/source/nm_bsp_mega.o: winc/bsp/source/nm_bsp_mega.c  .generated_files/def89b99297edf9fa56d177bda2ec1f453943a0b.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/winc/bsp/source" 
	@${RM} ${OBJECTDIR}/winc/bsp/source/nm_bsp_mega.o.d 
	@${RM} ${OBJECTDIR}/winc/bsp/source/nm_bsp_mega.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/winc/bsp/source/nm_bsp_mega.o.d" -MT "${OBJECTDIR}/winc/bsp/source/nm_bsp_mega.o.d" -MT ${OBJECTDIR}/winc/bsp/source/nm_bsp_mega.o -o ${OBJECTDIR}/winc/bsp/source/nm_bsp_mega.o winc/bsp/source/nm_bsp_mega.c 
	
${OBJECTDIR}/winc/bus_wrapper/source/nm_bus_wrapper_mega.o: winc/bus_wrapper/source/nm_bus_wrapper_mega.c  .generated_files/ced723f990483c3d9734ac0085070d77b7e14a2b.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/winc/bus_wrapper/source" 
	@${RM} ${OBJECTDIR}/winc/bus_wrapper/source/nm_bus_wrapper_mega.o.d 
	@${RM} ${OBJECTDIR}/winc/bus_wrapper/source/nm_bus_wrapper_mega.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/winc/bus_wrapper/source/nm_bus_wrapper_mega.o.d" -MT "${OBJECTDIR}/winc/bus_wrapper/source/nm_bus_wrapper_mega.o.d" -MT ${OBJECTDIR}/winc/bus_wrapper/source/nm_bus_wrapper_mega.o -o ${OBJECTDIR}/winc/bus_wrapper/source/nm_bus_wrapper_mega.o winc/bus_wrapper/source/nm_bus_wrapper_mega.c 
	
${OBJECTDIR}/winc/common/source/nm_common.o: winc/common/source/nm_common.c  .generated_files/591dcbb8f15c476a5da92a7ddb4e962cf416d589.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/winc/common/source" 
	@${RM} ${OBJECTDIR}/winc/common/source/nm_common.o.d 
	@${RM} ${OBJECTDIR}/winc/common/source/nm_common.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/winc/common/source/nm_common.o.d" -MT "${OBJECTDIR}/winc/common/source/nm_common.o.d" -MT ${OBJECTDIR}/winc/common/source/nm_common.o -o ${OBJECTDIR}/winc/common/source/nm_common.o winc/common/source/nm_common.c 
	
${OBJECTDIR}/winc/driver/source/m2m_ate_mode.o: winc/driver/source/m2m_ate_mode.c  .generated_files/ee92ae663fb6437599ca1a96e8606afe998cbd9b.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/winc/driver/source" 
	@${RM} ${OBJECTDIR}/winc/driver/source/m2m_ate_mode.o.d 
	@${RM} ${OBJECTDIR}/winc/driver/source/m2m_ate_mode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/winc/driver/source/m2m_ate_mode.o.d" -MT "${OBJECTDIR}/winc/driver/source/m2m_ate_mode.o.d" -MT ${OBJECTDIR}/winc/driver/source/m2m_ate_mode.o -o ${OBJECTDIR}/winc/driver/source/m2m_ate_mode.o winc/driver/source/m2m_ate_mode.c 
	
${OBJECTDIR}/winc/driver/source/m2m_crypto.o: winc/driver/source/m2m_crypto.c  .generated_files/a1172f40d989bb28d291dd79309bc41d941863ba.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/winc/driver/source" 
	@${RM} ${OBJECTDIR}/winc/driver/source/m2m_crypto.o.d 
	@${RM} ${OBJECTDIR}/winc/driver/source/m2m_crypto.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/winc/driver/source/m2m_crypto.o.d" -MT "${OBJECTDIR}/winc/driver/source/m2m_crypto.o.d" -MT ${OBJECTDIR}/winc/driver/source/m2m_crypto.o -o ${OBJECTDIR}/winc/driver/source/m2m_crypto.o winc/driver/source/m2m_crypto.c 
	
${OBJECTDIR}/winc/driver/source/m2m_hif.o: winc/driver/source/m2m_hif.c  .generated_files/696a8356ba8f99caa236c818e28f8e8b360cef5.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/winc/driver/source" 
	@${RM} ${OBJECTDIR}/winc/driver/source/m2m_hif.o.d 
	@${RM} ${OBJECTDIR}/winc/driver/source/m2m_hif.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/winc/driver/source/m2m_hif.o.d" -MT "${OBJECTDIR}/winc/driver/source/m2m_hif.o.d" -MT ${OBJECTDIR}/winc/driver/source/m2m_hif.o -o ${OBJECTDIR}/winc/driver/source/m2m_hif.o winc/driver/source/m2m_hif.c 
	
${OBJECTDIR}/winc/driver/source/m2m_ota.o: winc/driver/source/m2m_ota.c  .generated_files/5a215a0b7e56977c23f58897f37b254bae0ec8d6.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/winc/driver/source" 
	@${RM} ${OBJECTDIR}/winc/driver/source/m2m_ota.o.d 
	@${RM} ${OBJECTDIR}/winc/driver/source/m2m_ota.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/winc/driver/source/m2m_ota.o.d" -MT "${OBJECTDIR}/winc/driver/source/m2m_ota.o.d" -MT ${OBJECTDIR}/winc/driver/source/m2m_ota.o -o ${OBJECTDIR}/winc/driver/source/m2m_ota.o winc/driver/source/m2m_ota.c 
	
${OBJECTDIR}/winc/driver/source/m2m_periph.o: winc/driver/source/m2m_periph.c  .generated_files/a8feaf19a9b94ea64044c241c71950190b5bcd9e.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/winc/driver/source" 
	@${RM} ${OBJECTDIR}/winc/driver/source/m2m_periph.o.d 
	@${RM} ${OBJECTDIR}/winc/driver/source/m2m_periph.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/winc/driver/source/m2m_periph.o.d" -MT "${OBJECTDIR}/winc/driver/source/m2m_periph.o.d" -MT ${OBJECTDIR}/winc/driver/source/m2m_periph.o -o ${OBJECTDIR}/winc/driver/source/m2m_periph.o winc/driver/source/m2m_periph.c 
	
${OBJECTDIR}/winc/driver/source/m2m_ssl.o: winc/driver/source/m2m_ssl.c  .generated_files/89a9a70652292dd9aedb115a5a48fd479d26ff65.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/winc/driver/source" 
	@${RM} ${OBJECTDIR}/winc/driver/source/m2m_ssl.o.d 
	@${RM} ${OBJECTDIR}/winc/driver/source/m2m_ssl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/winc/driver/source/m2m_ssl.o.d" -MT "${OBJECTDIR}/winc/driver/source/m2m_ssl.o.d" -MT ${OBJECTDIR}/winc/driver/source/m2m_ssl.o -o ${OBJECTDIR}/winc/driver/source/m2m_ssl.o winc/driver/source/m2m_ssl.c 
	
${OBJECTDIR}/winc/driver/source/m2m_wifi.o: winc/driver/source/m2m_wifi.c  .generated_files/d8328b0d95eafa1c3d59a84c9bdcfb5ef8883e75.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/winc/driver/source" 
	@${RM} ${OBJECTDIR}/winc/driver/source/m2m_wifi.o.d 
	@${RM} ${OBJECTDIR}/winc/driver/source/m2m_wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/winc/driver/source/m2m_wifi.o.d" -MT "${OBJECTDIR}/winc/driver/source/m2m_wifi.o.d" -MT ${OBJECTDIR}/winc/driver/source/m2m_wifi.o -o ${OBJECTDIR}/winc/driver/source/m2m_wifi.o winc/driver/source/m2m_wifi.c 
	
${OBJECTDIR}/winc/driver/source/nmasic.o: winc/driver/source/nmasic.c  .generated_files/6905fce067787f9a9783181f4bcfc54a9801e181.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/winc/driver/source" 
	@${RM} ${OBJECTDIR}/winc/driver/source/nmasic.o.d 
	@${RM} ${OBJECTDIR}/winc/driver/source/nmasic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/winc/driver/source/nmasic.o.d" -MT "${OBJECTDIR}/winc/driver/source/nmasic.o.d" -MT ${OBJECTDIR}/winc/driver/source/nmasic.o -o ${OBJECTDIR}/winc/driver/source/nmasic.o winc/driver/source/nmasic.c 
	
${OBJECTDIR}/winc/driver/source/nmbus.o: winc/driver/source/nmbus.c  .generated_files/11c8b78813b20aaeb4e75ada776bf8e2443e4d43.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/winc/driver/source" 
	@${RM} ${OBJECTDIR}/winc/driver/source/nmbus.o.d 
	@${RM} ${OBJECTDIR}/winc/driver/source/nmbus.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/winc/driver/source/nmbus.o.d" -MT "${OBJECTDIR}/winc/driver/source/nmbus.o.d" -MT ${OBJECTDIR}/winc/driver/source/nmbus.o -o ${OBJECTDIR}/winc/driver/source/nmbus.o winc/driver/source/nmbus.c 
	
${OBJECTDIR}/winc/driver/source/nmdrv.o: winc/driver/source/nmdrv.c  .generated_files/48d0d2f8e0ac83e53a8ace788b493ab37a0a4b53.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/winc/driver/source" 
	@${RM} ${OBJECTDIR}/winc/driver/source/nmdrv.o.d 
	@${RM} ${OBJECTDIR}/winc/driver/source/nmdrv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/winc/driver/source/nmdrv.o.d" -MT "${OBJECTDIR}/winc/driver/source/nmdrv.o.d" -MT ${OBJECTDIR}/winc/driver/source/nmdrv.o -o ${OBJECTDIR}/winc/driver/source/nmdrv.o winc/driver/source/nmdrv.c 
	
${OBJECTDIR}/winc/driver/source/nmi2c.o: winc/driver/source/nmi2c.c  .generated_files/52107637f806f2bdf18d197e1125f3e20618142f.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/winc/driver/source" 
	@${RM} ${OBJECTDIR}/winc/driver/source/nmi2c.o.d 
	@${RM} ${OBJECTDIR}/winc/driver/source/nmi2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/winc/driver/source/nmi2c.o.d" -MT "${OBJECTDIR}/winc/driver/source/nmi2c.o.d" -MT ${OBJECTDIR}/winc/driver/source/nmi2c.o -o ${OBJECTDIR}/winc/driver/source/nmi2c.o winc/driver/source/nmi2c.c 
	
${OBJECTDIR}/winc/driver/source/nmspi.o: winc/driver/source/nmspi.c  .generated_files/54b11bd76d7e68c66d73e193d9d2d05423dc4477.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/winc/driver/source" 
	@${RM} ${OBJECTDIR}/winc/driver/source/nmspi.o.d 
	@${RM} ${OBJECTDIR}/winc/driver/source/nmspi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/winc/driver/source/nmspi.o.d" -MT "${OBJECTDIR}/winc/driver/source/nmspi.o.d" -MT ${OBJECTDIR}/winc/driver/source/nmspi.o -o ${OBJECTDIR}/winc/driver/source/nmspi.o winc/driver/source/nmspi.c 
	
${OBJECTDIR}/winc/driver/source/nmuart.o: winc/driver/source/nmuart.c  .generated_files/1bea5f2f6a198217b3834994aaf9a456fdd67e58.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/winc/driver/source" 
	@${RM} ${OBJECTDIR}/winc/driver/source/nmuart.o.d 
	@${RM} ${OBJECTDIR}/winc/driver/source/nmuart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/winc/driver/source/nmuart.o.d" -MT "${OBJECTDIR}/winc/driver/source/nmuart.o.d" -MT ${OBJECTDIR}/winc/driver/source/nmuart.o -o ${OBJECTDIR}/winc/driver/source/nmuart.o winc/driver/source/nmuart.c 
	
${OBJECTDIR}/winc/socket/source/socket.o: winc/socket/source/socket.c  .generated_files/fb8dc6b6fd314d452fd1f512286170e54f6623bc.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/winc/socket/source" 
	@${RM} ${OBJECTDIR}/winc/socket/source/socket.o.d 
	@${RM} ${OBJECTDIR}/winc/socket/source/socket.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/winc/socket/source/socket.o.d" -MT "${OBJECTDIR}/winc/socket/source/socket.o.d" -MT ${OBJECTDIR}/winc/socket/source/socket.o -o ${OBJECTDIR}/winc/socket/source/socket.o winc/socket/source/socket.c 
	
${OBJECTDIR}/winc/spi_flash/source/spi_flash.o: winc/spi_flash/source/spi_flash.c  .generated_files/9f19c55f763b74ebac360a75ea568c5a1b857e8a.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/winc/spi_flash/source" 
	@${RM} ${OBJECTDIR}/winc/spi_flash/source/spi_flash.o.d 
	@${RM} ${OBJECTDIR}/winc/spi_flash/source/spi_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/winc/spi_flash/source/spi_flash.o.d" -MT "${OBJECTDIR}/winc/spi_flash/source/spi_flash.o.d" -MT ${OBJECTDIR}/winc/spi_flash/source/spi_flash.o -o ${OBJECTDIR}/winc/spi_flash/source/spi_flash.o winc/spi_flash/source/spi_flash.c 
	
${OBJECTDIR}/application_manager.o: application_manager.c  .generated_files/c06a7b1917b2916a57e2afee606b3a3d5fc6e70d.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/application_manager.o.d 
	@${RM} ${OBJECTDIR}/application_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/application_manager.o.d" -MT "${OBJECTDIR}/application_manager.o.d" -MT ${OBJECTDIR}/application_manager.o -o ${OBJECTDIR}/application_manager.o application_manager.c 
	
${OBJECTDIR}/debug_print.o: debug_print.c  .generated_files/338838d39dfee5cfb28dfeee76c72eb941881286.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/debug_print.o.d 
	@${RM} ${OBJECTDIR}/debug_print.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/debug_print.o.d" -MT "${OBJECTDIR}/debug_print.o.d" -MT ${OBJECTDIR}/debug_print.o -o ${OBJECTDIR}/debug_print.o debug_print.c 
	
${OBJECTDIR}/led.o: led.c  .generated_files/4c4d42911c490be21bc090d3601e3bea0240bcd1.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/led.o.d 
	@${RM} ${OBJECTDIR}/led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/led.o.d" -MT "${OBJECTDIR}/led.o.d" -MT ${OBJECTDIR}/led.o -o ${OBJECTDIR}/led.o led.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/39a5f3f45e961f95774e96335cc0dcacecd06d62.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/sensors_handling.o: sensors_handling.c  .generated_files/e828438aeedea117a913b8fdf73119328ace1db1.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/sensors_handling.o.d 
	@${RM} ${OBJECTDIR}/sensors_handling.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/sensors_handling.o.d" -MT "${OBJECTDIR}/sensors_handling.o.d" -MT ${OBJECTDIR}/sensors_handling.o -o ${OBJECTDIR}/sensors_handling.o sensors_handling.c 
	
${OBJECTDIR}/driver_isr.o: driver_isr.c  .generated_files/544cb1fcbcc5d153cffdab651192152e595354ef.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/driver_isr.o.d 
	@${RM} ${OBJECTDIR}/driver_isr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/driver_isr.o.d" -MT "${OBJECTDIR}/driver_isr.o.d" -MT ${OBJECTDIR}/driver_isr.o -o ${OBJECTDIR}/driver_isr.o driver_isr.c 
	
${OBJECTDIR}/atmel_start.o: atmel_start.c  .generated_files/3f0a99c49c78421b2b9cdd1a2284b364f3cc48c2.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/atmel_start.o.d 
	@${RM} ${OBJECTDIR}/atmel_start.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -std=gnu99 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os     -MD -MP -MF "${OBJECTDIR}/atmel_start.o.d" -MT "${OBJECTDIR}/atmel_start.o.d" -MT ${OBJECTDIR}/atmel_start.o -o ${OBJECTDIR}/atmel_start.o atmel_start.c 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/src/protected_io.o: src/protected_io.S  .generated_files/8db80cfb49f13a34eae3f1af5fd74334c12c03fd.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/src/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  -std=gnu99 -gdwarf-3 -Wa,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os   -MD -MP -MF "${OBJECTDIR}/src/protected_io.o.d" -MT "${OBJECTDIR}/src/protected_io.o.d" -MT ${OBJECTDIR}/src/protected_io.o -o ${OBJECTDIR}/src/protected_io.o  src/protected_io.S 
	
else
${OBJECTDIR}/src/protected_io.o: src/protected_io.S  .generated_files/3578717e9b0b4f1bd6b50ee2bf3238e4202668d6.flag .generated_files/5956b3afcf9cb34aa02383370edf875e44e34c9f.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/src/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -DXPRJ_Default=$(CND_CONF)  -std=gnu99 -gdwarf-3 -Wa,--defsym=__MPLAB_BUILD=1 -std=gnu99 -Wno-pragmas -DATCA_NO_HEAP -DATCA_NO_POLL -DATCA_HAL_I2C -DATCAPRINTF -DTCPIP_BSD -Os   -MD -MP -MF "${OBJECTDIR}/src/protected_io.o.d" -MT "${OBJECTDIR}/src/protected_io.o.d" -MT ${OBJECTDIR}/src/protected_io.o -o ${OBJECTDIR}/src/protected_io.o  src/protected_io.S 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/AVR_IOT_DISPENSER.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/AVR_IOT_DISPENSER.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_Default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1     -gdwarf-2 -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -std=gnu99 -gdwarf-3     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/AVR_IOT_DISPENSER.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o dist/${CND_CONF}/${IMAGE_TYPE}/AVR_IOT_DISPENSER.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/AVR_IOT_DISPENSER.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/AVR_IOT_DISPENSER.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/AVR_IOT_DISPENSER.X.${IMAGE_TYPE}.map  -DXPRJ_Default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -I"./." -I"include" -I"utils/assembler" -I"cryptoauthlib/lib" -I"utils" -I"examples/include" -I"config" -Wall -std=gnu99 -gdwarf-3     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/AVR_IOT_DISPENSER.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o dist/${CND_CONF}/${IMAGE_TYPE}/AVR_IOT_DISPENSER.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "dist/${CND_CONF}/${IMAGE_TYPE}/AVR_IOT_DISPENSER.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "dist/${CND_CONF}/${IMAGE_TYPE}/AVR_IOT_DISPENSER.X.${IMAGE_TYPE}.hex"
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/Default
	${RM} -r dist/Default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
