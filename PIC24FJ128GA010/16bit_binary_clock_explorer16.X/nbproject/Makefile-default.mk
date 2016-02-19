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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/16bit_binary_clock_explorer16.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/16bit_binary_clock_explorer16.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=src/main/main.c src/drivers/sio/sio.c src/drivers/lcd/lcd.c src/drivers/led/led.c src/apps/io_printf/io_printf.c src/drivers/isr/isr.c "src/drivers/ieeprom/DEE Emulation 16-bit.c" "src/drivers/ieeprom/Flash Operations.s" src/drivers/ieeprom/eeprom_emu_test.c src/drivers/lcd/lcd_calendar.c src/drivers/lcd/lcd_test.c src/drivers/button/button.c src/drivers/timer/timer1.c src/apps/calendar/calendar.c src/apps/huvent/fifo_static.c src/apps/huvent/huvent_fsm.c src/apps/huvent/huvent_que.c src/apps/huvent/huvent_fsm_handler.c src/apps/glue/glue.c src/drivers/rtcc/rtcc_calendar.c src/drivers/rtcc/rtcc_calendar_test.c src/apps/temp_sense/temp_sense.c src/apps/temp_sense/temp_sense_test.c src/drivers/temp_adc/temp_adc.c src/apps/huvent/cmd.c src/apps/utils/utils.c src/drivers/xeeprom/spi2.c src/drivers/xeeprom/spieeprom.c src/drivers/xeeprom/SPI_Master_EEPROM.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/src/main/main.o ${OBJECTDIR}/src/drivers/sio/sio.o ${OBJECTDIR}/src/drivers/lcd/lcd.o ${OBJECTDIR}/src/drivers/led/led.o ${OBJECTDIR}/src/apps/io_printf/io_printf.o ${OBJECTDIR}/src/drivers/isr/isr.o "${OBJECTDIR}/src/drivers/ieeprom/DEE Emulation 16-bit.o" "${OBJECTDIR}/src/drivers/ieeprom/Flash Operations.o" ${OBJECTDIR}/src/drivers/ieeprom/eeprom_emu_test.o ${OBJECTDIR}/src/drivers/lcd/lcd_calendar.o ${OBJECTDIR}/src/drivers/lcd/lcd_test.o ${OBJECTDIR}/src/drivers/button/button.o ${OBJECTDIR}/src/drivers/timer/timer1.o ${OBJECTDIR}/src/apps/calendar/calendar.o ${OBJECTDIR}/src/apps/huvent/fifo_static.o ${OBJECTDIR}/src/apps/huvent/huvent_fsm.o ${OBJECTDIR}/src/apps/huvent/huvent_que.o ${OBJECTDIR}/src/apps/huvent/huvent_fsm_handler.o ${OBJECTDIR}/src/apps/glue/glue.o ${OBJECTDIR}/src/drivers/rtcc/rtcc_calendar.o ${OBJECTDIR}/src/drivers/rtcc/rtcc_calendar_test.o ${OBJECTDIR}/src/apps/temp_sense/temp_sense.o ${OBJECTDIR}/src/apps/temp_sense/temp_sense_test.o ${OBJECTDIR}/src/drivers/temp_adc/temp_adc.o ${OBJECTDIR}/src/apps/huvent/cmd.o ${OBJECTDIR}/src/apps/utils/utils.o ${OBJECTDIR}/src/drivers/xeeprom/spi2.o ${OBJECTDIR}/src/drivers/xeeprom/spieeprom.o ${OBJECTDIR}/src/drivers/xeeprom/SPI_Master_EEPROM.o
POSSIBLE_DEPFILES=${OBJECTDIR}/src/main/main.o.d ${OBJECTDIR}/src/drivers/sio/sio.o.d ${OBJECTDIR}/src/drivers/lcd/lcd.o.d ${OBJECTDIR}/src/drivers/led/led.o.d ${OBJECTDIR}/src/apps/io_printf/io_printf.o.d ${OBJECTDIR}/src/drivers/isr/isr.o.d "${OBJECTDIR}/src/drivers/ieeprom/DEE Emulation 16-bit.o.d" "${OBJECTDIR}/src/drivers/ieeprom/Flash Operations.o.d" ${OBJECTDIR}/src/drivers/ieeprom/eeprom_emu_test.o.d ${OBJECTDIR}/src/drivers/lcd/lcd_calendar.o.d ${OBJECTDIR}/src/drivers/lcd/lcd_test.o.d ${OBJECTDIR}/src/drivers/button/button.o.d ${OBJECTDIR}/src/drivers/timer/timer1.o.d ${OBJECTDIR}/src/apps/calendar/calendar.o.d ${OBJECTDIR}/src/apps/huvent/fifo_static.o.d ${OBJECTDIR}/src/apps/huvent/huvent_fsm.o.d ${OBJECTDIR}/src/apps/huvent/huvent_que.o.d ${OBJECTDIR}/src/apps/huvent/huvent_fsm_handler.o.d ${OBJECTDIR}/src/apps/glue/glue.o.d ${OBJECTDIR}/src/drivers/rtcc/rtcc_calendar.o.d ${OBJECTDIR}/src/drivers/rtcc/rtcc_calendar_test.o.d ${OBJECTDIR}/src/apps/temp_sense/temp_sense.o.d ${OBJECTDIR}/src/apps/temp_sense/temp_sense_test.o.d ${OBJECTDIR}/src/drivers/temp_adc/temp_adc.o.d ${OBJECTDIR}/src/apps/huvent/cmd.o.d ${OBJECTDIR}/src/apps/utils/utils.o.d ${OBJECTDIR}/src/drivers/xeeprom/spi2.o.d ${OBJECTDIR}/src/drivers/xeeprom/spieeprom.o.d ${OBJECTDIR}/src/drivers/xeeprom/SPI_Master_EEPROM.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/src/main/main.o ${OBJECTDIR}/src/drivers/sio/sio.o ${OBJECTDIR}/src/drivers/lcd/lcd.o ${OBJECTDIR}/src/drivers/led/led.o ${OBJECTDIR}/src/apps/io_printf/io_printf.o ${OBJECTDIR}/src/drivers/isr/isr.o ${OBJECTDIR}/src/drivers/ieeprom/DEE\ Emulation\ 16-bit.o ${OBJECTDIR}/src/drivers/ieeprom/Flash\ Operations.o ${OBJECTDIR}/src/drivers/ieeprom/eeprom_emu_test.o ${OBJECTDIR}/src/drivers/lcd/lcd_calendar.o ${OBJECTDIR}/src/drivers/lcd/lcd_test.o ${OBJECTDIR}/src/drivers/button/button.o ${OBJECTDIR}/src/drivers/timer/timer1.o ${OBJECTDIR}/src/apps/calendar/calendar.o ${OBJECTDIR}/src/apps/huvent/fifo_static.o ${OBJECTDIR}/src/apps/huvent/huvent_fsm.o ${OBJECTDIR}/src/apps/huvent/huvent_que.o ${OBJECTDIR}/src/apps/huvent/huvent_fsm_handler.o ${OBJECTDIR}/src/apps/glue/glue.o ${OBJECTDIR}/src/drivers/rtcc/rtcc_calendar.o ${OBJECTDIR}/src/drivers/rtcc/rtcc_calendar_test.o ${OBJECTDIR}/src/apps/temp_sense/temp_sense.o ${OBJECTDIR}/src/apps/temp_sense/temp_sense_test.o ${OBJECTDIR}/src/drivers/temp_adc/temp_adc.o ${OBJECTDIR}/src/apps/huvent/cmd.o ${OBJECTDIR}/src/apps/utils/utils.o ${OBJECTDIR}/src/drivers/xeeprom/spi2.o ${OBJECTDIR}/src/drivers/xeeprom/spieeprom.o ${OBJECTDIR}/src/drivers/xeeprom/SPI_Master_EEPROM.o

# Source Files
SOURCEFILES=src/main/main.c src/drivers/sio/sio.c src/drivers/lcd/lcd.c src/drivers/led/led.c src/apps/io_printf/io_printf.c src/drivers/isr/isr.c src/drivers/ieeprom/DEE Emulation 16-bit.c src/drivers/ieeprom/Flash Operations.s src/drivers/ieeprom/eeprom_emu_test.c src/drivers/lcd/lcd_calendar.c src/drivers/lcd/lcd_test.c src/drivers/button/button.c src/drivers/timer/timer1.c src/apps/calendar/calendar.c src/apps/huvent/fifo_static.c src/apps/huvent/huvent_fsm.c src/apps/huvent/huvent_que.c src/apps/huvent/huvent_fsm_handler.c src/apps/glue/glue.c src/drivers/rtcc/rtcc_calendar.c src/drivers/rtcc/rtcc_calendar_test.c src/apps/temp_sense/temp_sense.c src/apps/temp_sense/temp_sense_test.c src/drivers/temp_adc/temp_adc.c src/apps/huvent/cmd.c src/apps/utils/utils.c src/drivers/xeeprom/spi2.c src/drivers/xeeprom/spieeprom.c src/drivers/xeeprom/SPI_Master_EEPROM.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/16bit_binary_clock_explorer16.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ128GA010
MP_LINKER_FILE_OPTION=,--script=p24FJ128GA010.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/src/main/main.o: src/main/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/main" 
	@${RM} ${OBJECTDIR}/src/main/main.o.d 
	@${RM} ${OBJECTDIR}/src/main/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/main/main.c  -o ${OBJECTDIR}/src/main/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/main/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/main/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/drivers/sio/sio.o: src/drivers/sio/sio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/drivers/sio" 
	@${RM} ${OBJECTDIR}/src/drivers/sio/sio.o.d 
	@${RM} ${OBJECTDIR}/src/drivers/sio/sio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/drivers/sio/sio.c  -o ${OBJECTDIR}/src/drivers/sio/sio.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/drivers/sio/sio.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/drivers/sio/sio.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/drivers/lcd/lcd.o: src/drivers/lcd/lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/drivers/lcd" 
	@${RM} ${OBJECTDIR}/src/drivers/lcd/lcd.o.d 
	@${RM} ${OBJECTDIR}/src/drivers/lcd/lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/drivers/lcd/lcd.c  -o ${OBJECTDIR}/src/drivers/lcd/lcd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/drivers/lcd/lcd.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/drivers/lcd/lcd.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/drivers/led/led.o: src/drivers/led/led.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/drivers/led" 
	@${RM} ${OBJECTDIR}/src/drivers/led/led.o.d 
	@${RM} ${OBJECTDIR}/src/drivers/led/led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/drivers/led/led.c  -o ${OBJECTDIR}/src/drivers/led/led.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/drivers/led/led.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/drivers/led/led.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/apps/io_printf/io_printf.o: src/apps/io_printf/io_printf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/apps/io_printf" 
	@${RM} ${OBJECTDIR}/src/apps/io_printf/io_printf.o.d 
	@${RM} ${OBJECTDIR}/src/apps/io_printf/io_printf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/apps/io_printf/io_printf.c  -o ${OBJECTDIR}/src/apps/io_printf/io_printf.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/apps/io_printf/io_printf.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/apps/io_printf/io_printf.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/drivers/isr/isr.o: src/drivers/isr/isr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/drivers/isr" 
	@${RM} ${OBJECTDIR}/src/drivers/isr/isr.o.d 
	@${RM} ${OBJECTDIR}/src/drivers/isr/isr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/drivers/isr/isr.c  -o ${OBJECTDIR}/src/drivers/isr/isr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/drivers/isr/isr.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/drivers/isr/isr.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/drivers/ieeprom/DEE\ Emulation\ 16-bit.o: src/drivers/ieeprom/DEE\ Emulation\ 16-bit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/drivers/ieeprom" 
	@${RM} "${OBJECTDIR}/src/drivers/ieeprom/DEE Emulation 16-bit.o".d 
	@${RM} "${OBJECTDIR}/src/drivers/ieeprom/DEE Emulation 16-bit.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "src/drivers/ieeprom/DEE Emulation 16-bit.c"  -o "${OBJECTDIR}/src/drivers/ieeprom/DEE Emulation 16-bit.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/drivers/ieeprom/DEE Emulation 16-bit.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/drivers/ieeprom/DEE Emulation 16-bit.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/drivers/ieeprom/eeprom_emu_test.o: src/drivers/ieeprom/eeprom_emu_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/drivers/ieeprom" 
	@${RM} ${OBJECTDIR}/src/drivers/ieeprom/eeprom_emu_test.o.d 
	@${RM} ${OBJECTDIR}/src/drivers/ieeprom/eeprom_emu_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/drivers/ieeprom/eeprom_emu_test.c  -o ${OBJECTDIR}/src/drivers/ieeprom/eeprom_emu_test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/drivers/ieeprom/eeprom_emu_test.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/drivers/ieeprom/eeprom_emu_test.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/drivers/lcd/lcd_calendar.o: src/drivers/lcd/lcd_calendar.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/drivers/lcd" 
	@${RM} ${OBJECTDIR}/src/drivers/lcd/lcd_calendar.o.d 
	@${RM} ${OBJECTDIR}/src/drivers/lcd/lcd_calendar.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/drivers/lcd/lcd_calendar.c  -o ${OBJECTDIR}/src/drivers/lcd/lcd_calendar.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/drivers/lcd/lcd_calendar.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/drivers/lcd/lcd_calendar.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/drivers/lcd/lcd_test.o: src/drivers/lcd/lcd_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/drivers/lcd" 
	@${RM} ${OBJECTDIR}/src/drivers/lcd/lcd_test.o.d 
	@${RM} ${OBJECTDIR}/src/drivers/lcd/lcd_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/drivers/lcd/lcd_test.c  -o ${OBJECTDIR}/src/drivers/lcd/lcd_test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/drivers/lcd/lcd_test.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/drivers/lcd/lcd_test.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/drivers/button/button.o: src/drivers/button/button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/drivers/button" 
	@${RM} ${OBJECTDIR}/src/drivers/button/button.o.d 
	@${RM} ${OBJECTDIR}/src/drivers/button/button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/drivers/button/button.c  -o ${OBJECTDIR}/src/drivers/button/button.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/drivers/button/button.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/drivers/button/button.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/drivers/timer/timer1.o: src/drivers/timer/timer1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/drivers/timer" 
	@${RM} ${OBJECTDIR}/src/drivers/timer/timer1.o.d 
	@${RM} ${OBJECTDIR}/src/drivers/timer/timer1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/drivers/timer/timer1.c  -o ${OBJECTDIR}/src/drivers/timer/timer1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/drivers/timer/timer1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/drivers/timer/timer1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/apps/calendar/calendar.o: src/apps/calendar/calendar.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/apps/calendar" 
	@${RM} ${OBJECTDIR}/src/apps/calendar/calendar.o.d 
	@${RM} ${OBJECTDIR}/src/apps/calendar/calendar.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/apps/calendar/calendar.c  -o ${OBJECTDIR}/src/apps/calendar/calendar.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/apps/calendar/calendar.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/apps/calendar/calendar.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/apps/huvent/fifo_static.o: src/apps/huvent/fifo_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/apps/huvent" 
	@${RM} ${OBJECTDIR}/src/apps/huvent/fifo_static.o.d 
	@${RM} ${OBJECTDIR}/src/apps/huvent/fifo_static.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/apps/huvent/fifo_static.c  -o ${OBJECTDIR}/src/apps/huvent/fifo_static.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/apps/huvent/fifo_static.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/apps/huvent/fifo_static.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/apps/huvent/huvent_fsm.o: src/apps/huvent/huvent_fsm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/apps/huvent" 
	@${RM} ${OBJECTDIR}/src/apps/huvent/huvent_fsm.o.d 
	@${RM} ${OBJECTDIR}/src/apps/huvent/huvent_fsm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/apps/huvent/huvent_fsm.c  -o ${OBJECTDIR}/src/apps/huvent/huvent_fsm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/apps/huvent/huvent_fsm.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/apps/huvent/huvent_fsm.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/apps/huvent/huvent_que.o: src/apps/huvent/huvent_que.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/apps/huvent" 
	@${RM} ${OBJECTDIR}/src/apps/huvent/huvent_que.o.d 
	@${RM} ${OBJECTDIR}/src/apps/huvent/huvent_que.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/apps/huvent/huvent_que.c  -o ${OBJECTDIR}/src/apps/huvent/huvent_que.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/apps/huvent/huvent_que.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/apps/huvent/huvent_que.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/apps/huvent/huvent_fsm_handler.o: src/apps/huvent/huvent_fsm_handler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/apps/huvent" 
	@${RM} ${OBJECTDIR}/src/apps/huvent/huvent_fsm_handler.o.d 
	@${RM} ${OBJECTDIR}/src/apps/huvent/huvent_fsm_handler.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/apps/huvent/huvent_fsm_handler.c  -o ${OBJECTDIR}/src/apps/huvent/huvent_fsm_handler.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/apps/huvent/huvent_fsm_handler.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/apps/huvent/huvent_fsm_handler.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/apps/glue/glue.o: src/apps/glue/glue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/apps/glue" 
	@${RM} ${OBJECTDIR}/src/apps/glue/glue.o.d 
	@${RM} ${OBJECTDIR}/src/apps/glue/glue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/apps/glue/glue.c  -o ${OBJECTDIR}/src/apps/glue/glue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/apps/glue/glue.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/apps/glue/glue.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/drivers/rtcc/rtcc_calendar.o: src/drivers/rtcc/rtcc_calendar.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/drivers/rtcc" 
	@${RM} ${OBJECTDIR}/src/drivers/rtcc/rtcc_calendar.o.d 
	@${RM} ${OBJECTDIR}/src/drivers/rtcc/rtcc_calendar.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/drivers/rtcc/rtcc_calendar.c  -o ${OBJECTDIR}/src/drivers/rtcc/rtcc_calendar.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/drivers/rtcc/rtcc_calendar.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/drivers/rtcc/rtcc_calendar.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/drivers/rtcc/rtcc_calendar_test.o: src/drivers/rtcc/rtcc_calendar_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/drivers/rtcc" 
	@${RM} ${OBJECTDIR}/src/drivers/rtcc/rtcc_calendar_test.o.d 
	@${RM} ${OBJECTDIR}/src/drivers/rtcc/rtcc_calendar_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/drivers/rtcc/rtcc_calendar_test.c  -o ${OBJECTDIR}/src/drivers/rtcc/rtcc_calendar_test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/drivers/rtcc/rtcc_calendar_test.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/drivers/rtcc/rtcc_calendar_test.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/apps/temp_sense/temp_sense.o: src/apps/temp_sense/temp_sense.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/apps/temp_sense" 
	@${RM} ${OBJECTDIR}/src/apps/temp_sense/temp_sense.o.d 
	@${RM} ${OBJECTDIR}/src/apps/temp_sense/temp_sense.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/apps/temp_sense/temp_sense.c  -o ${OBJECTDIR}/src/apps/temp_sense/temp_sense.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/apps/temp_sense/temp_sense.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/apps/temp_sense/temp_sense.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/apps/temp_sense/temp_sense_test.o: src/apps/temp_sense/temp_sense_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/apps/temp_sense" 
	@${RM} ${OBJECTDIR}/src/apps/temp_sense/temp_sense_test.o.d 
	@${RM} ${OBJECTDIR}/src/apps/temp_sense/temp_sense_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/apps/temp_sense/temp_sense_test.c  -o ${OBJECTDIR}/src/apps/temp_sense/temp_sense_test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/apps/temp_sense/temp_sense_test.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/apps/temp_sense/temp_sense_test.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/drivers/temp_adc/temp_adc.o: src/drivers/temp_adc/temp_adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/drivers/temp_adc" 
	@${RM} ${OBJECTDIR}/src/drivers/temp_adc/temp_adc.o.d 
	@${RM} ${OBJECTDIR}/src/drivers/temp_adc/temp_adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/drivers/temp_adc/temp_adc.c  -o ${OBJECTDIR}/src/drivers/temp_adc/temp_adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/drivers/temp_adc/temp_adc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/drivers/temp_adc/temp_adc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/apps/huvent/cmd.o: src/apps/huvent/cmd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/apps/huvent" 
	@${RM} ${OBJECTDIR}/src/apps/huvent/cmd.o.d 
	@${RM} ${OBJECTDIR}/src/apps/huvent/cmd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/apps/huvent/cmd.c  -o ${OBJECTDIR}/src/apps/huvent/cmd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/apps/huvent/cmd.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/apps/huvent/cmd.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/apps/utils/utils.o: src/apps/utils/utils.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/apps/utils" 
	@${RM} ${OBJECTDIR}/src/apps/utils/utils.o.d 
	@${RM} ${OBJECTDIR}/src/apps/utils/utils.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/apps/utils/utils.c  -o ${OBJECTDIR}/src/apps/utils/utils.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/apps/utils/utils.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/apps/utils/utils.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/drivers/xeeprom/spi2.o: src/drivers/xeeprom/spi2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/drivers/xeeprom" 
	@${RM} ${OBJECTDIR}/src/drivers/xeeprom/spi2.o.d 
	@${RM} ${OBJECTDIR}/src/drivers/xeeprom/spi2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/drivers/xeeprom/spi2.c  -o ${OBJECTDIR}/src/drivers/xeeprom/spi2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/drivers/xeeprom/spi2.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/drivers/xeeprom/spi2.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/drivers/xeeprom/spieeprom.o: src/drivers/xeeprom/spieeprom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/drivers/xeeprom" 
	@${RM} ${OBJECTDIR}/src/drivers/xeeprom/spieeprom.o.d 
	@${RM} ${OBJECTDIR}/src/drivers/xeeprom/spieeprom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/drivers/xeeprom/spieeprom.c  -o ${OBJECTDIR}/src/drivers/xeeprom/spieeprom.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/drivers/xeeprom/spieeprom.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/drivers/xeeprom/spieeprom.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/drivers/xeeprom/SPI_Master_EEPROM.o: src/drivers/xeeprom/SPI_Master_EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/drivers/xeeprom" 
	@${RM} ${OBJECTDIR}/src/drivers/xeeprom/SPI_Master_EEPROM.o.d 
	@${RM} ${OBJECTDIR}/src/drivers/xeeprom/SPI_Master_EEPROM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/drivers/xeeprom/SPI_Master_EEPROM.c  -o ${OBJECTDIR}/src/drivers/xeeprom/SPI_Master_EEPROM.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/drivers/xeeprom/SPI_Master_EEPROM.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/drivers/xeeprom/SPI_Master_EEPROM.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/src/main/main.o: src/main/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/main" 
	@${RM} ${OBJECTDIR}/src/main/main.o.d 
	@${RM} ${OBJECTDIR}/src/main/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/main/main.c  -o ${OBJECTDIR}/src/main/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/main/main.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/main/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/drivers/sio/sio.o: src/drivers/sio/sio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/drivers/sio" 
	@${RM} ${OBJECTDIR}/src/drivers/sio/sio.o.d 
	@${RM} ${OBJECTDIR}/src/drivers/sio/sio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/drivers/sio/sio.c  -o ${OBJECTDIR}/src/drivers/sio/sio.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/drivers/sio/sio.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/drivers/sio/sio.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/drivers/lcd/lcd.o: src/drivers/lcd/lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/drivers/lcd" 
	@${RM} ${OBJECTDIR}/src/drivers/lcd/lcd.o.d 
	@${RM} ${OBJECTDIR}/src/drivers/lcd/lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/drivers/lcd/lcd.c  -o ${OBJECTDIR}/src/drivers/lcd/lcd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/drivers/lcd/lcd.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/drivers/lcd/lcd.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/drivers/led/led.o: src/drivers/led/led.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/drivers/led" 
	@${RM} ${OBJECTDIR}/src/drivers/led/led.o.d 
	@${RM} ${OBJECTDIR}/src/drivers/led/led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/drivers/led/led.c  -o ${OBJECTDIR}/src/drivers/led/led.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/drivers/led/led.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/drivers/led/led.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/apps/io_printf/io_printf.o: src/apps/io_printf/io_printf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/apps/io_printf" 
	@${RM} ${OBJECTDIR}/src/apps/io_printf/io_printf.o.d 
	@${RM} ${OBJECTDIR}/src/apps/io_printf/io_printf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/apps/io_printf/io_printf.c  -o ${OBJECTDIR}/src/apps/io_printf/io_printf.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/apps/io_printf/io_printf.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/apps/io_printf/io_printf.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/drivers/isr/isr.o: src/drivers/isr/isr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/drivers/isr" 
	@${RM} ${OBJECTDIR}/src/drivers/isr/isr.o.d 
	@${RM} ${OBJECTDIR}/src/drivers/isr/isr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/drivers/isr/isr.c  -o ${OBJECTDIR}/src/drivers/isr/isr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/drivers/isr/isr.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/drivers/isr/isr.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/drivers/ieeprom/DEE\ Emulation\ 16-bit.o: src/drivers/ieeprom/DEE\ Emulation\ 16-bit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/drivers/ieeprom" 
	@${RM} "${OBJECTDIR}/src/drivers/ieeprom/DEE Emulation 16-bit.o".d 
	@${RM} "${OBJECTDIR}/src/drivers/ieeprom/DEE Emulation 16-bit.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "src/drivers/ieeprom/DEE Emulation 16-bit.c"  -o "${OBJECTDIR}/src/drivers/ieeprom/DEE Emulation 16-bit.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/drivers/ieeprom/DEE Emulation 16-bit.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/drivers/ieeprom/DEE Emulation 16-bit.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/drivers/ieeprom/eeprom_emu_test.o: src/drivers/ieeprom/eeprom_emu_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/drivers/ieeprom" 
	@${RM} ${OBJECTDIR}/src/drivers/ieeprom/eeprom_emu_test.o.d 
	@${RM} ${OBJECTDIR}/src/drivers/ieeprom/eeprom_emu_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/drivers/ieeprom/eeprom_emu_test.c  -o ${OBJECTDIR}/src/drivers/ieeprom/eeprom_emu_test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/drivers/ieeprom/eeprom_emu_test.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/drivers/ieeprom/eeprom_emu_test.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/drivers/lcd/lcd_calendar.o: src/drivers/lcd/lcd_calendar.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/drivers/lcd" 
	@${RM} ${OBJECTDIR}/src/drivers/lcd/lcd_calendar.o.d 
	@${RM} ${OBJECTDIR}/src/drivers/lcd/lcd_calendar.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/drivers/lcd/lcd_calendar.c  -o ${OBJECTDIR}/src/drivers/lcd/lcd_calendar.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/drivers/lcd/lcd_calendar.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/drivers/lcd/lcd_calendar.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/drivers/lcd/lcd_test.o: src/drivers/lcd/lcd_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/drivers/lcd" 
	@${RM} ${OBJECTDIR}/src/drivers/lcd/lcd_test.o.d 
	@${RM} ${OBJECTDIR}/src/drivers/lcd/lcd_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/drivers/lcd/lcd_test.c  -o ${OBJECTDIR}/src/drivers/lcd/lcd_test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/drivers/lcd/lcd_test.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/drivers/lcd/lcd_test.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/drivers/button/button.o: src/drivers/button/button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/drivers/button" 
	@${RM} ${OBJECTDIR}/src/drivers/button/button.o.d 
	@${RM} ${OBJECTDIR}/src/drivers/button/button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/drivers/button/button.c  -o ${OBJECTDIR}/src/drivers/button/button.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/drivers/button/button.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/drivers/button/button.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/drivers/timer/timer1.o: src/drivers/timer/timer1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/drivers/timer" 
	@${RM} ${OBJECTDIR}/src/drivers/timer/timer1.o.d 
	@${RM} ${OBJECTDIR}/src/drivers/timer/timer1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/drivers/timer/timer1.c  -o ${OBJECTDIR}/src/drivers/timer/timer1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/drivers/timer/timer1.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/drivers/timer/timer1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/apps/calendar/calendar.o: src/apps/calendar/calendar.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/apps/calendar" 
	@${RM} ${OBJECTDIR}/src/apps/calendar/calendar.o.d 
	@${RM} ${OBJECTDIR}/src/apps/calendar/calendar.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/apps/calendar/calendar.c  -o ${OBJECTDIR}/src/apps/calendar/calendar.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/apps/calendar/calendar.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/apps/calendar/calendar.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/apps/huvent/fifo_static.o: src/apps/huvent/fifo_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/apps/huvent" 
	@${RM} ${OBJECTDIR}/src/apps/huvent/fifo_static.o.d 
	@${RM} ${OBJECTDIR}/src/apps/huvent/fifo_static.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/apps/huvent/fifo_static.c  -o ${OBJECTDIR}/src/apps/huvent/fifo_static.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/apps/huvent/fifo_static.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/apps/huvent/fifo_static.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/apps/huvent/huvent_fsm.o: src/apps/huvent/huvent_fsm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/apps/huvent" 
	@${RM} ${OBJECTDIR}/src/apps/huvent/huvent_fsm.o.d 
	@${RM} ${OBJECTDIR}/src/apps/huvent/huvent_fsm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/apps/huvent/huvent_fsm.c  -o ${OBJECTDIR}/src/apps/huvent/huvent_fsm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/apps/huvent/huvent_fsm.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/apps/huvent/huvent_fsm.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/apps/huvent/huvent_que.o: src/apps/huvent/huvent_que.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/apps/huvent" 
	@${RM} ${OBJECTDIR}/src/apps/huvent/huvent_que.o.d 
	@${RM} ${OBJECTDIR}/src/apps/huvent/huvent_que.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/apps/huvent/huvent_que.c  -o ${OBJECTDIR}/src/apps/huvent/huvent_que.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/apps/huvent/huvent_que.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/apps/huvent/huvent_que.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/apps/huvent/huvent_fsm_handler.o: src/apps/huvent/huvent_fsm_handler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/apps/huvent" 
	@${RM} ${OBJECTDIR}/src/apps/huvent/huvent_fsm_handler.o.d 
	@${RM} ${OBJECTDIR}/src/apps/huvent/huvent_fsm_handler.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/apps/huvent/huvent_fsm_handler.c  -o ${OBJECTDIR}/src/apps/huvent/huvent_fsm_handler.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/apps/huvent/huvent_fsm_handler.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/apps/huvent/huvent_fsm_handler.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/apps/glue/glue.o: src/apps/glue/glue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/apps/glue" 
	@${RM} ${OBJECTDIR}/src/apps/glue/glue.o.d 
	@${RM} ${OBJECTDIR}/src/apps/glue/glue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/apps/glue/glue.c  -o ${OBJECTDIR}/src/apps/glue/glue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/apps/glue/glue.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/apps/glue/glue.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/drivers/rtcc/rtcc_calendar.o: src/drivers/rtcc/rtcc_calendar.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/drivers/rtcc" 
	@${RM} ${OBJECTDIR}/src/drivers/rtcc/rtcc_calendar.o.d 
	@${RM} ${OBJECTDIR}/src/drivers/rtcc/rtcc_calendar.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/drivers/rtcc/rtcc_calendar.c  -o ${OBJECTDIR}/src/drivers/rtcc/rtcc_calendar.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/drivers/rtcc/rtcc_calendar.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/drivers/rtcc/rtcc_calendar.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/drivers/rtcc/rtcc_calendar_test.o: src/drivers/rtcc/rtcc_calendar_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/drivers/rtcc" 
	@${RM} ${OBJECTDIR}/src/drivers/rtcc/rtcc_calendar_test.o.d 
	@${RM} ${OBJECTDIR}/src/drivers/rtcc/rtcc_calendar_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/drivers/rtcc/rtcc_calendar_test.c  -o ${OBJECTDIR}/src/drivers/rtcc/rtcc_calendar_test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/drivers/rtcc/rtcc_calendar_test.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/drivers/rtcc/rtcc_calendar_test.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/apps/temp_sense/temp_sense.o: src/apps/temp_sense/temp_sense.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/apps/temp_sense" 
	@${RM} ${OBJECTDIR}/src/apps/temp_sense/temp_sense.o.d 
	@${RM} ${OBJECTDIR}/src/apps/temp_sense/temp_sense.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/apps/temp_sense/temp_sense.c  -o ${OBJECTDIR}/src/apps/temp_sense/temp_sense.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/apps/temp_sense/temp_sense.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/apps/temp_sense/temp_sense.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/apps/temp_sense/temp_sense_test.o: src/apps/temp_sense/temp_sense_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/apps/temp_sense" 
	@${RM} ${OBJECTDIR}/src/apps/temp_sense/temp_sense_test.o.d 
	@${RM} ${OBJECTDIR}/src/apps/temp_sense/temp_sense_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/apps/temp_sense/temp_sense_test.c  -o ${OBJECTDIR}/src/apps/temp_sense/temp_sense_test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/apps/temp_sense/temp_sense_test.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/apps/temp_sense/temp_sense_test.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/drivers/temp_adc/temp_adc.o: src/drivers/temp_adc/temp_adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/drivers/temp_adc" 
	@${RM} ${OBJECTDIR}/src/drivers/temp_adc/temp_adc.o.d 
	@${RM} ${OBJECTDIR}/src/drivers/temp_adc/temp_adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/drivers/temp_adc/temp_adc.c  -o ${OBJECTDIR}/src/drivers/temp_adc/temp_adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/drivers/temp_adc/temp_adc.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/drivers/temp_adc/temp_adc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/apps/huvent/cmd.o: src/apps/huvent/cmd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/apps/huvent" 
	@${RM} ${OBJECTDIR}/src/apps/huvent/cmd.o.d 
	@${RM} ${OBJECTDIR}/src/apps/huvent/cmd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/apps/huvent/cmd.c  -o ${OBJECTDIR}/src/apps/huvent/cmd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/apps/huvent/cmd.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/apps/huvent/cmd.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/apps/utils/utils.o: src/apps/utils/utils.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/apps/utils" 
	@${RM} ${OBJECTDIR}/src/apps/utils/utils.o.d 
	@${RM} ${OBJECTDIR}/src/apps/utils/utils.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/apps/utils/utils.c  -o ${OBJECTDIR}/src/apps/utils/utils.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/apps/utils/utils.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/apps/utils/utils.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/drivers/xeeprom/spi2.o: src/drivers/xeeprom/spi2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/drivers/xeeprom" 
	@${RM} ${OBJECTDIR}/src/drivers/xeeprom/spi2.o.d 
	@${RM} ${OBJECTDIR}/src/drivers/xeeprom/spi2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/drivers/xeeprom/spi2.c  -o ${OBJECTDIR}/src/drivers/xeeprom/spi2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/drivers/xeeprom/spi2.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/drivers/xeeprom/spi2.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/drivers/xeeprom/spieeprom.o: src/drivers/xeeprom/spieeprom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/drivers/xeeprom" 
	@${RM} ${OBJECTDIR}/src/drivers/xeeprom/spieeprom.o.d 
	@${RM} ${OBJECTDIR}/src/drivers/xeeprom/spieeprom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/drivers/xeeprom/spieeprom.c  -o ${OBJECTDIR}/src/drivers/xeeprom/spieeprom.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/drivers/xeeprom/spieeprom.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/drivers/xeeprom/spieeprom.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/drivers/xeeprom/SPI_Master_EEPROM.o: src/drivers/xeeprom/SPI_Master_EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/drivers/xeeprom" 
	@${RM} ${OBJECTDIR}/src/drivers/xeeprom/SPI_Master_EEPROM.o.d 
	@${RM} ${OBJECTDIR}/src/drivers/xeeprom/SPI_Master_EEPROM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/drivers/xeeprom/SPI_Master_EEPROM.c  -o ${OBJECTDIR}/src/drivers/xeeprom/SPI_Master_EEPROM.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/drivers/xeeprom/SPI_Master_EEPROM.o.d"        -g -omf=elf -no-legacy-libc  -O0 -I"src/main" -I"src/drivers/button" -I"src/drivers/ieeprom" -I"src/drivers/lcd" -I"src/drivers/led" -I"src/drivers/rtcc" -I"src/drivers/rtcc" -I"src/drivers/sio" -I"src/drivers/xeeprom" -I"src/apps/io_printf" -I"src/drivers/isr" -I"src/apps/calendar" -I"src/apps/huvent" -I"src/apps/glue" -I"src/apps/temp_sense" -I"src/drivers/temp_adc" -I"src/apps/utils" -I"src/drivers/timer" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/drivers/xeeprom/SPI_Master_EEPROM.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/src/drivers/ieeprom/Flash\ Operations.o: src/drivers/ieeprom/Flash\ Operations.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/drivers/ieeprom" 
	@${RM} "${OBJECTDIR}/src/drivers/ieeprom/Flash Operations.o".d 
	@${RM} "${OBJECTDIR}/src/drivers/ieeprom/Flash Operations.o" 
	${MP_CC} $(MP_EXTRA_AS_PRE)  "src/drivers/ieeprom/Flash Operations.s"  -o "${OBJECTDIR}/src/drivers/ieeprom/Flash Operations.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -no-legacy-libc  -Wa,-MD,"${OBJECTDIR}/src/drivers/ieeprom/Flash Operations.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/src/drivers/ieeprom/Flash Operations.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/src/drivers/ieeprom/Flash\ Operations.o: src/drivers/ieeprom/Flash\ Operations.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/drivers/ieeprom" 
	@${RM} "${OBJECTDIR}/src/drivers/ieeprom/Flash Operations.o".d 
	@${RM} "${OBJECTDIR}/src/drivers/ieeprom/Flash Operations.o" 
	${MP_CC} $(MP_EXTRA_AS_PRE)  "src/drivers/ieeprom/Flash Operations.s"  -o "${OBJECTDIR}/src/drivers/ieeprom/Flash Operations.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -no-legacy-libc  -Wa,-MD,"${OBJECTDIR}/src/drivers/ieeprom/Flash Operations.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/src/drivers/ieeprom/Flash Operations.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/16bit_binary_clock_explorer16.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/16bit_binary_clock_explorer16.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -no-legacy-libc   -mreserve=data@0x800:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x825 -mreserve=data@0x826:0x84F   -Wl,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/16bit_binary_clock_explorer16.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/16bit_binary_clock_explorer16.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -no-legacy-libc  -Wl,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/16bit_binary_clock_explorer16.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf  
	
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
