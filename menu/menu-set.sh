#!/bin/bash

BIGreen='\033[0;32m'
NC='\033[0;37m'
BICyan='\033[0;34m' 
BIWhite='\033[1;97m'  
clear
echo -e "$BICyan┌─────────────────────────────────────────────────┐${NC}"
echo -e "$BICyan│$NC\033[42m                  MENU SETTINGS                  $BICyan│$NC"
echo -e "$BICyan└─────────────────────────────────────────────────┘${NC}"
echo -e " $BICyan┌───────────────────────────────────────────────┐${NC}"
echo -e " $BICyan│${BIGreen}[${BIWhite}1${BIGreen}]${NC}  • Change Host/Domain"
echo -e " $BICyan│${BIGreen}[${BIWhite}2${BIGreen}]${NC}  • Renew Cert"
echo -e " $BICyan│${BIGreen}[${BIWhite}3${BIGreen}]${NC}  • Check Running"
echo -e " $BICyan│${BIGreen}[${BIWhite}4${BIGreen}]${NC}  • Change Banner SSH "
echo -e " $BICyan│${BIGreen}[${BIWhite}5${BIGreen}]${NC}  • Restart Banner SSH "
echo -e " $BICyan│${BIGreen}[${BIWhite}6${BIGreen}]${NC}  • Info Bandwidth"
echo -e " $BICyan│${BIGreen}[${BIWhite}7${BIGreen}]${NC}  • Restart All Service "
echo -e " $BICyan│${BIGreen}[${BIWhite}8${BIGreen}]${NC}  • Auto Reboot"
echo -e " $BICyan│${BIGreen}[${BIWhite}9${BIGreen}]${NC}  • Reboot"
echo -e " $BICyan│${BIGreen}[${BIWhite}10${BIGreen}]${NC} • Speedtest"
#echo -e " $BICyan│$NC   ${BIGreen}[11]${NC} • Set Limit Bw Vps"
echo -e " $BICyan│${BIGreen}[${BIWhite}11${BIGreen}]${NC} • Upgrade Versi New Xray"
echo -e " $BICyan│${BIGreen}[${BIWhite}12${BIGreen}]${NC} • Clean Log"
echo -e " $BICyan│${BIGreen}[${BIWhite}0${BIGreen}]${NC}  • Balik Ke Menu"
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
11) clear ; update-xray ;;
12) clear ; cleaner ;;
#14) clear ; nef ;;
#15) clear ; upray ;;
#16) clear ; up ;;
#17) clear ; up-opok ;;
00 | 0) clear ; menu ;;
*) clear ; menu-set ;;
esac

