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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/pic32mx.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/pic32mx.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=src/main/config.c src/main/main.c src/isr/isr.c src/led/led.c src/timer/timer1.c src/sio/sio.c src/io_printf/io_printf.c src/i2c_master/i2c_master.c src/i2c_master/i2c_master_test.c src/spi_master/spi_master.c src/spi_master/spi_master_test.c src/spi_slave/spi_slave.c src/spi_slave/spi_slave_test.c src/rtcc_plib/rtcc_plib.c src/rtcc_plib/rtcc_plib_test.c src/temp_sense/temp_sense.c src/temp_sense/temp_sense_test.c src/_adc/temp_adc.c src/pic32mx_lab/pic32mx_lab_spi.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/src/main/config.o ${OBJECTDIR}/src/main/main.o ${OBJECTDIR}/src/isr/isr.o ${OBJECTDIR}/src/led/led.o ${OBJECTDIR}/src/timer/timer1.o ${OBJECTDIR}/src/sio/sio.o ${OBJECTDIR}/src/io_printf/io_printf.o ${OBJECTDIR}/src/i2c_master/i2c_master.o ${OBJECTDIR}/src/i2c_master/i2c_master_test.o ${OBJECTDIR}/src/spi_master/spi_master.o ${OBJECTDIR}/src/spi_master/spi_master_test.o ${OBJECTDIR}/src/spi_slave/spi_slave.o ${OBJECTDIR}/src/spi_slave/spi_slave_test.o ${OBJECTDIR}/src/rtcc_plib/rtcc_plib.o ${OBJECTDIR}/src/rtcc_plib/rtcc_plib_test.o ${OBJECTDIR}/src/temp_sense/temp_sense.o ${OBJECTDIR}/src/temp_sense/temp_sense_test.o ${OBJECTDIR}/src/_adc/temp_adc.o ${OBJECTDIR}/src/pic32mx_lab/pic32mx_lab_spi.o
POSSIBLE_DEPFILES=${OBJECTDIR}/src/main/config.o.d ${OBJECTDIR}/src/main/main.o.d ${OBJECTDIR}/src/isr/isr.o.d ${OBJECTDIR}/src/led/led.o.d ${OBJECTDIR}/src/timer/timer1.o.d ${OBJECTDIR}/src/sio/sio.o.d ${OBJECTDIR}/src/io_printf/io_printf.o.d ${OBJECTDIR}/src/i2c_master/i2c_master.o.d ${OBJECTDIR}/src/i2c_master/i2c_master_test.o.d ${OBJECTDIR}/src/spi_master/spi_master.o.d ${OBJECTDIR}/src/spi_master/spi_master_test.o.d ${OBJECTDIR}/src/spi_slave/spi_slave.o.d ${OBJECTDIR}/src/spi_slave/spi_slave_test.o.d ${OBJECTDIR}/src/rtcc_plib/rtcc_plib.o.d ${OBJECTDIR}/src/rtcc_plib/rtcc_plib_test.o.d ${OBJECTDIR}/src/temp_sense/temp_sense.o.d ${OBJECTDIR}/src/temp_sense/temp_sense_test.o.d ${OBJECTDIR}/src/_adc/temp_adc.o.d ${OBJECTDIR}/src/pic32mx_lab/pic32mx_lab_spi.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/src/main/config.o ${OBJECTDIR}/src/main/main.o ${OBJECTDIR}/src/isr/isr.o ${OBJECTDIR}/src/led/led.o ${OBJECTDIR}/src/timer/timer1.o ${OBJECTDIR}/src/sio/sio.o ${OBJECTDIR}/src/io_printf/io_printf.o ${OBJECTDIR}/src/i2c_master/i2c_master.o ${OBJECTDIR}/src/i2c_master/i2c_master_test.o ${OBJECTDIR}/src/spi_master/spi_master.o ${OBJECTDIR}/src/spi_master/spi_master_test.o ${OBJECTDIR}/src/spi_slave/spi_slave.o ${OBJECTDIR}/src/spi_slave/spi_slave_test.o ${OBJECTDIR}/src/rtcc_plib/rtcc_plib.o ${OBJECTDIR}/src/rtcc_plib/rtcc_plib_test.o ${OBJECTDIR}/src/temp_sense/temp_sense.o ${OBJECTDIR}/src/temp_sense/temp_sense_test.o ${OBJECTDIR}/src/_adc/temp_adc.o ${OBJECTDIR}/src/pic32mx_lab/pic32mx_lab_spi.o

# Source Files
SOURCEFILES=src/main/config.c src/main/main.c src/isr/isr.c src/led/led.c src/timer/timer1.c src/sio/sio.c src/io_printf/io_printf.c src/i2c_master/i2c_master.c src/i2c_master/i2c_master_test.c src/spi_master/spi_master.c src/spi_master/spi_master_test.c src/spi_slave/spi_slave.c src/spi_slave/spi_slave_test.c src/rtcc_plib/rtcc_plib.c src/rtcc_plib/rtcc_plib_test.c src/temp_sense/temp_sense.c src/temp_sense/temp_sense_test.c src/_adc/temp_adc.c src/pic32mx_lab/pic32mx_lab_spi.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/pic32mx.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/src/main/config.o: src/main/config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/main" 
	@${RM} ${OBJECTDIR}/src/main/config.o.d 
	@${RM} ${OBJECTDIR}/src/main/config.o 
	@${FIXDEPS} "${OBJECTDIR}/src/main/config.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/main/config.o.d" -o ${OBJECTDIR}/src/main/config.o src/main/config.c     
	
${OBJECTDIR}/src/main/main.o: src/main/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/main" 
	@${RM} ${OBJECTDIR}/src/main/main.o.d 
	@${RM} ${OBJECTDIR}/src/main/main.o 
	@${FIXDEPS} "${OBJECTDIR}/src/main/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/main/main.o.d" -o ${OBJECTDIR}/src/main/main.o src/main/main.c     
	
${OBJECTDIR}/src/isr/isr.o: src/isr/isr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/isr" 
	@${RM} ${OBJECTDIR}/src/isr/isr.o.d 
	@${RM} ${OBJECTDIR}/src/isr/isr.o 
	@${FIXDEPS} "${OBJECTDIR}/src/isr/isr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/isr/isr.o.d" -o ${OBJECTDIR}/src/isr/isr.o src/isr/isr.c     
	
${OBJECTDIR}/src/led/led.o: src/led/led.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/led" 
	@${RM} ${OBJECTDIR}/src/led/led.o.d 
	@${RM} ${OBJECTDIR}/src/led/led.o 
	@${FIXDEPS} "${OBJECTDIR}/src/led/led.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/led/led.o.d" -o ${OBJECTDIR}/src/led/led.o src/led/led.c     
	
${OBJECTDIR}/src/timer/timer1.o: src/timer/timer1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/timer" 
	@${RM} ${OBJECTDIR}/src/timer/timer1.o.d 
	@${RM} ${OBJECTDIR}/src/timer/timer1.o 
	@${FIXDEPS} "${OBJECTDIR}/src/timer/timer1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/timer/timer1.o.d" -o ${OBJECTDIR}/src/timer/timer1.o src/timer/timer1.c     
	
${OBJECTDIR}/src/sio/sio.o: src/sio/sio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/sio" 
	@${RM} ${OBJECTDIR}/src/sio/sio.o.d 
	@${RM} ${OBJECTDIR}/src/sio/sio.o 
	@${FIXDEPS} "${OBJECTDIR}/src/sio/sio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/sio/sio.o.d" -o ${OBJECTDIR}/src/sio/sio.o src/sio/sio.c     
	
${OBJECTDIR}/src/io_printf/io_printf.o: src/io_printf/io_printf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/io_printf" 
	@${RM} ${OBJECTDIR}/src/io_printf/io_printf.o.d 
	@${RM} ${OBJECTDIR}/src/io_printf/io_printf.o 
	@${FIXDEPS} "${OBJECTDIR}/src/io_printf/io_printf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/io_printf/io_printf.o.d" -o ${OBJECTDIR}/src/io_printf/io_printf.o src/io_printf/io_printf.c     
	
${OBJECTDIR}/src/i2c_master/i2c_master.o: src/i2c_master/i2c_master.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/i2c_master" 
	@${RM} ${OBJECTDIR}/src/i2c_master/i2c_master.o.d 
	@${RM} ${OBJECTDIR}/src/i2c_master/i2c_master.o 
	@${FIXDEPS} "${OBJECTDIR}/src/i2c_master/i2c_master.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/i2c_master/i2c_master.o.d" -o ${OBJECTDIR}/src/i2c_master/i2c_master.o src/i2c_master/i2c_master.c     
	
${OBJECTDIR}/src/i2c_master/i2c_master_test.o: src/i2c_master/i2c_master_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/i2c_master" 
	@${RM} ${OBJECTDIR}/src/i2c_master/i2c_master_test.o.d 
	@${RM} ${OBJECTDIR}/src/i2c_master/i2c_master_test.o 
	@${FIXDEPS} "${OBJECTDIR}/src/i2c_master/i2c_master_test.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/i2c_master/i2c_master_test.o.d" -o ${OBJECTDIR}/src/i2c_master/i2c_master_test.o src/i2c_master/i2c_master_test.c     
	
${OBJECTDIR}/src/spi_master/spi_master.o: src/spi_master/spi_master.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/spi_master" 
	@${RM} ${OBJECTDIR}/src/spi_master/spi_master.o.d 
	@${RM} ${OBJECTDIR}/src/spi_master/spi_master.o 
	@${FIXDEPS} "${OBJECTDIR}/src/spi_master/spi_master.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/spi_master/spi_master.o.d" -o ${OBJECTDIR}/src/spi_master/spi_master.o src/spi_master/spi_master.c     
	
${OBJECTDIR}/src/spi_master/spi_master_test.o: src/spi_master/spi_master_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/spi_master" 
	@${RM} ${OBJECTDIR}/src/spi_master/spi_master_test.o.d 
	@${RM} ${OBJECTDIR}/src/spi_master/spi_master_test.o 
	@${FIXDEPS} "${OBJECTDIR}/src/spi_master/spi_master_test.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/spi_master/spi_master_test.o.d" -o ${OBJECTDIR}/src/spi_master/spi_master_test.o src/spi_master/spi_master_test.c     
	
${OBJECTDIR}/src/spi_slave/spi_slave.o: src/spi_slave/spi_slave.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/spi_slave" 
	@${RM} ${OBJECTDIR}/src/spi_slave/spi_slave.o.d 
	@${RM} ${OBJECTDIR}/src/spi_slave/spi_slave.o 
	@${FIXDEPS} "${OBJECTDIR}/src/spi_slave/spi_slave.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/spi_slave/spi_slave.o.d" -o ${OBJECTDIR}/src/spi_slave/spi_slave.o src/spi_slave/spi_slave.c     
	
${OBJECTDIR}/src/spi_slave/spi_slave_test.o: src/spi_slave/spi_slave_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/spi_slave" 
	@${RM} ${OBJECTDIR}/src/spi_slave/spi_slave_test.o.d 
	@${RM} ${OBJECTDIR}/src/spi_slave/spi_slave_test.o 
	@${FIXDEPS} "${OBJECTDIR}/src/spi_slave/spi_slave_test.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/spi_slave/spi_slave_test.o.d" -o ${OBJECTDIR}/src/spi_slave/spi_slave_test.o src/spi_slave/spi_slave_test.c     
	
${OBJECTDIR}/src/rtcc_plib/rtcc_plib.o: src/rtcc_plib/rtcc_plib.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/rtcc_plib" 
	@${RM} ${OBJECTDIR}/src/rtcc_plib/rtcc_plib.o.d 
	@${RM} ${OBJECTDIR}/src/rtcc_plib/rtcc_plib.o 
	@${FIXDEPS} "${OBJECTDIR}/src/rtcc_plib/rtcc_plib.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/rtcc_plib/rtcc_plib.o.d" -o ${OBJECTDIR}/src/rtcc_plib/rtcc_plib.o src/rtcc_plib/rtcc_plib.c     
	
${OBJECTDIR}/src/rtcc_plib/rtcc_plib_test.o: src/rtcc_plib/rtcc_plib_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/rtcc_plib" 
	@${RM} ${OBJECTDIR}/src/rtcc_plib/rtcc_plib_test.o.d 
	@${RM} ${OBJECTDIR}/src/rtcc_plib/rtcc_plib_test.o 
	@${FIXDEPS} "${OBJECTDIR}/src/rtcc_plib/rtcc_plib_test.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/rtcc_plib/rtcc_plib_test.o.d" -o ${OBJECTDIR}/src/rtcc_plib/rtcc_plib_test.o src/rtcc_plib/rtcc_plib_test.c     
	
${OBJECTDIR}/src/temp_sense/temp_sense.o: src/temp_sense/temp_sense.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/temp_sense" 
	@${RM} ${OBJECTDIR}/src/temp_sense/temp_sense.o.d 
	@${RM} ${OBJECTDIR}/src/temp_sense/temp_sense.o 
	@${FIXDEPS} "${OBJECTDIR}/src/temp_sense/temp_sense.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/temp_sense/temp_sense.o.d" -o ${OBJECTDIR}/src/temp_sense/temp_sense.o src/temp_sense/temp_sense.c     
	
${OBJECTDIR}/src/temp_sense/temp_sense_test.o: src/temp_sense/temp_sense_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/temp_sense" 
	@${RM} ${OBJECTDIR}/src/temp_sense/temp_sense_test.o.d 
	@${RM} ${OBJECTDIR}/src/temp_sense/temp_sense_test.o 
	@${FIXDEPS} "${OBJECTDIR}/src/temp_sense/temp_sense_test.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/temp_sense/temp_sense_test.o.d" -o ${OBJECTDIR}/src/temp_sense/temp_sense_test.o src/temp_sense/temp_sense_test.c     
	
${OBJECTDIR}/src/_adc/temp_adc.o: src/_adc/temp_adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/_adc" 
	@${RM} ${OBJECTDIR}/src/_adc/temp_adc.o.d 
	@${RM} ${OBJECTDIR}/src/_adc/temp_adc.o 
	@${FIXDEPS} "${OBJECTDIR}/src/_adc/temp_adc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/_adc/temp_adc.o.d" -o ${OBJECTDIR}/src/_adc/temp_adc.o src/_adc/temp_adc.c     
	
${OBJECTDIR}/src/pic32mx_lab/pic32mx_lab_spi.o: src/pic32mx_lab/pic32mx_lab_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/pic32mx_lab" 
	@${RM} ${OBJECTDIR}/src/pic32mx_lab/pic32mx_lab_spi.o.d 
	@${RM} ${OBJECTDIR}/src/pic32mx_lab/pic32mx_lab_spi.o 
	@${FIXDEPS} "${OBJECTDIR}/src/pic32mx_lab/pic32mx_lab_spi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/pic32mx_lab/pic32mx_lab_spi.o.d" -o ${OBJECTDIR}/src/pic32mx_lab/pic32mx_lab_spi.o src/pic32mx_lab/pic32mx_lab_spi.c     
	
else
${OBJECTDIR}/src/main/config.o: src/main/config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/main" 
	@${RM} ${OBJECTDIR}/src/main/config.o.d 
	@${RM} ${OBJECTDIR}/src/main/config.o 
	@${FIXDEPS} "${OBJECTDIR}/src/main/config.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/main/config.o.d" -o ${OBJECTDIR}/src/main/config.o src/main/config.c     
	
${OBJECTDIR}/src/main/main.o: src/main/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/main" 
	@${RM} ${OBJECTDIR}/src/main/main.o.d 
	@${RM} ${OBJECTDIR}/src/main/main.o 
	@${FIXDEPS} "${OBJECTDIR}/src/main/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/main/main.o.d" -o ${OBJECTDIR}/src/main/main.o src/main/main.c     
	
${OBJECTDIR}/src/isr/isr.o: src/isr/isr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/isr" 
	@${RM} ${OBJECTDIR}/src/isr/isr.o.d 
	@${RM} ${OBJECTDIR}/src/isr/isr.o 
	@${FIXDEPS} "${OBJECTDIR}/src/isr/isr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/isr/isr.o.d" -o ${OBJECTDIR}/src/isr/isr.o src/isr/isr.c     
	
${OBJECTDIR}/src/led/led.o: src/led/led.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/led" 
	@${RM} ${OBJECTDIR}/src/led/led.o.d 
	@${RM} ${OBJECTDIR}/src/led/led.o 
	@${FIXDEPS} "${OBJECTDIR}/src/led/led.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/led/led.o.d" -o ${OBJECTDIR}/src/led/led.o src/led/led.c     
	
${OBJECTDIR}/src/timer/timer1.o: src/timer/timer1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/timer" 
	@${RM} ${OBJECTDIR}/src/timer/timer1.o.d 
	@${RM} ${OBJECTDIR}/src/timer/timer1.o 
	@${FIXDEPS} "${OBJECTDIR}/src/timer/timer1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/timer/timer1.o.d" -o ${OBJECTDIR}/src/timer/timer1.o src/timer/timer1.c     
	
${OBJECTDIR}/src/sio/sio.o: src/sio/sio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/sio" 
	@${RM} ${OBJECTDIR}/src/sio/sio.o.d 
	@${RM} ${OBJECTDIR}/src/sio/sio.o 
	@${FIXDEPS} "${OBJECTDIR}/src/sio/sio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/sio/sio.o.d" -o ${OBJECTDIR}/src/sio/sio.o src/sio/sio.c     
	
${OBJECTDIR}/src/io_printf/io_printf.o: src/io_printf/io_printf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/io_printf" 
	@${RM} ${OBJECTDIR}/src/io_printf/io_printf.o.d 
	@${RM} ${OBJECTDIR}/src/io_printf/io_printf.o 
	@${FIXDEPS} "${OBJECTDIR}/src/io_printf/io_printf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/io_printf/io_printf.o.d" -o ${OBJECTDIR}/src/io_printf/io_printf.o src/io_printf/io_printf.c     
	
${OBJECTDIR}/src/i2c_master/i2c_master.o: src/i2c_master/i2c_master.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/i2c_master" 
	@${RM} ${OBJECTDIR}/src/i2c_master/i2c_master.o.d 
	@${RM} ${OBJECTDIR}/src/i2c_master/i2c_master.o 
	@${FIXDEPS} "${OBJECTDIR}/src/i2c_master/i2c_master.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/i2c_master/i2c_master.o.d" -o ${OBJECTDIR}/src/i2c_master/i2c_master.o src/i2c_master/i2c_master.c     
	
${OBJECTDIR}/src/i2c_master/i2c_master_test.o: src/i2c_master/i2c_master_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/i2c_master" 
	@${RM} ${OBJECTDIR}/src/i2c_master/i2c_master_test.o.d 
	@${RM} ${OBJECTDIR}/src/i2c_master/i2c_master_test.o 
	@${FIXDEPS} "${OBJECTDIR}/src/i2c_master/i2c_master_test.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/i2c_master/i2c_master_test.o.d" -o ${OBJECTDIR}/src/i2c_master/i2c_master_test.o src/i2c_master/i2c_master_test.c     
	
${OBJECTDIR}/src/spi_master/spi_master.o: src/spi_master/spi_master.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/spi_master" 
	@${RM} ${OBJECTDIR}/src/spi_master/spi_master.o.d 
	@${RM} ${OBJECTDIR}/src/spi_master/spi_master.o 
	@${FIXDEPS} "${OBJECTDIR}/src/spi_master/spi_master.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/spi_master/spi_master.o.d" -o ${OBJECTDIR}/src/spi_master/spi_master.o src/spi_master/spi_master.c     
	
${OBJECTDIR}/src/spi_master/spi_master_test.o: src/spi_master/spi_master_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/spi_master" 
	@${RM} ${OBJECTDIR}/src/spi_master/spi_master_test.o.d 
	@${RM} ${OBJECTDIR}/src/spi_master/spi_master_test.o 
	@${FIXDEPS} "${OBJECTDIR}/src/spi_master/spi_master_test.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/spi_master/spi_master_test.o.d" -o ${OBJECTDIR}/src/spi_master/spi_master_test.o src/spi_master/spi_master_test.c     
	
${OBJECTDIR}/src/spi_slave/spi_slave.o: src/spi_slave/spi_slave.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/spi_slave" 
	@${RM} ${OBJECTDIR}/src/spi_slave/spi_slave.o.d 
	@${RM} ${OBJECTDIR}/src/spi_slave/spi_slave.o 
	@${FIXDEPS} "${OBJECTDIR}/src/spi_slave/spi_slave.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/spi_slave/spi_slave.o.d" -o ${OBJECTDIR}/src/spi_slave/spi_slave.o src/spi_slave/spi_slave.c     
	
${OBJECTDIR}/src/spi_slave/spi_slave_test.o: src/spi_slave/spi_slave_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/spi_slave" 
	@${RM} ${OBJECTDIR}/src/spi_slave/spi_slave_test.o.d 
	@${RM} ${OBJECTDIR}/src/spi_slave/spi_slave_test.o 
	@${FIXDEPS} "${OBJECTDIR}/src/spi_slave/spi_slave_test.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/spi_slave/spi_slave_test.o.d" -o ${OBJECTDIR}/src/spi_slave/spi_slave_test.o src/spi_slave/spi_slave_test.c     
	
${OBJECTDIR}/src/rtcc_plib/rtcc_plib.o: src/rtcc_plib/rtcc_plib.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/rtcc_plib" 
	@${RM} ${OBJECTDIR}/src/rtcc_plib/rtcc_plib.o.d 
	@${RM} ${OBJECTDIR}/src/rtcc_plib/rtcc_plib.o 
	@${FIXDEPS} "${OBJECTDIR}/src/rtcc_plib/rtcc_plib.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/rtcc_plib/rtcc_plib.o.d" -o ${OBJECTDIR}/src/rtcc_plib/rtcc_plib.o src/rtcc_plib/rtcc_plib.c     
	
${OBJECTDIR}/src/rtcc_plib/rtcc_plib_test.o: src/rtcc_plib/rtcc_plib_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/rtcc_plib" 
	@${RM} ${OBJECTDIR}/src/rtcc_plib/rtcc_plib_test.o.d 
	@${RM} ${OBJECTDIR}/src/rtcc_plib/rtcc_plib_test.o 
	@${FIXDEPS} "${OBJECTDIR}/src/rtcc_plib/rtcc_plib_test.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/rtcc_plib/rtcc_plib_test.o.d" -o ${OBJECTDIR}/src/rtcc_plib/rtcc_plib_test.o src/rtcc_plib/rtcc_plib_test.c     
	
${OBJECTDIR}/src/temp_sense/temp_sense.o: src/temp_sense/temp_sense.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/temp_sense" 
	@${RM} ${OBJECTDIR}/src/temp_sense/temp_sense.o.d 
	@${RM} ${OBJECTDIR}/src/temp_sense/temp_sense.o 
	@${FIXDEPS} "${OBJECTDIR}/src/temp_sense/temp_sense.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/temp_sense/temp_sense.o.d" -o ${OBJECTDIR}/src/temp_sense/temp_sense.o src/temp_sense/temp_sense.c     
	
${OBJECTDIR}/src/temp_sense/temp_sense_test.o: src/temp_sense/temp_sense_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/temp_sense" 
	@${RM} ${OBJECTDIR}/src/temp_sense/temp_sense_test.o.d 
	@${RM} ${OBJECTDIR}/src/temp_sense/temp_sense_test.o 
	@${FIXDEPS} "${OBJECTDIR}/src/temp_sense/temp_sense_test.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/temp_sense/temp_sense_test.o.d" -o ${OBJECTDIR}/src/temp_sense/temp_sense_test.o src/temp_sense/temp_sense_test.c     
	
${OBJECTDIR}/src/_adc/temp_adc.o: src/_adc/temp_adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/_adc" 
	@${RM} ${OBJECTDIR}/src/_adc/temp_adc.o.d 
	@${RM} ${OBJECTDIR}/src/_adc/temp_adc.o 
	@${FIXDEPS} "${OBJECTDIR}/src/_adc/temp_adc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/_adc/temp_adc.o.d" -o ${OBJECTDIR}/src/_adc/temp_adc.o src/_adc/temp_adc.c     
	
${OBJECTDIR}/src/pic32mx_lab/pic32mx_lab_spi.o: src/pic32mx_lab/pic32mx_lab_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src/pic32mx_lab" 
	@${RM} ${OBJECTDIR}/src/pic32mx_lab/pic32mx_lab_spi.o.d 
	@${RM} ${OBJECTDIR}/src/pic32mx_lab/pic32mx_lab_spi.o 
	@${FIXDEPS} "${OBJECTDIR}/src/pic32mx_lab/pic32mx_lab_spi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -mappio-debug -I"src/main" -I"src/isr" -I"src/rtos" -I"src/clocks" -I"src/i2c_master" -I"src/i2c_slave" -I"src/timer" -I"src/sio" -I"src/io_printf" -I"src/glue" -I"src/led" -I"src/spi_master" -I"src/spi_slave" -I"src/rtcc_plib" -I"src/batman" -I"src/rtcc" -I"src/_adc" -I"src/temp_sense" -I"src/pic32mx_lab" -mcci -MMD -MF "${OBJECTDIR}/src/pic32mx_lab/pic32mx_lab_spi.o.d" -o ${OBJECTDIR}/src/pic32mx_lab/pic32mx_lab_spi.o src/pic32mx_lab/pic32mx_lab_spi.c     
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/pic32mx.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_ICD3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/pic32mx.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}              -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/pic32mx.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/pic32mx.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}            -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/pic32mx.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
