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
ifeq "$(wildcard nbproject/Makefile-local-XC32_EVAL_BOARD.mk)" "nbproject/Makefile-local-XC32_EVAL_BOARD.mk"
include nbproject/Makefile-local-XC32_EVAL_BOARD.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=XC32_EVAL_BOARD
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MiWiToWiFiGatewayDemo.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MiWiToWiFiGatewayDemo.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED="../../../../Microchip/TCPIP Stack/Announce.c" "../../../../Microchip/TCPIP Stack/ARP.c" "../../../../Microchip/TCPIP Stack/AutoIP.c" "../../../../Microchip/TCPIP Stack/BerkeleyAPI.c" "../../../../Microchip/TCPIP Stack/BigInt_helper_PIC32.S" "../../../../Microchip/TCPIP Stack/Delay.c" "../../../../Microchip/TCPIP Stack/DNS.c" "../../../../Microchip/TCPIP Stack/DNSs.c" "../../../../Microchip/TCPIP Stack/DynDNS.c" "../../../../Microchip/TCPIP Stack/ENC28J60.c" "../../../../Microchip/TCPIP Stack/ENCX24J600.c" "../../../../Microchip/TCPIP Stack/FTP.c" "../../../../Microchip/TCPIP Stack/Hashes.c" "../../../../Microchip/TCPIP Stack/Helpers.c" "../../../../Microchip/TCPIP Stack/HTTP2.c" "../../../../Microchip/TCPIP Stack/ICMP.c" "../../../../Microchip/TCPIP Stack/IP.c" "../../../../Microchip/TCPIP Stack/LCDBlocking.c" "../../../../Microchip/TCPIP Stack/MPFS2.c" "../../../../Microchip/TCPIP Stack/NBNS.c" "../../../../Microchip/TCPIP Stack/Reboot.c" "../../../../Microchip/TCPIP Stack/SMTP.c" "../../../../Microchip/TCPIP Stack/SNMP.c" "../../../../Microchip/TCPIP Stack/SNTP.c" "../../../../Microchip/TCPIP Stack/SPIEEPROM.c" "../../../../Microchip/TCPIP Stack/SPIFlash.c" "../../../../Microchip/TCPIP Stack/SPIRAM.c" "../../../../Microchip/TCPIP Stack/StackTsk.c" "../../../../Microchip/TCPIP Stack/TCP.c" "../../../../Microchip/TCPIP Stack/TCPPerformanceTest.c" "../../../../Microchip/TCPIP Stack/Telnet.c" "../../../../Microchip/TCPIP Stack/TFTPc.c" "../../../../Microchip/TCPIP Stack/Tick.c" "../../../../Microchip/TCPIP Stack/UART.c" "../../../../Microchip/TCPIP Stack/UART2TCPBridge.c" "../../../../Microchip/TCPIP Stack/UDP.c" "../../../../Microchip/TCPIP Stack/UDPPerformanceTest.c" "../../../../Microchip/TCPIP Stack/ZeroconfHelper.c" "../../../../Microchip/TCPIP Stack/ZeroconfLinkLocal.c" "../../../../Microchip/TCPIP Stack/ZeroconfMulticastDNS.c" ../LocalFiles/DHCP.c ../LocalFiles/DHCPs.c ../LocalFiles/MRF24J40.c ../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c ../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c ../../../../Microchip/Transceivers/crc.c ../../../../Microchip/Transceivers/security.c "../../../../Microchip/TCPIP Stack/WiFi/WF_Eint.c" "../../../../Microchip/TCPIP Stack/WiFi/WF_pbkdf2.c" "../../../../Microchip/TCPIP Stack/WiFi/WF_Spi.c" "../../../../Microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.c" "../../../../Microchip/TCPIP Stack/WiFi/WFConnectionManager.c" "../../../../Microchip/TCPIP Stack/WiFi/WFConnectionProfile.c" "../../../../Microchip/TCPIP Stack/WiFi/WFConsole.c" "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.c" "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.c" "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.c" "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.c" "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgs.c" "../../../../Microchip/TCPIP Stack/WiFi/WFDataTxRx.c" "../../../../Microchip/TCPIP Stack/WiFi/WFDebugStrings.c" "../../../../Microchip/TCPIP Stack/WiFi/WFDriverCom_24G.c" "../../../../Microchip/TCPIP Stack/WiFi/WFDriverRaw_24G.c" "../../../../Microchip/TCPIP Stack/WiFi/WFEasyConfig.c" "../../../../Microchip/TCPIP Stack/WiFi/WFEventHandler.c" "../../../../Microchip/TCPIP Stack/WiFi/WFInit.c" "../../../../Microchip/TCPIP Stack/WiFi/WFMac_24G.c" "../../../../Microchip/TCPIP Stack/WiFi/WFMgmtMsg_24G.c" "../../../../Microchip/TCPIP Stack/WiFi/WFParamMsg_24G.c" "../../../../Microchip/TCPIP Stack/WiFi/WFPowerSave.c" "../../../../Microchip/TCPIP Stack/WiFi/WFScan.c" "../../../../Microchip/TCPIP Stack/WiFi/WFTxPower.c" ../../../../Microchip/WirelessProtocols/MiWi/MiWi.c ../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c ../../../../Microchip/WirelessProtocols/P2P/P2P.c ../../../../Microchip/WirelessProtocols/Console.c ../../../../Microchip/WirelessProtocols/EEPROM.c ../../../../Microchip/WirelessProtocols/NVM.c ../../../../Microchip/WirelessProtocols/SymbolTime.c ../CustomHTTPApp.c ../MainDemo.c ../UARTConfig.c ../WF_Config.c ../LCD_ST7032.c ../MiWi_SPI.c ../Storage.c ../MPFSImg2.c ../SelfTestMode.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1622303505/Announce.o ${OBJECTDIR}/_ext/1622303505/ARP.o ${OBJECTDIR}/_ext/1622303505/AutoIP.o ${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o ${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o ${OBJECTDIR}/_ext/1622303505/Delay.o ${OBJECTDIR}/_ext/1622303505/DNS.o ${OBJECTDIR}/_ext/1622303505/DNSs.o ${OBJECTDIR}/_ext/1622303505/DynDNS.o ${OBJECTDIR}/_ext/1622303505/ENC28J60.o ${OBJECTDIR}/_ext/1622303505/ENCX24J600.o ${OBJECTDIR}/_ext/1622303505/FTP.o ${OBJECTDIR}/_ext/1622303505/Hashes.o ${OBJECTDIR}/_ext/1622303505/Helpers.o ${OBJECTDIR}/_ext/1622303505/HTTP2.o ${OBJECTDIR}/_ext/1622303505/ICMP.o ${OBJECTDIR}/_ext/1622303505/IP.o ${OBJECTDIR}/_ext/1622303505/LCDBlocking.o ${OBJECTDIR}/_ext/1622303505/MPFS2.o ${OBJECTDIR}/_ext/1622303505/NBNS.o ${OBJECTDIR}/_ext/1622303505/Reboot.o ${OBJECTDIR}/_ext/1622303505/SMTP.o ${OBJECTDIR}/_ext/1622303505/SNMP.o ${OBJECTDIR}/_ext/1622303505/SNTP.o ${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o ${OBJECTDIR}/_ext/1622303505/SPIFlash.o ${OBJECTDIR}/_ext/1622303505/SPIRAM.o ${OBJECTDIR}/_ext/1622303505/StackTsk.o ${OBJECTDIR}/_ext/1622303505/TCP.o ${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o ${OBJECTDIR}/_ext/1622303505/Telnet.o ${OBJECTDIR}/_ext/1622303505/TFTPc.o ${OBJECTDIR}/_ext/1622303505/Tick.o ${OBJECTDIR}/_ext/1622303505/UART.o ${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o ${OBJECTDIR}/_ext/1622303505/UDP.o ${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o ${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o ${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o ${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o ${OBJECTDIR}/_ext/1452631451/DHCP.o ${OBJECTDIR}/_ext/1452631451/DHCPs.o ${OBJECTDIR}/_ext/1452631451/MRF24J40.o ${OBJECTDIR}/_ext/56957362/MRF49XA.o ${OBJECTDIR}/_ext/56838198/MRF89XA.o ${OBJECTDIR}/_ext/594816914/crc.o ${OBJECTDIR}/_ext/594816914/security.o ${OBJECTDIR}/_ext/1310019475/WF_Eint.o ${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o ${OBJECTDIR}/_ext/1310019475/WF_Spi.o ${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o ${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o ${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o ${OBJECTDIR}/_ext/1310019475/WFConsole.o ${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o ${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o ${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o ${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o ${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o ${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o ${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o ${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o ${OBJECTDIR}/_ext/1310019475/WFEventHandler.o ${OBJECTDIR}/_ext/1310019475/WFInit.o ${OBJECTDIR}/_ext/1310019475/WFMac_24G.o ${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o ${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o ${OBJECTDIR}/_ext/1310019475/WFPowerSave.o ${OBJECTDIR}/_ext/1310019475/WFScan.o ${OBJECTDIR}/_ext/1310019475/WFTxPower.o ${OBJECTDIR}/_ext/1850237697/MiWi.o ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o ${OBJECTDIR}/_ext/355958077/P2P.o ${OBJECTDIR}/_ext/546296802/Console.o ${OBJECTDIR}/_ext/546296802/EEPROM.o ${OBJECTDIR}/_ext/546296802/NVM.o ${OBJECTDIR}/_ext/546296802/SymbolTime.o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/1472/UARTConfig.o ${OBJECTDIR}/_ext/1472/WF_Config.o ${OBJECTDIR}/_ext/1472/LCD_ST7032.o ${OBJECTDIR}/_ext/1472/MiWi_SPI.o ${OBJECTDIR}/_ext/1472/Storage.o ${OBJECTDIR}/_ext/1472/MPFSImg2.o ${OBJECTDIR}/_ext/1472/SelfTestMode.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1622303505/Announce.o.d ${OBJECTDIR}/_ext/1622303505/ARP.o.d ${OBJECTDIR}/_ext/1622303505/AutoIP.o.d ${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o.d ${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o.d ${OBJECTDIR}/_ext/1622303505/Delay.o.d ${OBJECTDIR}/_ext/1622303505/DNS.o.d ${OBJECTDIR}/_ext/1622303505/DNSs.o.d ${OBJECTDIR}/_ext/1622303505/DynDNS.o.d ${OBJECTDIR}/_ext/1622303505/ENC28J60.o.d ${OBJECTDIR}/_ext/1622303505/ENCX24J600.o.d ${OBJECTDIR}/_ext/1622303505/FTP.o.d ${OBJECTDIR}/_ext/1622303505/Hashes.o.d ${OBJECTDIR}/_ext/1622303505/Helpers.o.d ${OBJECTDIR}/_ext/1622303505/HTTP2.o.d ${OBJECTDIR}/_ext/1622303505/ICMP.o.d ${OBJECTDIR}/_ext/1622303505/IP.o.d ${OBJECTDIR}/_ext/1622303505/LCDBlocking.o.d ${OBJECTDIR}/_ext/1622303505/MPFS2.o.d ${OBJECTDIR}/_ext/1622303505/NBNS.o.d ${OBJECTDIR}/_ext/1622303505/Reboot.o.d ${OBJECTDIR}/_ext/1622303505/SMTP.o.d ${OBJECTDIR}/_ext/1622303505/SNMP.o.d ${OBJECTDIR}/_ext/1622303505/SNTP.o.d ${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o.d ${OBJECTDIR}/_ext/1622303505/SPIFlash.o.d ${OBJECTDIR}/_ext/1622303505/SPIRAM.o.d ${OBJECTDIR}/_ext/1622303505/StackTsk.o.d ${OBJECTDIR}/_ext/1622303505/TCP.o.d ${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o.d ${OBJECTDIR}/_ext/1622303505/Telnet.o.d ${OBJECTDIR}/_ext/1622303505/TFTPc.o.d ${OBJECTDIR}/_ext/1622303505/Tick.o.d ${OBJECTDIR}/_ext/1622303505/UART.o.d ${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o.d ${OBJECTDIR}/_ext/1622303505/UDP.o.d ${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o.d ${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o.d ${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o.d ${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o.d ${OBJECTDIR}/_ext/1452631451/DHCP.o.d ${OBJECTDIR}/_ext/1452631451/DHCPs.o.d ${OBJECTDIR}/_ext/1452631451/MRF24J40.o.d ${OBJECTDIR}/_ext/56957362/MRF49XA.o.d ${OBJECTDIR}/_ext/56838198/MRF89XA.o.d ${OBJECTDIR}/_ext/594816914/crc.o.d ${OBJECTDIR}/_ext/594816914/security.o.d ${OBJECTDIR}/_ext/1310019475/WF_Eint.o.d ${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o.d ${OBJECTDIR}/_ext/1310019475/WF_Spi.o.d ${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o.d ${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o.d ${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o.d ${OBJECTDIR}/_ext/1310019475/WFConsole.o.d ${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o.d ${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o.d ${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o.d ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o.d ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o.d ${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o.d ${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o.d ${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o.d ${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o.d ${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o.d ${OBJECTDIR}/_ext/1310019475/WFEventHandler.o.d ${OBJECTDIR}/_ext/1310019475/WFInit.o.d ${OBJECTDIR}/_ext/1310019475/WFMac_24G.o.d ${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o.d ${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o.d ${OBJECTDIR}/_ext/1310019475/WFPowerSave.o.d ${OBJECTDIR}/_ext/1310019475/WFScan.o.d ${OBJECTDIR}/_ext/1310019475/WFTxPower.o.d ${OBJECTDIR}/_ext/1850237697/MiWi.o.d ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o.d ${OBJECTDIR}/_ext/355958077/P2P.o.d ${OBJECTDIR}/_ext/546296802/Console.o.d ${OBJECTDIR}/_ext/546296802/EEPROM.o.d ${OBJECTDIR}/_ext/546296802/NVM.o.d ${OBJECTDIR}/_ext/546296802/SymbolTime.o.d ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d ${OBJECTDIR}/_ext/1472/MainDemo.o.d ${OBJECTDIR}/_ext/1472/UARTConfig.o.d ${OBJECTDIR}/_ext/1472/WF_Config.o.d ${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d ${OBJECTDIR}/_ext/1472/MiWi_SPI.o.d ${OBJECTDIR}/_ext/1472/Storage.o.d ${OBJECTDIR}/_ext/1472/MPFSImg2.o.d ${OBJECTDIR}/_ext/1472/SelfTestMode.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1622303505/Announce.o ${OBJECTDIR}/_ext/1622303505/ARP.o ${OBJECTDIR}/_ext/1622303505/AutoIP.o ${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o ${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o ${OBJECTDIR}/_ext/1622303505/Delay.o ${OBJECTDIR}/_ext/1622303505/DNS.o ${OBJECTDIR}/_ext/1622303505/DNSs.o ${OBJECTDIR}/_ext/1622303505/DynDNS.o ${OBJECTDIR}/_ext/1622303505/ENC28J60.o ${OBJECTDIR}/_ext/1622303505/ENCX24J600.o ${OBJECTDIR}/_ext/1622303505/FTP.o ${OBJECTDIR}/_ext/1622303505/Hashes.o ${OBJECTDIR}/_ext/1622303505/Helpers.o ${OBJECTDIR}/_ext/1622303505/HTTP2.o ${OBJECTDIR}/_ext/1622303505/ICMP.o ${OBJECTDIR}/_ext/1622303505/IP.o ${OBJECTDIR}/_ext/1622303505/LCDBlocking.o ${OBJECTDIR}/_ext/1622303505/MPFS2.o ${OBJECTDIR}/_ext/1622303505/NBNS.o ${OBJECTDIR}/_ext/1622303505/Reboot.o ${OBJECTDIR}/_ext/1622303505/SMTP.o ${OBJECTDIR}/_ext/1622303505/SNMP.o ${OBJECTDIR}/_ext/1622303505/SNTP.o ${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o ${OBJECTDIR}/_ext/1622303505/SPIFlash.o ${OBJECTDIR}/_ext/1622303505/SPIRAM.o ${OBJECTDIR}/_ext/1622303505/StackTsk.o ${OBJECTDIR}/_ext/1622303505/TCP.o ${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o ${OBJECTDIR}/_ext/1622303505/Telnet.o ${OBJECTDIR}/_ext/1622303505/TFTPc.o ${OBJECTDIR}/_ext/1622303505/Tick.o ${OBJECTDIR}/_ext/1622303505/UART.o ${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o ${OBJECTDIR}/_ext/1622303505/UDP.o ${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o ${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o ${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o ${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o ${OBJECTDIR}/_ext/1452631451/DHCP.o ${OBJECTDIR}/_ext/1452631451/DHCPs.o ${OBJECTDIR}/_ext/1452631451/MRF24J40.o ${OBJECTDIR}/_ext/56957362/MRF49XA.o ${OBJECTDIR}/_ext/56838198/MRF89XA.o ${OBJECTDIR}/_ext/594816914/crc.o ${OBJECTDIR}/_ext/594816914/security.o ${OBJECTDIR}/_ext/1310019475/WF_Eint.o ${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o ${OBJECTDIR}/_ext/1310019475/WF_Spi.o ${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o ${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o ${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o ${OBJECTDIR}/_ext/1310019475/WFConsole.o ${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o ${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o ${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o ${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o ${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o ${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o ${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o ${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o ${OBJECTDIR}/_ext/1310019475/WFEventHandler.o ${OBJECTDIR}/_ext/1310019475/WFInit.o ${OBJECTDIR}/_ext/1310019475/WFMac_24G.o ${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o ${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o ${OBJECTDIR}/_ext/1310019475/WFPowerSave.o ${OBJECTDIR}/_ext/1310019475/WFScan.o ${OBJECTDIR}/_ext/1310019475/WFTxPower.o ${OBJECTDIR}/_ext/1850237697/MiWi.o ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o ${OBJECTDIR}/_ext/355958077/P2P.o ${OBJECTDIR}/_ext/546296802/Console.o ${OBJECTDIR}/_ext/546296802/EEPROM.o ${OBJECTDIR}/_ext/546296802/NVM.o ${OBJECTDIR}/_ext/546296802/SymbolTime.o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/1472/UARTConfig.o ${OBJECTDIR}/_ext/1472/WF_Config.o ${OBJECTDIR}/_ext/1472/LCD_ST7032.o ${OBJECTDIR}/_ext/1472/MiWi_SPI.o ${OBJECTDIR}/_ext/1472/Storage.o ${OBJECTDIR}/_ext/1472/MPFSImg2.o ${OBJECTDIR}/_ext/1472/SelfTestMode.o

# Source Files
SOURCEFILES=../../../../Microchip/TCPIP Stack/Announce.c ../../../../Microchip/TCPIP Stack/ARP.c ../../../../Microchip/TCPIP Stack/AutoIP.c ../../../../Microchip/TCPIP Stack/BerkeleyAPI.c ../../../../Microchip/TCPIP Stack/BigInt_helper_PIC32.S ../../../../Microchip/TCPIP Stack/Delay.c ../../../../Microchip/TCPIP Stack/DNS.c ../../../../Microchip/TCPIP Stack/DNSs.c ../../../../Microchip/TCPIP Stack/DynDNS.c ../../../../Microchip/TCPIP Stack/ENC28J60.c ../../../../Microchip/TCPIP Stack/ENCX24J600.c ../../../../Microchip/TCPIP Stack/FTP.c ../../../../Microchip/TCPIP Stack/Hashes.c ../../../../Microchip/TCPIP Stack/Helpers.c ../../../../Microchip/TCPIP Stack/HTTP2.c ../../../../Microchip/TCPIP Stack/ICMP.c ../../../../Microchip/TCPIP Stack/IP.c ../../../../Microchip/TCPIP Stack/LCDBlocking.c ../../../../Microchip/TCPIP Stack/MPFS2.c ../../../../Microchip/TCPIP Stack/NBNS.c ../../../../Microchip/TCPIP Stack/Reboot.c ../../../../Microchip/TCPIP Stack/SMTP.c ../../../../Microchip/TCPIP Stack/SNMP.c ../../../../Microchip/TCPIP Stack/SNTP.c ../../../../Microchip/TCPIP Stack/SPIEEPROM.c ../../../../Microchip/TCPIP Stack/SPIFlash.c ../../../../Microchip/TCPIP Stack/SPIRAM.c ../../../../Microchip/TCPIP Stack/StackTsk.c ../../../../Microchip/TCPIP Stack/TCP.c ../../../../Microchip/TCPIP Stack/TCPPerformanceTest.c ../../../../Microchip/TCPIP Stack/Telnet.c ../../../../Microchip/TCPIP Stack/TFTPc.c ../../../../Microchip/TCPIP Stack/Tick.c ../../../../Microchip/TCPIP Stack/UART.c ../../../../Microchip/TCPIP Stack/UART2TCPBridge.c ../../../../Microchip/TCPIP Stack/UDP.c ../../../../Microchip/TCPIP Stack/UDPPerformanceTest.c ../../../../Microchip/TCPIP Stack/ZeroconfHelper.c ../../../../Microchip/TCPIP Stack/ZeroconfLinkLocal.c ../../../../Microchip/TCPIP Stack/ZeroconfMulticastDNS.c ../LocalFiles/DHCP.c ../LocalFiles/DHCPs.c ../LocalFiles/MRF24J40.c ../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c ../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c ../../../../Microchip/Transceivers/crc.c ../../../../Microchip/Transceivers/security.c ../../../../Microchip/TCPIP Stack/WiFi/WF_Eint.c ../../../../Microchip/TCPIP Stack/WiFi/WF_pbkdf2.c ../../../../Microchip/TCPIP Stack/WiFi/WF_Spi.c ../../../../Microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.c ../../../../Microchip/TCPIP Stack/WiFi/WFConnectionManager.c ../../../../Microchip/TCPIP Stack/WiFi/WFConnectionProfile.c ../../../../Microchip/TCPIP Stack/WiFi/WFConsole.c ../../../../Microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.c ../../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.c ../../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.c ../../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.c ../../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgs.c ../../../../Microchip/TCPIP Stack/WiFi/WFDataTxRx.c ../../../../Microchip/TCPIP Stack/WiFi/WFDebugStrings.c ../../../../Microchip/TCPIP Stack/WiFi/WFDriverCom_24G.c ../../../../Microchip/TCPIP Stack/WiFi/WFDriverRaw_24G.c ../../../../Microchip/TCPIP Stack/WiFi/WFEasyConfig.c ../../../../Microchip/TCPIP Stack/WiFi/WFEventHandler.c ../../../../Microchip/TCPIP Stack/WiFi/WFInit.c ../../../../Microchip/TCPIP Stack/WiFi/WFMac_24G.c ../../../../Microchip/TCPIP Stack/WiFi/WFMgmtMsg_24G.c ../../../../Microchip/TCPIP Stack/WiFi/WFParamMsg_24G.c ../../../../Microchip/TCPIP Stack/WiFi/WFPowerSave.c ../../../../Microchip/TCPIP Stack/WiFi/WFScan.c ../../../../Microchip/TCPIP Stack/WiFi/WFTxPower.c ../../../../Microchip/WirelessProtocols/MiWi/MiWi.c ../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c ../../../../Microchip/WirelessProtocols/P2P/P2P.c ../../../../Microchip/WirelessProtocols/Console.c ../../../../Microchip/WirelessProtocols/EEPROM.c ../../../../Microchip/WirelessProtocols/NVM.c ../../../../Microchip/WirelessProtocols/SymbolTime.c ../CustomHTTPApp.c ../MainDemo.c ../UARTConfig.c ../WF_Config.c ../LCD_ST7032.c ../MiWi_SPI.c ../Storage.c ../MPFSImg2.c ../SelfTestMode.c


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
	${MAKE}  -f nbproject/Makefile-XC32_EVAL_BOARD.mk dist/${CND_CONF}/${IMAGE_TYPE}/MiWiToWiFiGatewayDemo.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX695F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o: ../../../../Microchip/TCPIP\ Stack/BigInt_helper_PIC32.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o 
	@${RM} ${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o.ok ${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o.d" "${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_PIC32_EVAL_BOARD -I"../" -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIPStack" -I"../Configs" -MMD -MF "${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o.d"  -o ${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o "../../../../Microchip/TCPIP Stack/BigInt_helper_PIC32.S"    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-I".."
	
else
${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o: ../../../../Microchip/TCPIP\ Stack/BigInt_helper_PIC32.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o 
	@${RM} ${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o.ok ${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o.d" "${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_PIC32_EVAL_BOARD -I"../" -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIPStack" -I"../Configs" -MMD -MF "${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o.d"  -o ${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o "../../../../Microchip/TCPIP Stack/BigInt_helper_PIC32.S"    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1622303505/BigInt_helper_PIC32.o.asm.d",--gdwarf-2,-I".."
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1622303505/Announce.o: ../../../../Microchip/TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Announce.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/Announce.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/Announce.o.d" -o ${OBJECTDIR}/_ext/1622303505/Announce.o "../../../../Microchip/TCPIP Stack/Announce.c"     
	
${OBJECTDIR}/_ext/1622303505/ARP.o: ../../../../Microchip/TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ARP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ARP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/ARP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/ARP.o.d" -o ${OBJECTDIR}/_ext/1622303505/ARP.o "../../../../Microchip/TCPIP Stack/ARP.c"     
	
${OBJECTDIR}/_ext/1622303505/AutoIP.o: ../../../../Microchip/TCPIP\ Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/AutoIP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/AutoIP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/AutoIP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/AutoIP.o.d" -o ${OBJECTDIR}/_ext/1622303505/AutoIP.o "../../../../Microchip/TCPIP Stack/AutoIP.c"     
	
${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o: ../../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o.d" -o ${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o "../../../../Microchip/TCPIP Stack/BerkeleyAPI.c"     
	
${OBJECTDIR}/_ext/1622303505/Delay.o: ../../../../Microchip/TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Delay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/Delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/Delay.o.d" -o ${OBJECTDIR}/_ext/1622303505/Delay.o "../../../../Microchip/TCPIP Stack/Delay.c"     
	
${OBJECTDIR}/_ext/1622303505/DNS.o: ../../../../Microchip/TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/DNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/DNS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/DNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/DNS.o.d" -o ${OBJECTDIR}/_ext/1622303505/DNS.o "../../../../Microchip/TCPIP Stack/DNS.c"     
	
${OBJECTDIR}/_ext/1622303505/DNSs.o: ../../../../Microchip/TCPIP\ Stack/DNSs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/DNSs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/DNSs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/DNSs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/DNSs.o.d" -o ${OBJECTDIR}/_ext/1622303505/DNSs.o "../../../../Microchip/TCPIP Stack/DNSs.c"     
	
${OBJECTDIR}/_ext/1622303505/DynDNS.o: ../../../../Microchip/TCPIP\ Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/DynDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/DynDNS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/DynDNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/DynDNS.o.d" -o ${OBJECTDIR}/_ext/1622303505/DynDNS.o "../../../../Microchip/TCPIP Stack/DynDNS.c"     
	
${OBJECTDIR}/_ext/1622303505/ENC28J60.o: ../../../../Microchip/TCPIP\ Stack/ENC28J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ENC28J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ENC28J60.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/ENC28J60.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/ENC28J60.o.d" -o ${OBJECTDIR}/_ext/1622303505/ENC28J60.o "../../../../Microchip/TCPIP Stack/ENC28J60.c"     
	
${OBJECTDIR}/_ext/1622303505/ENCX24J600.o: ../../../../Microchip/TCPIP\ Stack/ENCX24J600.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ENCX24J600.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ENCX24J600.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/ENCX24J600.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/ENCX24J600.o.d" -o ${OBJECTDIR}/_ext/1622303505/ENCX24J600.o "../../../../Microchip/TCPIP Stack/ENCX24J600.c"     
	
${OBJECTDIR}/_ext/1622303505/FTP.o: ../../../../Microchip/TCPIP\ Stack/FTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/FTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/FTP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/FTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/FTP.o.d" -o ${OBJECTDIR}/_ext/1622303505/FTP.o "../../../../Microchip/TCPIP Stack/FTP.c"     
	
${OBJECTDIR}/_ext/1622303505/Hashes.o: ../../../../Microchip/TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Hashes.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/Hashes.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/Hashes.o.d" -o ${OBJECTDIR}/_ext/1622303505/Hashes.o "../../../../Microchip/TCPIP Stack/Hashes.c"     
	
${OBJECTDIR}/_ext/1622303505/Helpers.o: ../../../../Microchip/TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Helpers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/Helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/Helpers.o.d" -o ${OBJECTDIR}/_ext/1622303505/Helpers.o "../../../../Microchip/TCPIP Stack/Helpers.c"     
	
${OBJECTDIR}/_ext/1622303505/HTTP2.o: ../../../../Microchip/TCPIP\ Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/HTTP2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/HTTP2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/HTTP2.o.d" -o ${OBJECTDIR}/_ext/1622303505/HTTP2.o "../../../../Microchip/TCPIP Stack/HTTP2.c"     
	
${OBJECTDIR}/_ext/1622303505/ICMP.o: ../../../../Microchip/TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ICMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ICMP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/ICMP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/ICMP.o.d" -o ${OBJECTDIR}/_ext/1622303505/ICMP.o "../../../../Microchip/TCPIP Stack/ICMP.c"     
	
${OBJECTDIR}/_ext/1622303505/IP.o: ../../../../Microchip/TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/IP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/IP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/IP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/IP.o.d" -o ${OBJECTDIR}/_ext/1622303505/IP.o "../../../../Microchip/TCPIP Stack/IP.c"     
	
${OBJECTDIR}/_ext/1622303505/LCDBlocking.o: ../../../../Microchip/TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/LCDBlocking.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/LCDBlocking.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/LCDBlocking.o.d" -o ${OBJECTDIR}/_ext/1622303505/LCDBlocking.o "../../../../Microchip/TCPIP Stack/LCDBlocking.c"     
	
${OBJECTDIR}/_ext/1622303505/MPFS2.o: ../../../../Microchip/TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/MPFS2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/MPFS2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/MPFS2.o.d" -o ${OBJECTDIR}/_ext/1622303505/MPFS2.o "../../../../Microchip/TCPIP Stack/MPFS2.c"     
	
${OBJECTDIR}/_ext/1622303505/NBNS.o: ../../../../Microchip/TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/NBNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/NBNS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/NBNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/NBNS.o.d" -o ${OBJECTDIR}/_ext/1622303505/NBNS.o "../../../../Microchip/TCPIP Stack/NBNS.c"     
	
${OBJECTDIR}/_ext/1622303505/Reboot.o: ../../../../Microchip/TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Reboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Reboot.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/Reboot.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/Reboot.o.d" -o ${OBJECTDIR}/_ext/1622303505/Reboot.o "../../../../Microchip/TCPIP Stack/Reboot.c"     
	
${OBJECTDIR}/_ext/1622303505/SMTP.o: ../../../../Microchip/TCPIP\ Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SMTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SMTP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/SMTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/SMTP.o.d" -o ${OBJECTDIR}/_ext/1622303505/SMTP.o "../../../../Microchip/TCPIP Stack/SMTP.c"     
	
${OBJECTDIR}/_ext/1622303505/SNMP.o: ../../../../Microchip/TCPIP\ Stack/SNMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SNMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SNMP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/SNMP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/SNMP.o.d" -o ${OBJECTDIR}/_ext/1622303505/SNMP.o "../../../../Microchip/TCPIP Stack/SNMP.c"     
	
${OBJECTDIR}/_ext/1622303505/SNTP.o: ../../../../Microchip/TCPIP\ Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SNTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SNTP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/SNTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/SNTP.o.d" -o ${OBJECTDIR}/_ext/1622303505/SNTP.o "../../../../Microchip/TCPIP Stack/SNTP.c"     
	
${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o: ../../../../Microchip/TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o.d" -o ${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o "../../../../Microchip/TCPIP Stack/SPIEEPROM.c"     
	
${OBJECTDIR}/_ext/1622303505/SPIFlash.o: ../../../../Microchip/TCPIP\ Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SPIFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SPIFlash.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/SPIFlash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/SPIFlash.o.d" -o ${OBJECTDIR}/_ext/1622303505/SPIFlash.o "../../../../Microchip/TCPIP Stack/SPIFlash.c"     
	
${OBJECTDIR}/_ext/1622303505/SPIRAM.o: ../../../../Microchip/TCPIP\ Stack/SPIRAM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SPIRAM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SPIRAM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/SPIRAM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/SPIRAM.o.d" -o ${OBJECTDIR}/_ext/1622303505/SPIRAM.o "../../../../Microchip/TCPIP Stack/SPIRAM.c"     
	
${OBJECTDIR}/_ext/1622303505/StackTsk.o: ../../../../Microchip/TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/StackTsk.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/StackTsk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/StackTsk.o.d" -o ${OBJECTDIR}/_ext/1622303505/StackTsk.o "../../../../Microchip/TCPIP Stack/StackTsk.c"     
	
${OBJECTDIR}/_ext/1622303505/TCP.o: ../../../../Microchip/TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/TCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/TCP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/TCP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/TCP.o.d" -o ${OBJECTDIR}/_ext/1622303505/TCP.o "../../../../Microchip/TCPIP Stack/TCP.c"     
	
${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o: ../../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o "../../../../Microchip/TCPIP Stack/TCPPerformanceTest.c"     
	
${OBJECTDIR}/_ext/1622303505/Telnet.o: ../../../../Microchip/TCPIP\ Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Telnet.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/Telnet.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/Telnet.o.d" -o ${OBJECTDIR}/_ext/1622303505/Telnet.o "../../../../Microchip/TCPIP Stack/Telnet.c"     
	
${OBJECTDIR}/_ext/1622303505/TFTPc.o: ../../../../Microchip/TCPIP\ Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/TFTPc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/TFTPc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/TFTPc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/TFTPc.o.d" -o ${OBJECTDIR}/_ext/1622303505/TFTPc.o "../../../../Microchip/TCPIP Stack/TFTPc.c"     
	
${OBJECTDIR}/_ext/1622303505/Tick.o: ../../../../Microchip/TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Tick.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/Tick.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/Tick.o.d" -o ${OBJECTDIR}/_ext/1622303505/Tick.o "../../../../Microchip/TCPIP Stack/Tick.c"     
	
${OBJECTDIR}/_ext/1622303505/UART.o: ../../../../Microchip/TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UART.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/UART.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/UART.o.d" -o ${OBJECTDIR}/_ext/1622303505/UART.o "../../../../Microchip/TCPIP Stack/UART.c"     
	
${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o: ../../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o.d" -o ${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o "../../../../Microchip/TCPIP Stack/UART2TCPBridge.c"     
	
${OBJECTDIR}/_ext/1622303505/UDP.o: ../../../../Microchip/TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UDP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UDP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/UDP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/UDP.o.d" -o ${OBJECTDIR}/_ext/1622303505/UDP.o "../../../../Microchip/TCPIP Stack/UDP.c"     
	
${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o: ../../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o "../../../../Microchip/TCPIP Stack/UDPPerformanceTest.c"     
	
${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o: ../../../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o.d" -o ${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o "../../../../Microchip/TCPIP Stack/ZeroconfHelper.c"     
	
${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o: ../../../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o.d" -o ${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o "../../../../Microchip/TCPIP Stack/ZeroconfLinkLocal.c"     
	
${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o: ../../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o.d" -o ${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o "../../../../Microchip/TCPIP Stack/ZeroconfMulticastDNS.c"     
	
${OBJECTDIR}/_ext/1452631451/DHCP.o: ../LocalFiles/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1452631451" 
	@${RM} ${OBJECTDIR}/_ext/1452631451/DHCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1452631451/DHCP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1452631451/DHCP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1452631451/DHCP.o.d" -o ${OBJECTDIR}/_ext/1452631451/DHCP.o ../LocalFiles/DHCP.c     
	
${OBJECTDIR}/_ext/1452631451/DHCPs.o: ../LocalFiles/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1452631451" 
	@${RM} ${OBJECTDIR}/_ext/1452631451/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1452631451/DHCPs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1452631451/DHCPs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1452631451/DHCPs.o.d" -o ${OBJECTDIR}/_ext/1452631451/DHCPs.o ../LocalFiles/DHCPs.c     
	
${OBJECTDIR}/_ext/1452631451/MRF24J40.o: ../LocalFiles/MRF24J40.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1452631451" 
	@${RM} ${OBJECTDIR}/_ext/1452631451/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/1452631451/MRF24J40.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1452631451/MRF24J40.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1452631451/MRF24J40.o.d" -o ${OBJECTDIR}/_ext/1452631451/MRF24J40.o ../LocalFiles/MRF24J40.c     
	
${OBJECTDIR}/_ext/56957362/MRF49XA.o: ../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/56957362" 
	@${RM} ${OBJECTDIR}/_ext/56957362/MRF49XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/56957362/MRF49XA.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/56957362/MRF49XA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/56957362/MRF49XA.o.d" -o ${OBJECTDIR}/_ext/56957362/MRF49XA.o ../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c     
	
${OBJECTDIR}/_ext/56838198/MRF89XA.o: ../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/56838198" 
	@${RM} ${OBJECTDIR}/_ext/56838198/MRF89XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/56838198/MRF89XA.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/56838198/MRF89XA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/56838198/MRF89XA.o.d" -o ${OBJECTDIR}/_ext/56838198/MRF89XA.o ../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c     
	
${OBJECTDIR}/_ext/594816914/crc.o: ../../../../Microchip/Transceivers/crc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/594816914" 
	@${RM} ${OBJECTDIR}/_ext/594816914/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/594816914/crc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/594816914/crc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/594816914/crc.o.d" -o ${OBJECTDIR}/_ext/594816914/crc.o ../../../../Microchip/Transceivers/crc.c     
	
${OBJECTDIR}/_ext/594816914/security.o: ../../../../Microchip/Transceivers/security.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/594816914" 
	@${RM} ${OBJECTDIR}/_ext/594816914/security.o.d 
	@${RM} ${OBJECTDIR}/_ext/594816914/security.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/594816914/security.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/594816914/security.o.d" -o ${OBJECTDIR}/_ext/594816914/security.o ../../../../Microchip/Transceivers/security.c     
	
${OBJECTDIR}/_ext/1310019475/WF_Eint.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WF_Eint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WF_Eint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WF_Eint.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WF_Eint.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WF_Eint.o.d" -o ${OBJECTDIR}/_ext/1310019475/WF_Eint.o "../../../../Microchip/TCPIP Stack/WiFi/WF_Eint.c"     
	
${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WF_pbkdf2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o.d" -o ${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o "../../../../Microchip/TCPIP Stack/WiFi/WF_pbkdf2.c"     
	
${OBJECTDIR}/_ext/1310019475/WF_Spi.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WF_Spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WF_Spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WF_Spi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WF_Spi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WF_Spi.o.d" -o ${OBJECTDIR}/_ext/1310019475/WF_Spi.o "../../../../Microchip/TCPIP Stack/WiFi/WF_Spi.c"     
	
${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o "../../../../Microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.c"     
	
${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o "../../../../Microchip/TCPIP Stack/WiFi/WFConnectionManager.c"     
	
${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o "../../../../Microchip/TCPIP Stack/WiFi/WFConnectionProfile.c"     
	
${OBJECTDIR}/_ext/1310019475/WFConsole.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConsole.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsole.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsole.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFConsole.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConsole.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConsole.o "../../../../Microchip/TCPIP Stack/WiFi/WFConsole.c"     
	
${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.c"     
	
${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.c"     
	
${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.c"     
	
${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.c"     
	
${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgs.c"     
	
${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o "../../../../Microchip/TCPIP Stack/WiFi/WFDataTxRx.c"     
	
${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFDebugStrings.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o "../../../../Microchip/TCPIP Stack/WiFi/WFDebugStrings.c"     
	
${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFDriverCom_24G.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o "../../../../Microchip/TCPIP Stack/WiFi/WFDriverCom_24G.c"     
	
${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFDriverRaw_24G.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o "../../../../Microchip/TCPIP Stack/WiFi/WFDriverRaw_24G.c"     
	
${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o "../../../../Microchip/TCPIP Stack/WiFi/WFEasyConfig.c"     
	
${OBJECTDIR}/_ext/1310019475/WFEventHandler.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFEventHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFEventHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFEventHandler.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFEventHandler.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFEventHandler.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFEventHandler.o "../../../../Microchip/TCPIP Stack/WiFi/WFEventHandler.c"     
	
${OBJECTDIR}/_ext/1310019475/WFInit.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFInit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFInit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFInit.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFInit.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFInit.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFInit.o "../../../../Microchip/TCPIP Stack/WiFi/WFInit.c"     
	
${OBJECTDIR}/_ext/1310019475/WFMac_24G.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFMac_24G.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFMac_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFMac_24G.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFMac_24G.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFMac_24G.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFMac_24G.o "../../../../Microchip/TCPIP Stack/WiFi/WFMac_24G.c"     
	
${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg_24G.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o "../../../../Microchip/TCPIP Stack/WiFi/WFMgmtMsg_24G.c"     
	
${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFParamMsg_24G.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o "../../../../Microchip/TCPIP Stack/WiFi/WFParamMsg_24G.c"     
	
${OBJECTDIR}/_ext/1310019475/WFPowerSave.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFPowerSave.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFPowerSave.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFPowerSave.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFPowerSave.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFPowerSave.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFPowerSave.o "../../../../Microchip/TCPIP Stack/WiFi/WFPowerSave.c"     
	
${OBJECTDIR}/_ext/1310019475/WFScan.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFScan.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFScan.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFScan.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFScan.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFScan.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFScan.o "../../../../Microchip/TCPIP Stack/WiFi/WFScan.c"     
	
${OBJECTDIR}/_ext/1310019475/WFTxPower.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFTxPower.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFTxPower.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFTxPower.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFTxPower.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFTxPower.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFTxPower.o "../../../../Microchip/TCPIP Stack/WiFi/WFTxPower.c"     
	
${OBJECTDIR}/_ext/1850237697/MiWi.o: ../../../../Microchip/WirelessProtocols/MiWi/MiWi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1850237697" 
	@${RM} ${OBJECTDIR}/_ext/1850237697/MiWi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1850237697/MiWi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1850237697/MiWi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1850237697/MiWi.o.d" -o ${OBJECTDIR}/_ext/1850237697/MiWi.o ../../../../Microchip/WirelessProtocols/MiWi/MiWi.c     
	
${OBJECTDIR}/_ext/1179125038/MiWiPRO.o: ../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179125038" 
	@${RM} ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179125038/MiWiPRO.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1179125038/MiWiPRO.o.d" -o ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o ../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c     
	
${OBJECTDIR}/_ext/355958077/P2P.o: ../../../../Microchip/WirelessProtocols/P2P/P2P.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/355958077" 
	@${RM} ${OBJECTDIR}/_ext/355958077/P2P.o.d 
	@${RM} ${OBJECTDIR}/_ext/355958077/P2P.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/355958077/P2P.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/355958077/P2P.o.d" -o ${OBJECTDIR}/_ext/355958077/P2P.o ../../../../Microchip/WirelessProtocols/P2P/P2P.c     
	
${OBJECTDIR}/_ext/546296802/Console.o: ../../../../Microchip/WirelessProtocols/Console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/Console.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/Console.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/546296802/Console.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/546296802/Console.o.d" -o ${OBJECTDIR}/_ext/546296802/Console.o ../../../../Microchip/WirelessProtocols/Console.c     
	
${OBJECTDIR}/_ext/546296802/EEPROM.o: ../../../../Microchip/WirelessProtocols/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/EEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/EEPROM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/546296802/EEPROM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/546296802/EEPROM.o.d" -o ${OBJECTDIR}/_ext/546296802/EEPROM.o ../../../../Microchip/WirelessProtocols/EEPROM.c     
	
${OBJECTDIR}/_ext/546296802/NVM.o: ../../../../Microchip/WirelessProtocols/NVM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/NVM.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/NVM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/546296802/NVM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/546296802/NVM.o.d" -o ${OBJECTDIR}/_ext/546296802/NVM.o ../../../../Microchip/WirelessProtocols/NVM.c     
	
${OBJECTDIR}/_ext/546296802/SymbolTime.o: ../../../../Microchip/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/SymbolTime.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/546296802/SymbolTime.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/546296802/SymbolTime.o.d" -o ${OBJECTDIR}/_ext/546296802/SymbolTime.o ../../../../Microchip/WirelessProtocols/SymbolTime.c     
	
${OBJECTDIR}/_ext/1472/CustomHTTPApp.o: ../CustomHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d" -o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ../CustomHTTPApp.c     
	
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MainDemo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/MainDemo.o.d" -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c     
	
${OBJECTDIR}/_ext/1472/UARTConfig.o: ../UARTConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/UARTConfig.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/UARTConfig.o.d" -o ${OBJECTDIR}/_ext/1472/UARTConfig.o ../UARTConfig.c     
	
${OBJECTDIR}/_ext/1472/WF_Config.o: ../WF_Config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/WF_Config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/WF_Config.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/WF_Config.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/WF_Config.o.d" -o ${OBJECTDIR}/_ext/1472/WF_Config.o ../WF_Config.c     
	
${OBJECTDIR}/_ext/1472/LCD_ST7032.o: ../LCD_ST7032.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/LCD_ST7032.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d" -o ${OBJECTDIR}/_ext/1472/LCD_ST7032.o ../LCD_ST7032.c     
	
${OBJECTDIR}/_ext/1472/MiWi_SPI.o: ../MiWi_SPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MiWi_SPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MiWi_SPI.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MiWi_SPI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/MiWi_SPI.o.d" -o ${OBJECTDIR}/_ext/1472/MiWi_SPI.o ../MiWi_SPI.c     
	
${OBJECTDIR}/_ext/1472/Storage.o: ../Storage.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Storage.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Storage.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Storage.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/Storage.o.d" -o ${OBJECTDIR}/_ext/1472/Storage.o ../Storage.c     
	
${OBJECTDIR}/_ext/1472/MPFSImg2.o: ../MPFSImg2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MPFSImg2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MPFSImg2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MPFSImg2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/MPFSImg2.o.d" -o ${OBJECTDIR}/_ext/1472/MPFSImg2.o ../MPFSImg2.c     
	
${OBJECTDIR}/_ext/1472/SelfTestMode.o: ../SelfTestMode.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/SelfTestMode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SelfTestMode.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/SelfTestMode.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/SelfTestMode.o.d" -o ${OBJECTDIR}/_ext/1472/SelfTestMode.o ../SelfTestMode.c     
	
else
${OBJECTDIR}/_ext/1622303505/Announce.o: ../../../../Microchip/TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Announce.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/Announce.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/Announce.o.d" -o ${OBJECTDIR}/_ext/1622303505/Announce.o "../../../../Microchip/TCPIP Stack/Announce.c"     
	
${OBJECTDIR}/_ext/1622303505/ARP.o: ../../../../Microchip/TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ARP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ARP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/ARP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/ARP.o.d" -o ${OBJECTDIR}/_ext/1622303505/ARP.o "../../../../Microchip/TCPIP Stack/ARP.c"     
	
${OBJECTDIR}/_ext/1622303505/AutoIP.o: ../../../../Microchip/TCPIP\ Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/AutoIP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/AutoIP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/AutoIP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/AutoIP.o.d" -o ${OBJECTDIR}/_ext/1622303505/AutoIP.o "../../../../Microchip/TCPIP Stack/AutoIP.c"     
	
${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o: ../../../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o.d" -o ${OBJECTDIR}/_ext/1622303505/BerkeleyAPI.o "../../../../Microchip/TCPIP Stack/BerkeleyAPI.c"     
	
${OBJECTDIR}/_ext/1622303505/Delay.o: ../../../../Microchip/TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Delay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/Delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/Delay.o.d" -o ${OBJECTDIR}/_ext/1622303505/Delay.o "../../../../Microchip/TCPIP Stack/Delay.c"     
	
${OBJECTDIR}/_ext/1622303505/DNS.o: ../../../../Microchip/TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/DNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/DNS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/DNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/DNS.o.d" -o ${OBJECTDIR}/_ext/1622303505/DNS.o "../../../../Microchip/TCPIP Stack/DNS.c"     
	
${OBJECTDIR}/_ext/1622303505/DNSs.o: ../../../../Microchip/TCPIP\ Stack/DNSs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/DNSs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/DNSs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/DNSs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/DNSs.o.d" -o ${OBJECTDIR}/_ext/1622303505/DNSs.o "../../../../Microchip/TCPIP Stack/DNSs.c"     
	
${OBJECTDIR}/_ext/1622303505/DynDNS.o: ../../../../Microchip/TCPIP\ Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/DynDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/DynDNS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/DynDNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/DynDNS.o.d" -o ${OBJECTDIR}/_ext/1622303505/DynDNS.o "../../../../Microchip/TCPIP Stack/DynDNS.c"     
	
${OBJECTDIR}/_ext/1622303505/ENC28J60.o: ../../../../Microchip/TCPIP\ Stack/ENC28J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ENC28J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ENC28J60.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/ENC28J60.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/ENC28J60.o.d" -o ${OBJECTDIR}/_ext/1622303505/ENC28J60.o "../../../../Microchip/TCPIP Stack/ENC28J60.c"     
	
${OBJECTDIR}/_ext/1622303505/ENCX24J600.o: ../../../../Microchip/TCPIP\ Stack/ENCX24J600.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ENCX24J600.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ENCX24J600.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/ENCX24J600.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/ENCX24J600.o.d" -o ${OBJECTDIR}/_ext/1622303505/ENCX24J600.o "../../../../Microchip/TCPIP Stack/ENCX24J600.c"     
	
${OBJECTDIR}/_ext/1622303505/FTP.o: ../../../../Microchip/TCPIP\ Stack/FTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/FTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/FTP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/FTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/FTP.o.d" -o ${OBJECTDIR}/_ext/1622303505/FTP.o "../../../../Microchip/TCPIP Stack/FTP.c"     
	
${OBJECTDIR}/_ext/1622303505/Hashes.o: ../../../../Microchip/TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Hashes.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/Hashes.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/Hashes.o.d" -o ${OBJECTDIR}/_ext/1622303505/Hashes.o "../../../../Microchip/TCPIP Stack/Hashes.c"     
	
${OBJECTDIR}/_ext/1622303505/Helpers.o: ../../../../Microchip/TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Helpers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/Helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/Helpers.o.d" -o ${OBJECTDIR}/_ext/1622303505/Helpers.o "../../../../Microchip/TCPIP Stack/Helpers.c"     
	
${OBJECTDIR}/_ext/1622303505/HTTP2.o: ../../../../Microchip/TCPIP\ Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/HTTP2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/HTTP2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/HTTP2.o.d" -o ${OBJECTDIR}/_ext/1622303505/HTTP2.o "../../../../Microchip/TCPIP Stack/HTTP2.c"     
	
${OBJECTDIR}/_ext/1622303505/ICMP.o: ../../../../Microchip/TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ICMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ICMP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/ICMP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/ICMP.o.d" -o ${OBJECTDIR}/_ext/1622303505/ICMP.o "../../../../Microchip/TCPIP Stack/ICMP.c"     
	
${OBJECTDIR}/_ext/1622303505/IP.o: ../../../../Microchip/TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/IP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/IP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/IP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/IP.o.d" -o ${OBJECTDIR}/_ext/1622303505/IP.o "../../../../Microchip/TCPIP Stack/IP.c"     
	
${OBJECTDIR}/_ext/1622303505/LCDBlocking.o: ../../../../Microchip/TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/LCDBlocking.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/LCDBlocking.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/LCDBlocking.o.d" -o ${OBJECTDIR}/_ext/1622303505/LCDBlocking.o "../../../../Microchip/TCPIP Stack/LCDBlocking.c"     
	
${OBJECTDIR}/_ext/1622303505/MPFS2.o: ../../../../Microchip/TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/MPFS2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/MPFS2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/MPFS2.o.d" -o ${OBJECTDIR}/_ext/1622303505/MPFS2.o "../../../../Microchip/TCPIP Stack/MPFS2.c"     
	
${OBJECTDIR}/_ext/1622303505/NBNS.o: ../../../../Microchip/TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/NBNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/NBNS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/NBNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/NBNS.o.d" -o ${OBJECTDIR}/_ext/1622303505/NBNS.o "../../../../Microchip/TCPIP Stack/NBNS.c"     
	
${OBJECTDIR}/_ext/1622303505/Reboot.o: ../../../../Microchip/TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Reboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Reboot.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/Reboot.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/Reboot.o.d" -o ${OBJECTDIR}/_ext/1622303505/Reboot.o "../../../../Microchip/TCPIP Stack/Reboot.c"     
	
${OBJECTDIR}/_ext/1622303505/SMTP.o: ../../../../Microchip/TCPIP\ Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SMTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SMTP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/SMTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/SMTP.o.d" -o ${OBJECTDIR}/_ext/1622303505/SMTP.o "../../../../Microchip/TCPIP Stack/SMTP.c"     
	
${OBJECTDIR}/_ext/1622303505/SNMP.o: ../../../../Microchip/TCPIP\ Stack/SNMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SNMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SNMP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/SNMP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/SNMP.o.d" -o ${OBJECTDIR}/_ext/1622303505/SNMP.o "../../../../Microchip/TCPIP Stack/SNMP.c"     
	
${OBJECTDIR}/_ext/1622303505/SNTP.o: ../../../../Microchip/TCPIP\ Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SNTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SNTP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/SNTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/SNTP.o.d" -o ${OBJECTDIR}/_ext/1622303505/SNTP.o "../../../../Microchip/TCPIP Stack/SNTP.c"     
	
${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o: ../../../../Microchip/TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o.d" -o ${OBJECTDIR}/_ext/1622303505/SPIEEPROM.o "../../../../Microchip/TCPIP Stack/SPIEEPROM.c"     
	
${OBJECTDIR}/_ext/1622303505/SPIFlash.o: ../../../../Microchip/TCPIP\ Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SPIFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SPIFlash.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/SPIFlash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/SPIFlash.o.d" -o ${OBJECTDIR}/_ext/1622303505/SPIFlash.o "../../../../Microchip/TCPIP Stack/SPIFlash.c"     
	
${OBJECTDIR}/_ext/1622303505/SPIRAM.o: ../../../../Microchip/TCPIP\ Stack/SPIRAM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SPIRAM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/SPIRAM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/SPIRAM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/SPIRAM.o.d" -o ${OBJECTDIR}/_ext/1622303505/SPIRAM.o "../../../../Microchip/TCPIP Stack/SPIRAM.c"     
	
${OBJECTDIR}/_ext/1622303505/StackTsk.o: ../../../../Microchip/TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/StackTsk.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/StackTsk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/StackTsk.o.d" -o ${OBJECTDIR}/_ext/1622303505/StackTsk.o "../../../../Microchip/TCPIP Stack/StackTsk.c"     
	
${OBJECTDIR}/_ext/1622303505/TCP.o: ../../../../Microchip/TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/TCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/TCP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/TCP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/TCP.o.d" -o ${OBJECTDIR}/_ext/1622303505/TCP.o "../../../../Microchip/TCPIP Stack/TCP.c"     
	
${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o: ../../../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/1622303505/TCPPerformanceTest.o "../../../../Microchip/TCPIP Stack/TCPPerformanceTest.c"     
	
${OBJECTDIR}/_ext/1622303505/Telnet.o: ../../../../Microchip/TCPIP\ Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Telnet.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/Telnet.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/Telnet.o.d" -o ${OBJECTDIR}/_ext/1622303505/Telnet.o "../../../../Microchip/TCPIP Stack/Telnet.c"     
	
${OBJECTDIR}/_ext/1622303505/TFTPc.o: ../../../../Microchip/TCPIP\ Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/TFTPc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/TFTPc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/TFTPc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/TFTPc.o.d" -o ${OBJECTDIR}/_ext/1622303505/TFTPc.o "../../../../Microchip/TCPIP Stack/TFTPc.c"     
	
${OBJECTDIR}/_ext/1622303505/Tick.o: ../../../../Microchip/TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/Tick.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/Tick.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/Tick.o.d" -o ${OBJECTDIR}/_ext/1622303505/Tick.o "../../../../Microchip/TCPIP Stack/Tick.c"     
	
${OBJECTDIR}/_ext/1622303505/UART.o: ../../../../Microchip/TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UART.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/UART.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/UART.o.d" -o ${OBJECTDIR}/_ext/1622303505/UART.o "../../../../Microchip/TCPIP Stack/UART.c"     
	
${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o: ../../../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o.d" -o ${OBJECTDIR}/_ext/1622303505/UART2TCPBridge.o "../../../../Microchip/TCPIP Stack/UART2TCPBridge.c"     
	
${OBJECTDIR}/_ext/1622303505/UDP.o: ../../../../Microchip/TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UDP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UDP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/UDP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/UDP.o.d" -o ${OBJECTDIR}/_ext/1622303505/UDP.o "../../../../Microchip/TCPIP Stack/UDP.c"     
	
${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o: ../../../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/1622303505/UDPPerformanceTest.o "../../../../Microchip/TCPIP Stack/UDPPerformanceTest.c"     
	
${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o: ../../../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o.d" -o ${OBJECTDIR}/_ext/1622303505/ZeroconfHelper.o "../../../../Microchip/TCPIP Stack/ZeroconfHelper.c"     
	
${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o: ../../../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o.d" -o ${OBJECTDIR}/_ext/1622303505/ZeroconfLinkLocal.o "../../../../Microchip/TCPIP Stack/ZeroconfLinkLocal.c"     
	
${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o: ../../../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1622303505" 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o.d" -o ${OBJECTDIR}/_ext/1622303505/ZeroconfMulticastDNS.o "../../../../Microchip/TCPIP Stack/ZeroconfMulticastDNS.c"     
	
${OBJECTDIR}/_ext/1452631451/DHCP.o: ../LocalFiles/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1452631451" 
	@${RM} ${OBJECTDIR}/_ext/1452631451/DHCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1452631451/DHCP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1452631451/DHCP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1452631451/DHCP.o.d" -o ${OBJECTDIR}/_ext/1452631451/DHCP.o ../LocalFiles/DHCP.c     
	
${OBJECTDIR}/_ext/1452631451/DHCPs.o: ../LocalFiles/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1452631451" 
	@${RM} ${OBJECTDIR}/_ext/1452631451/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1452631451/DHCPs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1452631451/DHCPs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1452631451/DHCPs.o.d" -o ${OBJECTDIR}/_ext/1452631451/DHCPs.o ../LocalFiles/DHCPs.c     
	
${OBJECTDIR}/_ext/1452631451/MRF24J40.o: ../LocalFiles/MRF24J40.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1452631451" 
	@${RM} ${OBJECTDIR}/_ext/1452631451/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/1452631451/MRF24J40.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1452631451/MRF24J40.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1452631451/MRF24J40.o.d" -o ${OBJECTDIR}/_ext/1452631451/MRF24J40.o ../LocalFiles/MRF24J40.c     
	
${OBJECTDIR}/_ext/56957362/MRF49XA.o: ../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/56957362" 
	@${RM} ${OBJECTDIR}/_ext/56957362/MRF49XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/56957362/MRF49XA.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/56957362/MRF49XA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/56957362/MRF49XA.o.d" -o ${OBJECTDIR}/_ext/56957362/MRF49XA.o ../../../../Microchip/Transceivers/MRF49XA/MRF49XA.c     
	
${OBJECTDIR}/_ext/56838198/MRF89XA.o: ../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/56838198" 
	@${RM} ${OBJECTDIR}/_ext/56838198/MRF89XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/56838198/MRF89XA.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/56838198/MRF89XA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/56838198/MRF89XA.o.d" -o ${OBJECTDIR}/_ext/56838198/MRF89XA.o ../../../../Microchip/Transceivers/MRF89XA/MRF89XA.c     
	
${OBJECTDIR}/_ext/594816914/crc.o: ../../../../Microchip/Transceivers/crc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/594816914" 
	@${RM} ${OBJECTDIR}/_ext/594816914/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/594816914/crc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/594816914/crc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/594816914/crc.o.d" -o ${OBJECTDIR}/_ext/594816914/crc.o ../../../../Microchip/Transceivers/crc.c     
	
${OBJECTDIR}/_ext/594816914/security.o: ../../../../Microchip/Transceivers/security.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/594816914" 
	@${RM} ${OBJECTDIR}/_ext/594816914/security.o.d 
	@${RM} ${OBJECTDIR}/_ext/594816914/security.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/594816914/security.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/594816914/security.o.d" -o ${OBJECTDIR}/_ext/594816914/security.o ../../../../Microchip/Transceivers/security.c     
	
${OBJECTDIR}/_ext/1310019475/WF_Eint.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WF_Eint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WF_Eint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WF_Eint.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WF_Eint.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WF_Eint.o.d" -o ${OBJECTDIR}/_ext/1310019475/WF_Eint.o "../../../../Microchip/TCPIP Stack/WiFi/WF_Eint.c"     
	
${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WF_pbkdf2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o.d" -o ${OBJECTDIR}/_ext/1310019475/WF_pbkdf2.o "../../../../Microchip/TCPIP Stack/WiFi/WF_pbkdf2.c"     
	
${OBJECTDIR}/_ext/1310019475/WF_Spi.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WF_Spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WF_Spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WF_Spi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WF_Spi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WF_Spi.o.d" -o ${OBJECTDIR}/_ext/1310019475/WF_Spi.o "../../../../Microchip/TCPIP Stack/WiFi/WF_Spi.c"     
	
${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConnectionAlgorithm.o "../../../../Microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.c"     
	
${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConnectionManager.o "../../../../Microchip/TCPIP Stack/WiFi/WFConnectionManager.c"     
	
${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConnectionProfile.o "../../../../Microchip/TCPIP Stack/WiFi/WFConnectionProfile.c"     
	
${OBJECTDIR}/_ext/1310019475/WFConsole.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConsole.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsole.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsole.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFConsole.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConsole.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConsole.o "../../../../Microchip/TCPIP Stack/WiFi/WFConsole.c"     
	
${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConsoleIfconfig.o "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.c"     
	
${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConsoleIwconfig.o "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.c"     
	
${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConsoleIwpriv.o "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.c"     
	
${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgHandler.o "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.c"     
	
${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFConsoleMsgs.o "../../../../Microchip/TCPIP Stack/WiFi/WFConsoleMsgs.c"     
	
${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFDataTxRx.o "../../../../Microchip/TCPIP Stack/WiFi/WFDataTxRx.c"     
	
${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFDebugStrings.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFDebugStrings.o "../../../../Microchip/TCPIP Stack/WiFi/WFDebugStrings.c"     
	
${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFDriverCom_24G.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFDriverCom_24G.o "../../../../Microchip/TCPIP Stack/WiFi/WFDriverCom_24G.c"     
	
${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFDriverRaw_24G.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFDriverRaw_24G.o "../../../../Microchip/TCPIP Stack/WiFi/WFDriverRaw_24G.c"     
	
${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFEasyConfig.o "../../../../Microchip/TCPIP Stack/WiFi/WFEasyConfig.c"     
	
${OBJECTDIR}/_ext/1310019475/WFEventHandler.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFEventHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFEventHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFEventHandler.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFEventHandler.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFEventHandler.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFEventHandler.o "../../../../Microchip/TCPIP Stack/WiFi/WFEventHandler.c"     
	
${OBJECTDIR}/_ext/1310019475/WFInit.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFInit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFInit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFInit.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFInit.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFInit.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFInit.o "../../../../Microchip/TCPIP Stack/WiFi/WFInit.c"     
	
${OBJECTDIR}/_ext/1310019475/WFMac_24G.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFMac_24G.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFMac_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFMac_24G.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFMac_24G.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFMac_24G.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFMac_24G.o "../../../../Microchip/TCPIP Stack/WiFi/WFMac_24G.c"     
	
${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg_24G.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFMgmtMsg_24G.o "../../../../Microchip/TCPIP Stack/WiFi/WFMgmtMsg_24G.c"     
	
${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFParamMsg_24G.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFParamMsg_24G.o "../../../../Microchip/TCPIP Stack/WiFi/WFParamMsg_24G.c"     
	
${OBJECTDIR}/_ext/1310019475/WFPowerSave.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFPowerSave.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFPowerSave.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFPowerSave.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFPowerSave.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFPowerSave.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFPowerSave.o "../../../../Microchip/TCPIP Stack/WiFi/WFPowerSave.c"     
	
${OBJECTDIR}/_ext/1310019475/WFScan.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFScan.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFScan.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFScan.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFScan.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFScan.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFScan.o "../../../../Microchip/TCPIP Stack/WiFi/WFScan.c"     
	
${OBJECTDIR}/_ext/1310019475/WFTxPower.o: ../../../../Microchip/TCPIP\ Stack/WiFi/WFTxPower.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1310019475" 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFTxPower.o.d 
	@${RM} ${OBJECTDIR}/_ext/1310019475/WFTxPower.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1310019475/WFTxPower.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1310019475/WFTxPower.o.d" -o ${OBJECTDIR}/_ext/1310019475/WFTxPower.o "../../../../Microchip/TCPIP Stack/WiFi/WFTxPower.c"     
	
${OBJECTDIR}/_ext/1850237697/MiWi.o: ../../../../Microchip/WirelessProtocols/MiWi/MiWi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1850237697" 
	@${RM} ${OBJECTDIR}/_ext/1850237697/MiWi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1850237697/MiWi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1850237697/MiWi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1850237697/MiWi.o.d" -o ${OBJECTDIR}/_ext/1850237697/MiWi.o ../../../../Microchip/WirelessProtocols/MiWi/MiWi.c     
	
${OBJECTDIR}/_ext/1179125038/MiWiPRO.o: ../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1179125038" 
	@${RM} ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1179125038/MiWiPRO.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1179125038/MiWiPRO.o.d" -o ${OBJECTDIR}/_ext/1179125038/MiWiPRO.o ../../../../Microchip/WirelessProtocols/MiWiPRO/MiWiPRO.c     
	
${OBJECTDIR}/_ext/355958077/P2P.o: ../../../../Microchip/WirelessProtocols/P2P/P2P.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/355958077" 
	@${RM} ${OBJECTDIR}/_ext/355958077/P2P.o.d 
	@${RM} ${OBJECTDIR}/_ext/355958077/P2P.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/355958077/P2P.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/355958077/P2P.o.d" -o ${OBJECTDIR}/_ext/355958077/P2P.o ../../../../Microchip/WirelessProtocols/P2P/P2P.c     
	
${OBJECTDIR}/_ext/546296802/Console.o: ../../../../Microchip/WirelessProtocols/Console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/Console.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/Console.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/546296802/Console.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/546296802/Console.o.d" -o ${OBJECTDIR}/_ext/546296802/Console.o ../../../../Microchip/WirelessProtocols/Console.c     
	
${OBJECTDIR}/_ext/546296802/EEPROM.o: ../../../../Microchip/WirelessProtocols/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/EEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/EEPROM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/546296802/EEPROM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/546296802/EEPROM.o.d" -o ${OBJECTDIR}/_ext/546296802/EEPROM.o ../../../../Microchip/WirelessProtocols/EEPROM.c     
	
${OBJECTDIR}/_ext/546296802/NVM.o: ../../../../Microchip/WirelessProtocols/NVM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/NVM.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/NVM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/546296802/NVM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/546296802/NVM.o.d" -o ${OBJECTDIR}/_ext/546296802/NVM.o ../../../../Microchip/WirelessProtocols/NVM.c     
	
${OBJECTDIR}/_ext/546296802/SymbolTime.o: ../../../../Microchip/WirelessProtocols/SymbolTime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/546296802" 
	@${RM} ${OBJECTDIR}/_ext/546296802/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/546296802/SymbolTime.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/546296802/SymbolTime.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/546296802/SymbolTime.o.d" -o ${OBJECTDIR}/_ext/546296802/SymbolTime.o ../../../../Microchip/WirelessProtocols/SymbolTime.c     
	
${OBJECTDIR}/_ext/1472/CustomHTTPApp.o: ../CustomHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d" -o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ../CustomHTTPApp.c     
	
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MainDemo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/MainDemo.o.d" -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c     
	
${OBJECTDIR}/_ext/1472/UARTConfig.o: ../UARTConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/UARTConfig.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/UARTConfig.o.d" -o ${OBJECTDIR}/_ext/1472/UARTConfig.o ../UARTConfig.c     
	
${OBJECTDIR}/_ext/1472/WF_Config.o: ../WF_Config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/WF_Config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/WF_Config.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/WF_Config.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/WF_Config.o.d" -o ${OBJECTDIR}/_ext/1472/WF_Config.o ../WF_Config.c     
	
${OBJECTDIR}/_ext/1472/LCD_ST7032.o: ../LCD_ST7032.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/LCD_ST7032.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/LCD_ST7032.o.d" -o ${OBJECTDIR}/_ext/1472/LCD_ST7032.o ../LCD_ST7032.c     
	
${OBJECTDIR}/_ext/1472/MiWi_SPI.o: ../MiWi_SPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MiWi_SPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MiWi_SPI.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MiWi_SPI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/MiWi_SPI.o.d" -o ${OBJECTDIR}/_ext/1472/MiWi_SPI.o ../MiWi_SPI.c     
	
${OBJECTDIR}/_ext/1472/Storage.o: ../Storage.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Storage.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Storage.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Storage.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/Storage.o.d" -o ${OBJECTDIR}/_ext/1472/Storage.o ../Storage.c     
	
${OBJECTDIR}/_ext/1472/MPFSImg2.o: ../MPFSImg2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/MPFSImg2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MPFSImg2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MPFSImg2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/MPFSImg2.o.d" -o ${OBJECTDIR}/_ext/1472/MPFSImg2.o ../MPFSImg2.c     
	
${OBJECTDIR}/_ext/1472/SelfTestMode.o: ../SelfTestMode.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/SelfTestMode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SelfTestMode.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/SelfTestMode.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DCFG_INCLUDE_PIC32_EVAL_BOARD -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -I".." -I"../../../Microchip/Include" -I"../../../../Microchip/Include" -I"../../../../Microchip/Include/TCPIP Stack" -I"../Configs" -I"../LocalFiles" -Wall -MMD -MF "${OBJECTDIR}/_ext/1472/SelfTestMode.o.d" -o ${OBJECTDIR}/_ext/1472/SelfTestMode.o ../SelfTestMode.c     
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MiWiToWiFiGatewayDemo.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MiWiToWiFiGatewayDemo.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}              -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/MiWiToWiFiGatewayDemo.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MiWiToWiFiGatewayDemo.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}            -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MiWiToWiFiGatewayDemo.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/XC32_EVAL_BOARD
	${RM} -r dist/XC32_EVAL_BOARD

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
