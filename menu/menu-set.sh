#!/bin/bash

BIGreen='\033[0;32m'
NC='\033[0;37m'
BICyan='\033[0;34m' 

clear
echo -e "$BICyan┌─────────────────────────────────────────────────┐${NC}"
echo -e "$BICyan│${BIGreen}                  MENU SETTINGS               $BICyan   │$NC"
echo -e "$BICyan└─────────────────────────────────────────────────┘${NC}"
echo -e " $BICyan┌───────────────────────────────────────────────┐${NC}"
echo -e " $BICyan│$NC   ${BIGreen}[1]${NC}  • Change Host/Domain"
echo -e " $BICyan│$NC   ${BIGreen}[2]${NC}  • Renew Cert"
echo -e " $BICyan│$NC   ${BIGreen}[3]${NC}  • Check Running"
echo -e " $BICyan│$NC   ${BIGreen}[4]${NC}  • Change Banner SSH "
echo -e " $BICyan│$NC   ${BIGreen}[5]${NC}  • Restart Banner SSH "
echo -e " $BICyan│$NC   ${BIGreen}[6]${NC}  • Info Bandwidth"
echo -e " $BICyan│$NC   ${BIGreen}[7]${NC}  • Restart All Service "
echo -e " $BICyan│$NC   ${BIGreen}[8]${NC}  • Auto Reboot"
echo -e " $BICyan│$NC   ${BIGreen}[9]${NC}  • Reboot"
echo -e " $BICyan│$NC   ${BIGreen}[10]${NC} • Speedtest"
#echo -e " $BICyan│$NC   ${BIGreen}[11]${NC} • Set Limit Bw Vps"
echo -e " $BICyan│$NC   ${BIGreen}[11]${NC} • Upgrade Versi New Xray"
echo -e " $BICyan│$NC   ${BIGreen}[0]${NC}  • Balik Ke Menu"
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

