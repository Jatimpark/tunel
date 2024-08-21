#!/bin/bash

BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[0;32m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[0;34m'       # Cyan
BIWhite='\033[1;97m'      # White
UWhite='\033[4;37m'       # White
On_IPurple='\033[0;105m'  #
On_IRed='\033[0;101m'
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[1;33m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White
NC='\033[0;37m'

clear
echo -e "$BICyan┌─────────────────────────────────────────────────┐${NC}"
echo -e "$BICyan│${BIGreen}                  MENU SETTINGS               $BICyan   │$NC"
echo -e "$BICyan└─────────────────────────────────────────────────┘${NC}"
echo -e " $BICyan┌───────────────────────────────────────────────┐${NC}"
echo -e " $BICyan│${IYellow}[1]${NC}  • Change Host/Domain"
echo -e " $BICyan│${IYellow}[2]${NC}  • Renew Cert"
echo -e " $BICyan│${IYellow}[3]${NC}  • Check Running"
echo -e " $BICyan│${IYellow}[4]${NC}  • Change Banner SSH "
echo -e " $BICyan│${IYellow}[5]${NC}  • Restart Banner SSH "
echo -e " $BICyan│${IYellow}[6]${NC}  • Info Bandwidth"
echo -e " $BICyan│${IYellow}[7]${NC}  • Restart All Service "
echo -e " $BICyan│${IYellow}[8]${NC}  • Auto Reboot"
echo -e " $BICyan│${IYellow}[9]${NC}  • Reboot"
echo -e " $BICyan│${IYellow}[10]${NC} • Speedtest"
#echo -e " $BICyan│$NC   ${BIGreen}[11]${NC} • Set Limit Bw Vps"
echo -e " $BICyan│${IYellow}[11]${NC} • Upgrade Versi New Xray"
echo -e " $BICyan│${IYellow}[0]${NC}  • Balik Ke Menu"
echo -e " $BICyan└───────────────────────────────────────────────┘${NC}"
echo -e ""
read -p "  Select menu :  "  opt
echo -e   ""
case $opt in
01 | 1) clear ; addhost ;;
02 | 2) clear ; certxray ;;
03 | 3) clear ; running ;;
04 | 4) clear ; nano /etc/issue.net ;;
05 | 5) clear ; /etc/init.d/dropbear restart ;;
06 | 6) clear ; cek-bandwidth ;;
07 | 7) clear ; restart ;;
08 | 8) clear ; autoreboot ;;
09 | 9) clear ; reboot ;;
10) clear ; speedtest ;;
#11) clear ; cek-bw ;;
11) clear ; updatevray ;;
#13) clear ; update ;;
#14) clear ; nef ;;
#15) clear ; upray ;;
#16) clear ; up ;;
#17) clear ; up-opok ;;
00 | 0) clear ; menu ;;
*) clear ; menu-set ;;
esac

