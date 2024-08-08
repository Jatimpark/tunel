#!/bin/bash

BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White
UWhite='\033[4;37m'       # White
On_IPurple='\033[0;105m'  #
On_IRed='\033[0;101m'
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White
NC='\033[0;37m'
PURPLE='\033[0;34m'
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }

# // Export Align
export BOLD="\e[1m"
export WARNING="${RED}\e[5m"
export UNDERLINE="\e[4m"

clear
echo -e "$PURPLE┌──────────────────────────────────────────┐${NC}"
echo -e "$PURPLE│\E[42;1;37m          SERVER PORT INFORMATION         $PURPLE│$NC"       
echo -e "$PURPLE└──────────────────────────────────────────┘${NC}"
echo -e "\033[0;37m  Port SSH Websocket       : \033[0;32m80, 8880, 2082\e[0m"
echo -e "\033[0;37m  Port SSH Websocket SSL   : \033[0;32m443, 8443, 2096\e[0m"
echo -e "\033[0;37m  Port SSH SSL             : \033[0;32m447,777\e[0m"
echo -e "\033[0;37m  Port OpenSSH             : \033[0;32m22\e[0m"
echo -e "\033[0;37m  Port SSH Dropbear        : \033[0;32m109,143\e[0m"
echo -e "\033[0;37m  Port Xray None TLS       : \033[0;32m80, 8880, 2082\e[0m"
echo -e "\033[0;37m  Port Xray TLS            : \033[0;32m443, 8443, 2096\e[0m"
echo -e "\033[0;37m  Port Vmess None TLS      : \033[0;32m80, 8880, 2082\e[0m"
echo -e "\033[0;37m  Port Vmess TLS           : \033[0;32m443, 8443, 2096\e[0m"
echo -e "\033[0;37m  Port Vmess GRPC          : \033[0;32m443, 8443, 2096\e[0m"
echo -e "\033[0;37m  Port Vless None TLS      : \033[0;32m80, 8880, 2082\e[0m"
echo -e "\033[0;37m  Port Vless TLS           : \033[0;32m443, 8443, 2096\e[0m"
echo -e "\033[0;37m  Port Vless GRPC          : \033[0;32m443, 8443, 2096\e[0m"
echo -e "\033[0;37m  Port Trojan WS           : \033[0;32m443, 8443, 2096\e[0m"
echo -e "\033[0;37m  Port Trojan GRPC         : \033[0;32m443, 8443, 2096\e[0m"
echo -e "\033[0;37m  Port ShadowSocks WS      : \033[0;32m443, 8443, 2096\e[0m"
echo -e "\033[0;37m  Port ShadowSocks GRPC    : \033[0;32m443, 8443, 2096\e[0m"
echo -e "$PURPLE└──────────────────────────────────────────┘${NC}"
echo -e ""
echo -e "\E[42;1;37m Owner wa.me/6281931615811 ${NC}"
echo -e ""
echo -e ""
read -n 1 -s -r -p "  Press any key to back on menu"
menu
esac
