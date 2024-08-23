#!/bin/bash

BIGreen='\033[0;32m'
NC='\033[0;37m'
BICyan='\033[0;34m' 
BIWhite='\033[1;97m'  
clear
echo -e "$BICyan┌─────────────────────────────────────────────────┐${NC}"
echo -e "$BICyan│${BIGreen}                  MENU SETTINGS               $BICyan   │$NC"
echo -e "$BICyan└─────────────────────────────────────────────────┘${NC}"
echo -e " $BICyan┌───────────────────────────────────────────────┐${NC}"
echo -e " $BICyan│$NC   ${BIGreen}[${BIWhite}1${NC}]${NC}  • Change Host/Domain"
echo -e " $BICyan│$NC   ${BIGreen}[${BIWhite}2${NC}]${NC}  • Renew Cert"
echo -e " $BICyan│$NC   ${BIGreen}[${BIWhite}3${NC}]${NC}  • Check Running"
echo -e " $BICyan│$NC   ${BIGreen}[${BIWhite}4${NC}]${NC}  • Change Banner SSH "
echo -e " $BICyan│$NC   ${BIGreen}[${BIWhite}5${NC}]${NC}  • Restart Banner SSH "
echo -e " $BICyan│$NC   ${BIGreen}[${BIWhite}6${NC}]${NC}  • Info Bandwidth"
echo -e " $BICyan│$NC   ${BIGreen}[${BIWhite}7${NC}]${NC}  • Restart All Service "
echo -e " $BICyan│$NC   ${BIGreen}[${BIWhite}8${NC}]${NC}  • Auto Reboot"
echo -e " $BICyan│$NC   ${BIGreen}[${BIWhite}9${NC}]${NC}  • Reboot"
echo -e " $BICyan│$NC   ${BIGreen}[${BIWhite}10${NC}]${NC} • Speedtest"
#echo -e " $BICyan│$NC   ${BIGreen}[11]${NC} • Set Limit Bw Vps"
echo -e " $BICyan│$NC   ${BIGreen}[${BIWhite}11${NC}]${NC} • Upgrade Versi New Xray"
echo -e " $BICyan│$NC   ${BIGreen}[${BIWhite}0${NC}]${NC}  • Balik Ke Menu"
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

