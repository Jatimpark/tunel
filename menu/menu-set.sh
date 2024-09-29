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
echo -e " $BICyan│${BIGreen}[${BIWhite}3${BIGreen}]${NC}  • Change Banner SSH "
echo -e " $BICyan│${BIGreen}[${BIWhite}4${BIGreen}]${NC}  • Restart Banner SSH "
echo -e " $BICyan│${BIGreen}[${BIWhite}5${BIGreen}]${NC}  • Info Bandwidth"
echo -e " $BICyan│${BIGreen}[${BIWhite}6${BIGreen}]${NC}  • Restart All Service "
echo -e " $BICyan│${BIGreen}[${BIWhite}7${BIGreen}]${NC}  • Auto Reboot"
echo -e " $BICyan│${BIGreen}[${BIWhite}8${BIGreen}]${NC}  • Set Auto Reboot"
echo -e " $BICyan│${BIGreen}[${BIWhite}9${BIGreen}]${NC}  • Reboot"
echo -e " $BICyan│${BIGreen}[${BIWhite}10${BIGreen}]${NC} • Speedtest"
echo -e " $BICyan│${BIGreen}[${BIWhite}11${BIGreen}]${NC} • Upgrade Versi New Xray"
echo -e " $BICyan│${BIGreen}[${BIWhite}12${BIGreen}]${NC} • Clean Data"
echo -e " $BICyan│${BIGreen}[${BIWhite}0${BIGreen}]${NC}  • Balik Ke Menu"
echo -e " $BICyan└───────────────────────────────────────────────┘${NC}"
echo -e ""
read -p "  Select menu :  "  opt
echo -e   ""
case $opt in
01 | 1) clear ; addhost ;;
02 | 2) clear ; certxray ;;
#03 | 3) clear ; running ;;
03 | 3) clear ; nano /etc/issue.net ;;
04 | 4) clear ; /etc/init.d/dropbear restart ;;
05 | 5) clear ; cek-bandwidth ;;
06 | 6) clear ; restart ;;
07 | 7) clear ; autoreboot ;;
08 | 8)clear ; jam ;;
09 | 9) clear ; reboot ;;
10) clear ; speedtest ;;
11) clear ; update-xray ;;
12) clear ; cleaner ;;
00 | 0) clear ; menu ;;
*) clear ; menu-set ;;
esac

