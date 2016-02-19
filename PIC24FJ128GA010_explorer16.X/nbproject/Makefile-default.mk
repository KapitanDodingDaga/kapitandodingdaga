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
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PIC24FJ128GA010_explorer16.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PIC24FJ128GA010_explorer16.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=src/reset_source/reset_source.c src/main/main.c src/led/led.c src/isr/isr.c src/timer1/timer1.c src/timer1/timer1_test.c src/i2c_master/i2c_master.c src/i2c_slave/i2c_slave.c src/i2c_master/i2c_master_test.c src/lcd/lcd.c src/lcd/lcd_test.c src/i2c_slave/i2c_slave_test.c src/spi_master/spi_master.c src/spi_master/spi_master_test.c src/spi_slave/spi_slave.c src/spi_slave/spi_slave_test.c src/crc_calc/crc_calc.c src/sio/sio.c src/crc_calc/crc_calc_test.c src/io_printf/io_printf.c src/batman/batman.c src/capture/capture.c src/_adc/adc.c src/change_notify/change_notify.c "src/eeprom_emu/DEE Emulation 16-bit.c" "src/eeprom_emu/Flash Operations.s" src/eeprom_emu/eeprom_emu_test.c src/rtcc/rtcc_test.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/src/reset_source/reset_source.o ${OBJECTDIR}/src/main/main.o ${OBJECTDIR}/src/led/led.o ${OBJECTDIR}/src/isr/isr.o ${OBJECTDIR}/src/timer1/timer1.o ${OBJECTDIR}/src/timer1/timer1_test.o ${OBJECTDIR}/src/i2c_master/i2c_master.o ${OBJECTDIR}/src/i2c_slave/i2c_slave.o ${OBJECTDIR}/src/i2c_master/i2c_master_test.o ${OBJECTDIR}/src/lcd/lcd.o ${OBJECTDIR}/src/lcd/lcd_test.o ${OBJECTDIR}/src/i2c_slave/i2c_slave_test.o ${OBJECTDIR}/src/spi_master/spi_master.o ${OBJECTDIR}/src/spi_master/spi_master_test.o ${OBJECTDIR}/src/spi_slave/spi_slave.o ${OBJECTDIR}/src/spi_slave/spi_slave_test.o ${OBJECTDIR}/src/crc_calc/crc_calc.o ${OBJECTDIR}/src/sio/sio.o ${OBJECTDIR}/src/crc_calc/crc_calc_test.o ${OBJECTDIR}/src/io_printf/io_printf.o ${OBJECTDIR}/src/batman/batman.o ${OBJECTDIR}/src/capture/capture.o ${OBJECTDIR}/src/_adc/adc.o ${OBJECTDIR}/src/change_notify/change_notify.o "${OBJECTDIR}/src/eeprom_emu/DEE Emulation 16-bit.o" "${OBJECTDIR}/src/eeprom_emu/Flash Operations.o" ${OBJECTDIR}/src/eeprom_emu/eeprom_emu_test.o ${OBJECTDIR}/src/rtcc/rtcc_test.o
POSSIBLE_DEPFILES=${OBJECTDIR}/src/reset_source/reset_source.o.d ${OBJECTDIR}/src/main/main.o.d ${OBJECTDIR}/src/led/led.o.d ${OBJECTDIR}/src/isr/isr.o.d ${OBJECTDIR}/src/timer1/timer1.o.d ${OBJECTDIR}/src/timer1/timer1_test.o.d ${OBJECTDIR}/src/i2c_master/i2c_master.o.d ${OBJECTDIR}/src/i2c_slave/i2c_slave.o.d ${OBJECTDIR}/src/i2c_master/i2c_master_test.o.d ${OBJECTDIR}/src/lcd/lcd.o.d ${OBJECTDIR}/src/lcd/lcd_test.o.d ${OBJECTDIR}/src/i2c_slave/i2c_slave_test.o.d ${OBJECTDIR}/src/spi_master/spi_master.o.d ${OBJECTDIR}/src/spi_master/spi_master_test.o.d ${OBJECTDIR}/src/spi_slave/spi_slave.o.d ${OBJECTDIR}/src/spi_slave/spi_slave_test.o.d ${OBJECTDIR}/src/crc_calc/crc_calc.o.d ${OBJECTDIR}/src/sio/sio.o.d ${OBJECTDIR}/src/crc_calc/crc_calc_test.o.d ${OBJECTDIR}/src/io_printf/io_printf.o.d ${OBJECTDIR}/src/batman/batman.o.d ${OBJECTDIR}/src/capture/capture.o.d ${OBJECTDIR}/src/_adc/adc.o.d ${OBJECTDIR}/src/change_notify/change_notify.o.d "${OBJECTDIR}/src/eeprom_emu/DEE Emulation 16-bit.o.d" "${OBJECTDIR}/src/eeprom_emu/Flash Operations.o.d" ${OBJECTDIR}/src/eeprom_emu/eeprom_emu_test.o.d ${OBJECTDIR}/src/rtcc/rtcc_test.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/src/reset_source/reset_source.o ${OBJECTDIR}/src/main/main.o ${OBJECTDIR}/src/led/led.o ${OBJECTDIR}/src/isr/isr.o ${OBJECTDIR}/src/timer1/timer1.o ${OBJECTDIR}/src/timer1/timer1_test.o ${OBJECTDIR}/src/i2c_master/i2c_master.o ${OBJECTDIR}/src/i2c_slave/i2c_slave.o ${OBJECTDIR}/src/i2c_master/i2c_master_test.o ${OBJECTDIR}/src/lcd/lcd.o ${OBJECTDIR}/src/lcd/lcd_test.o ${OBJECTDIR}/src/i2c_slave/i2c_slave_test.o ${OBJECTDIR}/src/spi_master/spi_master.o ${OBJECTDIR}/src/spi_master/spi_master_test.o ${OBJECTDIR}/src/spi_slave/spi_slave.o ${OBJECTDIR}/src/spi_slave/spi_slave_test.o ${OBJECTDIR}/src/crc_calc/crc_calc.o ${OBJECTDIR}/src/sio/sio.o ${OBJECTDIR}/src/crc_calc/crc_calc_test.o ${OBJECTDIR}/src/io_printf/io_printf.o ${OBJECTDIR}/src/batman/batman.o ${OBJECTDIR}/src/capture/capture.o ${OBJECTDIR}/src/_adc/adc.o ${OBJECTDIR}/src/change_notify/change_notify.o ${OBJECTDIR}/src/eeprom_emu/DEE\ Emulation\ 16-bit.o ${OBJECTDIR}/src/eeprom_emu/Flash\ Operations.o ${OBJECTDIR}/src/eeprom_emu/eeprom_emu_test.o ${OBJECTDIR}/src/rtcc/rtcc_test.o

# Source Files
SOURCEFILES=src/reset_source/reset_source.c src/main/main.c src/led/led.c src/isr/isr.c src/timer1/timer1.c src/timer1/timer1_test.c src/i2c_master/i2c_master.c src/i2c_slave/i2c_slave.c src/i2c_master/i2c_master_test.c src/lcd/lcd.c src/lcd/lcd_test.c src/i2c_slave/i2c_slave_test.c src/spi_master/spi_master.c src/spi_master/spi_master_test.c src/spi_slave/spi_slave.c src/spi_slave/spi_slave_test.c src/crc_calc/crc_calc.c src/sio/sio.c src/crc_calc/crc_calc_test.c src/io_printf/io_printf.c src/batman/batman.c src/capture/capture.c src/_adc/adc.c src/change_notify/change_notify.c src/eeprom_emu/DEE Emulation 16-bit.c src/eeprom_emu/Flash Operations.s src/eeprom_emu/eeprom_emu_test.c src/rtcc/rtcc_test.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/PIC24FJ128GA010_explorer16.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ128GA010
MP_LINKER_FILE_OPTION=,--script=p24FJ128GA010.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/src/reset_source/reset_source.o: src/reset_source/reset_source.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/reset_source" 
	@${RM} ${OBJECTDIR}/src/reset_source/reset_source.o.d 
	@${RM} ${OBJECTDIR}/src/reset_source/reset_source.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/reset_source/reset_source.c  -o ${OBJECTDIR}/src/reset_source/reset_source.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/reset_source/reset_source.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/reset_source/reset_source.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/main/main.o: src/main/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/main" 
	@${RM} ${OBJECTDIR}/src/main/main.o.d 
	@${RM} ${OBJECTDIR}/src/main/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/main/main.c  -o ${OBJECTDIR}/src/main/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/main/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/main/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/led/led.o: src/led/led.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/led" 
	@${RM} ${OBJECTDIR}/src/led/led.o.d 
	@${RM} ${OBJECTDIR}/src/led/led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/led/led.c  -o ${OBJECTDIR}/src/led/led.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/led/led.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/led/led.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/isr/isr.o: src/isr/isr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/isr" 
	@${RM} ${OBJECTDIR}/src/isr/isr.o.d 
	@${RM} ${OBJECTDIR}/src/isr/isr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/isr/isr.c  -o ${OBJECTDIR}/src/isr/isr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/isr/isr.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/isr/isr.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/timer1/timer1.o: src/timer1/timer1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/timer1" 
	@${RM} ${OBJECTDIR}/src/timer1/timer1.o.d 
	@${RM} ${OBJECTDIR}/src/timer1/timer1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/timer1/timer1.c  -o ${OBJECTDIR}/src/timer1/timer1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/timer1/timer1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/timer1/timer1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/timer1/timer1_test.o: src/timer1/timer1_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/timer1" 
	@${RM} ${OBJECTDIR}/src/timer1/timer1_test.o.d 
	@${RM} ${OBJECTDIR}/src/timer1/timer1_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/timer1/timer1_test.c  -o ${OBJECTDIR}/src/timer1/timer1_test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/timer1/timer1_test.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/timer1/timer1_test.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/i2c_master/i2c_master.o: src/i2c_master/i2c_master.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/i2c_master" 
	@${RM} ${OBJECTDIR}/src/i2c_master/i2c_master.o.d 
	@${RM} ${OBJECTDIR}/src/i2c_master/i2c_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/i2c_master/i2c_master.c  -o ${OBJECTDIR}/src/i2c_master/i2c_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/i2c_master/i2c_master.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/i2c_master/i2c_master.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/i2c_slave/i2c_slave.o: src/i2c_slave/i2c_slave.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/i2c_slave" 
	@${RM} ${OBJECTDIR}/src/i2c_slave/i2c_slave.o.d 
	@${RM} ${OBJECTDIR}/src/i2c_slave/i2c_slave.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/i2c_slave/i2c_slave.c  -o ${OBJECTDIR}/src/i2c_slave/i2c_slave.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/i2c_slave/i2c_slave.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/i2c_slave/i2c_slave.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/i2c_master/i2c_master_test.o: src/i2c_master/i2c_master_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/i2c_master" 
	@${RM} ${OBJECTDIR}/src/i2c_master/i2c_master_test.o.d 
	@${RM} ${OBJECTDIR}/src/i2c_master/i2c_master_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/i2c_master/i2c_master_test.c  -o ${OBJECTDIR}/src/i2c_master/i2c_master_test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/i2c_master/i2c_master_test.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/i2c_master/i2c_master_test.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/lcd/lcd.o: src/lcd/lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/lcd" 
	@${RM} ${OBJECTDIR}/src/lcd/lcd.o.d 
	@${RM} ${OBJECTDIR}/src/lcd/lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/lcd/lcd.c  -o ${OBJECTDIR}/src/lcd/lcd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/lcd/lcd.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/lcd/lcd.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/lcd/lcd_test.o: src/lcd/lcd_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/lcd" 
	@${RM} ${OBJECTDIR}/src/lcd/lcd_test.o.d 
	@${RM} ${OBJECTDIR}/src/lcd/lcd_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/lcd/lcd_test.c  -o ${OBJECTDIR}/src/lcd/lcd_test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/lcd/lcd_test.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/lcd/lcd_test.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/i2c_slave/i2c_slave_test.o: src/i2c_slave/i2c_slave_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/i2c_slave" 
	@${RM} ${OBJECTDIR}/src/i2c_slave/i2c_slave_test.o.d 
	@${RM} ${OBJECTDIR}/src/i2c_slave/i2c_slave_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/i2c_slave/i2c_slave_test.c  -o ${OBJECTDIR}/src/i2c_slave/i2c_slave_test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/i2c_slave/i2c_slave_test.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/i2c_slave/i2c_slave_test.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/spi_master/spi_master.o: src/spi_master/spi_master.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/spi_master" 
	@${RM} ${OBJECTDIR}/src/spi_master/spi_master.o.d 
	@${RM} ${OBJECTDIR}/src/spi_master/spi_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/spi_master/spi_master.c  -o ${OBJECTDIR}/src/spi_master/spi_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/spi_master/spi_master.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/spi_master/spi_master.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/spi_master/spi_master_test.o: src/spi_master/spi_master_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/spi_master" 
	@${RM} ${OBJECTDIR}/src/spi_master/spi_master_test.o.d 
	@${RM} ${OBJECTDIR}/src/spi_master/spi_master_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/spi_master/spi_master_test.c  -o ${OBJECTDIR}/src/spi_master/spi_master_test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/spi_master/spi_master_test.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/spi_master/spi_master_test.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/spi_slave/spi_slave.o: src/spi_slave/spi_slave.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/spi_slave" 
	@${RM} ${OBJECTDIR}/src/spi_slave/spi_slave.o.d 
	@${RM} ${OBJECTDIR}/src/spi_slave/spi_slave.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/spi_slave/spi_slave.c  -o ${OBJECTDIR}/src/spi_slave/spi_slave.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/spi_slave/spi_slave.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/spi_slave/spi_slave.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/spi_slave/spi_slave_test.o: src/spi_slave/spi_slave_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/spi_slave" 
	@${RM} ${OBJECTDIR}/src/spi_slave/spi_slave_test.o.d 
	@${RM} ${OBJECTDIR}/src/spi_slave/spi_slave_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/spi_slave/spi_slave_test.c  -o ${OBJECTDIR}/src/spi_slave/spi_slave_test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/spi_slave/spi_slave_test.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/spi_slave/spi_slave_test.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/crc_calc/crc_calc.o: src/crc_calc/crc_calc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/crc_calc" 
	@${RM} ${OBJECTDIR}/src/crc_calc/crc_calc.o.d 
	@${RM} ${OBJECTDIR}/src/crc_calc/crc_calc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/crc_calc/crc_calc.c  -o ${OBJECTDIR}/src/crc_calc/crc_calc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/crc_calc/crc_calc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/crc_calc/crc_calc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/sio/sio.o: src/sio/sio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/sio" 
	@${RM} ${OBJECTDIR}/src/sio/sio.o.d 
	@${RM} ${OBJECTDIR}/src/sio/sio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/sio/sio.c  -o ${OBJECTDIR}/src/sio/sio.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/sio/sio.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/sio/sio.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/crc_calc/crc_calc_test.o: src/crc_calc/crc_calc_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/crc_calc" 
	@${RM} ${OBJECTDIR}/src/crc_calc/crc_calc_test.o.d 
	@${RM} ${OBJECTDIR}/src/crc_calc/crc_calc_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/crc_calc/crc_calc_test.c  -o ${OBJECTDIR}/src/crc_calc/crc_calc_test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/crc_calc/crc_calc_test.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/crc_calc/crc_calc_test.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/io_printf/io_printf.o: src/io_printf/io_printf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/io_printf" 
	@${RM} ${OBJECTDIR}/src/io_printf/io_printf.o.d 
	@${RM} ${OBJECTDIR}/src/io_printf/io_printf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/io_printf/io_printf.c  -o ${OBJECTDIR}/src/io_printf/io_printf.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/io_printf/io_printf.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/io_printf/io_printf.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/batman/batman.o: src/batman/batman.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/batman" 
	@${RM} ${OBJECTDIR}/src/batman/batman.o.d 
	@${RM} ${OBJECTDIR}/src/batman/batman.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/batman/batman.c  -o ${OBJECTDIR}/src/batman/batman.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/batman/batman.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/batman/batman.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/capture/capture.o: src/capture/capture.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/capture" 
	@${RM} ${OBJECTDIR}/src/capture/capture.o.d 
	@${RM} ${OBJECTDIR}/src/capture/capture.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/capture/capture.c  -o ${OBJECTDIR}/src/capture/capture.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/capture/capture.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/capture/capture.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/_adc/adc.o: src/_adc/adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/_adc" 
	@${RM} ${OBJECTDIR}/src/_adc/adc.o.d 
	@${RM} ${OBJECTDIR}/src/_adc/adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/_adc/adc.c  -o ${OBJECTDIR}/src/_adc/adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/_adc/adc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/_adc/adc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/change_notify/change_notify.o: src/change_notify/change_notify.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/change_notify" 
	@${RM} ${OBJECTDIR}/src/change_notify/change_notify.o.d 
	@${RM} ${OBJECTDIR}/src/change_notify/change_notify.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/change_notify/change_notify.c  -o ${OBJECTDIR}/src/change_notify/change_notify.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/change_notify/change_notify.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/change_notify/change_notify.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/eeprom_emu/DEE\ Emulation\ 16-bit.o: src/eeprom_emu/DEE\ Emulation\ 16-bit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/eeprom_emu" 
	@${RM} "${OBJECTDIR}/src/eeprom_emu/DEE Emulation 16-bit.o".d 
	@${RM} "${OBJECTDIR}/src/eeprom_emu/DEE Emulation 16-bit.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "src/eeprom_emu/DEE Emulation 16-bit.c"  -o "${OBJECTDIR}/src/eeprom_emu/DEE Emulation 16-bit.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/eeprom_emu/DEE Emulation 16-bit.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/eeprom_emu/DEE Emulation 16-bit.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/eeprom_emu/eeprom_emu_test.o: src/eeprom_emu/eeprom_emu_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/eeprom_emu" 
	@${RM} ${OBJECTDIR}/src/eeprom_emu/eeprom_emu_test.o.d 
	@${RM} ${OBJECTDIR}/src/eeprom_emu/eeprom_emu_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/eeprom_emu/eeprom_emu_test.c  -o ${OBJECTDIR}/src/eeprom_emu/eeprom_emu_test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/eeprom_emu/eeprom_emu_test.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/eeprom_emu/eeprom_emu_test.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/rtcc/rtcc_test.o: src/rtcc/rtcc_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/rtcc" 
	@${RM} ${OBJECTDIR}/src/rtcc/rtcc_test.o.d 
	@${RM} ${OBJECTDIR}/src/rtcc/rtcc_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/rtcc/rtcc_test.c  -o ${OBJECTDIR}/src/rtcc/rtcc_test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/rtcc/rtcc_test.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/rtcc/rtcc_test.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/src/reset_source/reset_source.o: src/reset_source/reset_source.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/reset_source" 
	@${RM} ${OBJECTDIR}/src/reset_source/reset_source.o.d 
	@${RM} ${OBJECTDIR}/src/reset_source/reset_source.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/reset_source/reset_source.c  -o ${OBJECTDIR}/src/reset_source/reset_source.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/reset_source/reset_source.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/reset_source/reset_source.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/main/main.o: src/main/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/main" 
	@${RM} ${OBJECTDIR}/src/main/main.o.d 
	@${RM} ${OBJECTDIR}/src/main/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/main/main.c  -o ${OBJECTDIR}/src/main/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/main/main.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/main/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/led/led.o: src/led/led.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/led" 
	@${RM} ${OBJECTDIR}/src/led/led.o.d 
	@${RM} ${OBJECTDIR}/src/led/led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/led/led.c  -o ${OBJECTDIR}/src/led/led.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/led/led.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/led/led.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/isr/isr.o: src/isr/isr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/isr" 
	@${RM} ${OBJECTDIR}/src/isr/isr.o.d 
	@${RM} ${OBJECTDIR}/src/isr/isr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/isr/isr.c  -o ${OBJECTDIR}/src/isr/isr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/isr/isr.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/isr/isr.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/timer1/timer1.o: src/timer1/timer1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/timer1" 
	@${RM} ${OBJECTDIR}/src/timer1/timer1.o.d 
	@${RM} ${OBJECTDIR}/src/timer1/timer1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/timer1/timer1.c  -o ${OBJECTDIR}/src/timer1/timer1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/timer1/timer1.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/timer1/timer1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/timer1/timer1_test.o: src/timer1/timer1_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/timer1" 
	@${RM} ${OBJECTDIR}/src/timer1/timer1_test.o.d 
	@${RM} ${OBJECTDIR}/src/timer1/timer1_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/timer1/timer1_test.c  -o ${OBJECTDIR}/src/timer1/timer1_test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/timer1/timer1_test.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/timer1/timer1_test.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/i2c_master/i2c_master.o: src/i2c_master/i2c_master.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/i2c_master" 
	@${RM} ${OBJECTDIR}/src/i2c_master/i2c_master.o.d 
	@${RM} ${OBJECTDIR}/src/i2c_master/i2c_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/i2c_master/i2c_master.c  -o ${OBJECTDIR}/src/i2c_master/i2c_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/i2c_master/i2c_master.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/i2c_master/i2c_master.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/i2c_slave/i2c_slave.o: src/i2c_slave/i2c_slave.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/i2c_slave" 
	@${RM} ${OBJECTDIR}/src/i2c_slave/i2c_slave.o.d 
	@${RM} ${OBJECTDIR}/src/i2c_slave/i2c_slave.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/i2c_slave/i2c_slave.c  -o ${OBJECTDIR}/src/i2c_slave/i2c_slave.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/i2c_slave/i2c_slave.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/i2c_slave/i2c_slave.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/i2c_master/i2c_master_test.o: src/i2c_master/i2c_master_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/i2c_master" 
	@${RM} ${OBJECTDIR}/src/i2c_master/i2c_master_test.o.d 
	@${RM} ${OBJECTDIR}/src/i2c_master/i2c_master_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/i2c_master/i2c_master_test.c  -o ${OBJECTDIR}/src/i2c_master/i2c_master_test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/i2c_master/i2c_master_test.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/i2c_master/i2c_master_test.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/lcd/lcd.o: src/lcd/lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/lcd" 
	@${RM} ${OBJECTDIR}/src/lcd/lcd.o.d 
	@${RM} ${OBJECTDIR}/src/lcd/lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/lcd/lcd.c  -o ${OBJECTDIR}/src/lcd/lcd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/lcd/lcd.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/lcd/lcd.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/lcd/lcd_test.o: src/lcd/lcd_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/lcd" 
	@${RM} ${OBJECTDIR}/src/lcd/lcd_test.o.d 
	@${RM} ${OBJECTDIR}/src/lcd/lcd_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/lcd/lcd_test.c  -o ${OBJECTDIR}/src/lcd/lcd_test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/lcd/lcd_test.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/lcd/lcd_test.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/i2c_slave/i2c_slave_test.o: src/i2c_slave/i2c_slave_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/i2c_slave" 
	@${RM} ${OBJECTDIR}/src/i2c_slave/i2c_slave_test.o.d 
	@${RM} ${OBJECTDIR}/src/i2c_slave/i2c_slave_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/i2c_slave/i2c_slave_test.c  -o ${OBJECTDIR}/src/i2c_slave/i2c_slave_test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/i2c_slave/i2c_slave_test.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/i2c_slave/i2c_slave_test.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/spi_master/spi_master.o: src/spi_master/spi_master.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/spi_master" 
	@${RM} ${OBJECTDIR}/src/spi_master/spi_master.o.d 
	@${RM} ${OBJECTDIR}/src/spi_master/spi_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/spi_master/spi_master.c  -o ${OBJECTDIR}/src/spi_master/spi_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/spi_master/spi_master.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/spi_master/spi_master.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/spi_master/spi_master_test.o: src/spi_master/spi_master_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/spi_master" 
	@${RM} ${OBJECTDIR}/src/spi_master/spi_master_test.o.d 
	@${RM} ${OBJECTDIR}/src/spi_master/spi_master_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/spi_master/spi_master_test.c  -o ${OBJECTDIR}/src/spi_master/spi_master_test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/spi_master/spi_master_test.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/spi_master/spi_master_test.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/spi_slave/spi_slave.o: src/spi_slave/spi_slave.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/spi_slave" 
	@${RM} ${OBJECTDIR}/src/spi_slave/spi_slave.o.d 
	@${RM} ${OBJECTDIR}/src/spi_slave/spi_slave.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/spi_slave/spi_slave.c  -o ${OBJECTDIR}/src/spi_slave/spi_slave.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/spi_slave/spi_slave.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/spi_slave/spi_slave.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/spi_slave/spi_slave_test.o: src/spi_slave/spi_slave_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/spi_slave" 
	@${RM} ${OBJECTDIR}/src/spi_slave/spi_slave_test.o.d 
	@${RM} ${OBJECTDIR}/src/spi_slave/spi_slave_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/spi_slave/spi_slave_test.c  -o ${OBJECTDIR}/src/spi_slave/spi_slave_test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/spi_slave/spi_slave_test.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/spi_slave/spi_slave_test.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/crc_calc/crc_calc.o: src/crc_calc/crc_calc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/crc_calc" 
	@${RM} ${OBJECTDIR}/src/crc_calc/crc_calc.o.d 
	@${RM} ${OBJECTDIR}/src/crc_calc/crc_calc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/crc_calc/crc_calc.c  -o ${OBJECTDIR}/src/crc_calc/crc_calc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/crc_calc/crc_calc.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/crc_calc/crc_calc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/sio/sio.o: src/sio/sio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/sio" 
	@${RM} ${OBJECTDIR}/src/sio/sio.o.d 
	@${RM} ${OBJECTDIR}/src/sio/sio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/sio/sio.c  -o ${OBJECTDIR}/src/sio/sio.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/sio/sio.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/sio/sio.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/crc_calc/crc_calc_test.o: src/crc_calc/crc_calc_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/crc_calc" 
	@${RM} ${OBJECTDIR}/src/crc_calc/crc_calc_test.o.d 
	@${RM} ${OBJECTDIR}/src/crc_calc/crc_calc_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/crc_calc/crc_calc_test.c  -o ${OBJECTDIR}/src/crc_calc/crc_calc_test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/crc_calc/crc_calc_test.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/crc_calc/crc_calc_test.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/io_printf/io_printf.o: src/io_printf/io_printf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/io_printf" 
	@${RM} ${OBJECTDIR}/src/io_printf/io_printf.o.d 
	@${RM} ${OBJECTDIR}/src/io_printf/io_printf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/io_printf/io_printf.c  -o ${OBJECTDIR}/src/io_printf/io_printf.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/io_printf/io_printf.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/io_printf/io_printf.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/batman/batman.o: src/batman/batman.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/batman" 
	@${RM} ${OBJECTDIR}/src/batman/batman.o.d 
	@${RM} ${OBJECTDIR}/src/batman/batman.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/batman/batman.c  -o ${OBJECTDIR}/src/batman/batman.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/batman/batman.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/batman/batman.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/capture/capture.o: src/capture/capture.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/capture" 
	@${RM} ${OBJECTDIR}/src/capture/capture.o.d 
	@${RM} ${OBJECTDIR}/src/capture/capture.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/capture/capture.c  -o ${OBJECTDIR}/src/capture/capture.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/capture/capture.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/capture/capture.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/_adc/adc.o: src/_adc/adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/_adc" 
	@${RM} ${OBJECTDIR}/src/_adc/adc.o.d 
	@${RM} ${OBJECTDIR}/src/_adc/adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/_adc/adc.c  -o ${OBJECTDIR}/src/_adc/adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/_adc/adc.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/_adc/adc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/change_notify/change_notify.o: src/change_notify/change_notify.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/change_notify" 
	@${RM} ${OBJECTDIR}/src/change_notify/change_notify.o.d 
	@${RM} ${OBJECTDIR}/src/change_notify/change_notify.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/change_notify/change_notify.c  -o ${OBJECTDIR}/src/change_notify/change_notify.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/change_notify/change_notify.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/change_notify/change_notify.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/eeprom_emu/DEE\ Emulation\ 16-bit.o: src/eeprom_emu/DEE\ Emulation\ 16-bit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/eeprom_emu" 
	@${RM} "${OBJECTDIR}/src/eeprom_emu/DEE Emulation 16-bit.o".d 
	@${RM} "${OBJECTDIR}/src/eeprom_emu/DEE Emulation 16-bit.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "src/eeprom_emu/DEE Emulation 16-bit.c"  -o "${OBJECTDIR}/src/eeprom_emu/DEE Emulation 16-bit.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/eeprom_emu/DEE Emulation 16-bit.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/eeprom_emu/DEE Emulation 16-bit.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/eeprom_emu/eeprom_emu_test.o: src/eeprom_emu/eeprom_emu_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/eeprom_emu" 
	@${RM} ${OBJECTDIR}/src/eeprom_emu/eeprom_emu_test.o.d 
	@${RM} ${OBJECTDIR}/src/eeprom_emu/eeprom_emu_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/eeprom_emu/eeprom_emu_test.c  -o ${OBJECTDIR}/src/eeprom_emu/eeprom_emu_test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/eeprom_emu/eeprom_emu_test.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/eeprom_emu/eeprom_emu_test.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/rtcc/rtcc_test.o: src/rtcc/rtcc_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/rtcc" 
	@${RM} ${OBJECTDIR}/src/rtcc/rtcc_test.o.d 
	@${RM} ${OBJECTDIR}/src/rtcc/rtcc_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/rtcc/rtcc_test.c  -o ${OBJECTDIR}/src/rtcc/rtcc_test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/rtcc/rtcc_test.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/isr" -I"src/led" -I"src/main" -I"src/isr" -I"src/timer1" -I"src/i2c_master" -I"src/i2c_slave" -I"src/lcd" -I"src/spi_master" -I"src/spi_slave" -I"src/crc_calc" -I"src/sio" -I"src/io_printf" -I"src/reset_source" -I"src/batman" -I"src/capture" -I"src/_adc" -I"src/change_notify" -I"src/eeprom_emu" -I"src/rtcc" -mcci -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/rtcc/rtcc_test.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/src/eeprom_emu/Flash\ Operations.o: src/eeprom_emu/Flash\ Operations.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/eeprom_emu" 
	@${RM} "${OBJECTDIR}/src/eeprom_emu/Flash Operations.o".d 
	@${RM} "${OBJECTDIR}/src/eeprom_emu/Flash Operations.o" 
	${MP_CC} $(MP_EXTRA_AS_PRE)  "src/eeprom_emu/Flash Operations.s"  -o "${OBJECTDIR}/src/eeprom_emu/Flash Operations.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -no-legacy-libc  -Wa,-MD,"${OBJECTDIR}/src/eeprom_emu/Flash Operations.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/src/eeprom_emu/Flash Operations.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/src/eeprom_emu/Flash\ Operations.o: src/eeprom_emu/Flash\ Operations.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/eeprom_emu" 
	@${RM} "${OBJECTDIR}/src/eeprom_emu/Flash Operations.o".d 
	@${RM} "${OBJECTDIR}/src/eeprom_emu/Flash Operations.o" 
	${MP_CC} $(MP_EXTRA_AS_PRE)  "src/eeprom_emu/Flash Operations.s"  -o "${OBJECTDIR}/src/eeprom_emu/Flash Operations.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -no-legacy-libc  -Wa,-MD,"${OBJECTDIR}/src/eeprom_emu/Flash Operations.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/src/eeprom_emu/Flash Operations.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/PIC24FJ128GA010_explorer16.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/PIC24FJ128GA010_explorer16.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -no-legacy-libc   -mreserve=data@0x800:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x825 -mreserve=data@0x826:0x84F   -Wl,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/PIC24FJ128GA010_explorer16.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/PIC24FJ128GA010_explorer16.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -no-legacy-libc  -Wl,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/PIC24FJ128GA010_explorer16.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf  
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
