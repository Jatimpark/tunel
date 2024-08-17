#!/bin/bash
#vlx=$(grep -c -E "^#& " "/etc/xray/config.json")
#let vla=$vlx/2
vmc=$(grep -c -E "^### " "/etc/xray/config.json")
let vma=$vmc/2
ssh1="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
#trx=$(grep -c -E "^#! " "/etc/xray/config.json")
#let tra=$trx/2
#ssx=$(grep -c -E "^## " "/etc/xray/config.json")
#let ssa=$ssx/2
BIBlack='\033[1;90m'      # Black
BIRed='\033[0;31m'        # Red
BIGreen='\033[0;31m'      # Green
BIYellow='\033[0;33m'     # Yellow
BIBlue='\033[0;34m'       # Blue
BIPurple='\033[0;35m'     # Purple
BICyan='\033[0;34m'       # Cyan
BIWhite='\033[0m'      # White
UWhite='\033[0m'       # White
On_IPurple='\033[0;105m'  #
On_IRed='\033[0;101m'
IBlack='\033[0;90m'       # Black
IRed='\033[0;31m'         # Red
IGreen='\033[0;32m'       # Green
IYellow='\033[0;33m'      # Yellow
IBlue='\033[0;34m'        # Blue
IPurple='\033[0;55m'      # Purple
ICyan='\033[0;36m'        # Cyan
IWhite='\033[0;37m'       # White
NC='\033[0;37m'
RED='\033[0;31m'
GREEN='\033[0;32m'
green='\033[0;32m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
NC='\033[0;37m'
KN='\033[0;33m'
ORANGE='\033[0;33m'
PINK='\033[0;35m'
dtoday="$(vnstat -i eth0 | grep "today" | awk '{print $2" "substr ($3, 1, 1)}')"
utoday="$(vnstat -i eth0 | grep "today" | awk '{print $5" "substr ($6, 1, 1)}')"
ttoday="$(vnstat -i eth0 | grep "today" | awk '{print $8" "substr ($9, 1, 1)}')"
dyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $2" "substr ($3, 1, 1)}')"
uyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $5" "substr ($6, 1, 1)}')"
tyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $8" "substr ($9, 1, 1)}')"
dmon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $3" "substr ($4, 1, 1)}')"
umon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $6" "substr ($7, 1, 1)}')"
tmon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $9" "substr ($10, 1, 1)}')"
clear
clear
clear
clear && clear && clear
clear;clear;clear
cek=$(service ssh status | grep active | cut -d ' ' -f5)
if [ "$cek" = "active" ]; then
stat=-f5
else
stat=-f7
fi
ssh=$(service ssh status | grep active | cut -d ' ' $stat)
if [ "$ssh" = "active" ]; then
ressh="${green}ON${NC}"
else
ressh="${red}OFF${NC}"
fi
sshstunel=$(service stunnel5 status | grep active | cut -d ' ' $stat)
if [ "$sshstunel" = "active" ]; then
resst="${green}ON${NC}"
else
resst="${red}OFF${NC}"
fi
sshws=$(service ws-stunnel status | grep active | cut -d ' ' $stat)
if [ "$sshws" = "active" ]; then
ressshws="${green}ON${NC}"
else
ressshws="${red}OFF${NC}"
fi
ngx=$(service nginx status | grep active | cut -d ' ' $stat)
if [ "$ngx" = "active" ]; then
resngx="${green}ON${NC}"
else
resngx="${red}OFF${NC}"
fi
dbr=$(service dropbear status | grep active | cut -d ' ' $stat)
if [ "$dbr" = "active" ]; then
resdbr="${green}ON${NC}"
else
resdbr="${red}OFF${NC}"
fi
v2r=$(service xray status | grep active | cut -d ' ' $stat)
if [ "$v2r" = "active" ]; then
resv2r="${green}ON${NC}"
else
resv2r="${red}OFF${NC}"
fi
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10)
# TOTAL RAM
total_ram=` grep "MemTotal: " /proc/meminfo | awk '{ print $2}'`
totalram=$(($total_ram/1024))
CITY=$(curl -s ipinfo.io/city)
#IPVPS=$(curl -s ipinfo.io/ip)
IPVPS=$(curl -sS ifconfig.me)
RAM=$(free -m | awk 'NR==2 {print $2}')
#USAGERAM=$(free -m | awk 'NR==2 {print $3}')
MEMOFREE=$(printf '%-1s' "$(free -m | awk 'NR==2{printf "%.2f%%", $3*100/$2 }')")
LOADCPU=$(printf '%-0.00001s' "$(top -bn1 | awk '/Cpu/ { cpu = "" 100 - $8 "%" }; END { print cpu }')")
MODEL=$(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g')
CORE=$(printf '%-1s' "$(grep -c cpu[0-9] /proc/stat)")
DATEVPS=$(date +'%d/%m/%Y')
TIMEZONE=$(printf '%(%H:%M:%S)T')
clear
clear
clear
echo -e ""
echo -e "\E[44;1;39m ꧁࿇ SCRIPT SEDERHANA PENUH CINTA ࿇꧂ \E[0m"
echo -e ""
echo -e "${BICyan} ┌─────────────────────────────────────────────────────┐${NC}"
echo -e "${BICyan} │$NC\033[42m                   SYSTEM INFORMATION                ${BICyan}│${NC} "
echo -e "${BICyan} │ "
echo -e " ${BICyan}│  ${ICyan} Hostname     : ${NC}$HOSTNAME "
echo -e " ${BICyan}│  ${ICyan} Public IP    : ${NC}$IPVPS ${NC} "
echo -e " ${BICyan}│  ${ICyan} Domain       : ${NC}$(cat /etc/xray/domain) "
echo -e " ${BICyan}│  ${ICyan} ISP          : ${NC}$ISP "
echo -e " ${BICyan}│  ${ICyan} Total RAM    : ${NC}${totalram}MB  "
echo -e " ${BICyan}│  ${ICyan} Usage Memory :${NC} $MEMOFREE "
echo -e " ${BICyan}│  ${ICyan} LoadCPU      : ${NC}$LOADCPU% "
echo -e " ${BICyan}│  ${ICyan} Core System  : ${NC}$CORE "
echo -e " ${BICyan}│  ${ICyan} System OS    : ${NC}$MODEL "
echo -e " ${BICyan}│  ${ICyan} Date         : ${NC}$DATEVPS "
echo -e " ${BICyan}│  ${ICyan} Time         : ${NC}$TIMEZONE "
echo -e " ${BICyan}└─────────────────────────────────────────────────────┘${NC}"
echo -e " ${BICyan}╭═════════════════════════════════════════════════════╮${NC}"
echo -e "${BICyan} │                    ${NC}SSH     ${RED}: ${BIYellow}$ssh1      ${NC} "
echo -e "${BICyan} │                    ${NC}ALLXRAY ${RED}: ${BIYellow}$vma     ${NC} "
echo -e " ${BICyan}╰═════════════════════════════════════════════════════╯${NC}"
echo -e "${BICyan} ┌─────────────────────────────────────────────────────┐${NC}"
echo -e "    ${NC} SSH ${RED}: $ressh"" ${NC} NGINX ${RED}: $resngx"" ${NC}  XRAY ${RED}: $resv2r"" ${NC} TROJAN ${RED}: $resv2r"
echo -e "  ${NC}     STUNNEL ${RED}: $resst" "${NC} DROPBEAR ${RED}: $resdbr" "${NC} SSH-WS ${RED}: $ressshws"
echo -e " ${BICyan}└─────────────────────────────────────────────────────┘${NC}"
echo -e "$BICyan   ┌─────────────────────────────────────────────────┐${NC}"
echo -e "$BICyan   │${BIYellow}                    INFO MENU                $BICyan    │$NC"
echo -e "$BICyan   └─────────────────────────────────────────────────┘${NC}"
echo -e " ${BICyan}╭═════════════════════════════════════════════════════╮${NC}"
echo -e "${BICyan} │    ${ICyan}[${GREEN}01${ICyan}]${NC} • SSH-WS      "     "${BICyan}│    ${ICyan}[${GREEN}08${ICyan}]${NC} • CLEAR S          ${BICyan}│${NC}   "
echo -e "${BICyan} │    ${ICyan}[${GREEN}02${ICyan}]${NC} • VMESS-WS    "  "${BICyan}│    ${ICyan}[${GREEN}09${ICyan}]${NC} • INFO PORT        ${BICyan}│${NC}"
echo -e "${BICyan} │    ${ICyan}[${GREEN}03${ICyan}]${NC} • VLESS-WS    "   "${BICyan}│    ${ICyan}[${GREEN}10${ICyan}]${NC} • GOTOP X RAM      ${BICyan}│  ${NC} "
echo -e "${BICyan} │    ${ICyan}[${GREEN}04${ICyan}]${NC} • TROJAN-WS   "  "${BICyan}│    ${ICyan}[${GREEN}11${ICyan}] ${NC}• INFO SERVER      ${BICyan}│ ${NC}      "
echo -e "${BICyan} │    ${ICyan}[${GREEN}05${ICyan}]${NC} • TROJAN-GO   "   "${BICyan}│    ${ICyan}[${GREEN}12${ICyan}]${NC} • UPDATE MENU      ${BICyan}│${NC}"
echo -e "${BICyan} │    ${ICyan}[${GREEN}06${ICyan}]${NC} • SHADOWS   "  "  ${BICyan}│    ${ICyan}[${GREEN}13${ICyan}]${NC} • CEK LOG XRAY     ${BICyan}│${NC}"
echo -e "${BICyan} │    ${ICyan}[${GREEN}07${ICyan}]${NC} • MENU BACKUP " "${BICyan}│    ${ICyan}[${GREEN}14${ICyan}]${NC} • SYSTEM MENU      ${BICyan}│${NC}"
echo -e " ${BICyan}╰═════════════════════════════════════════════════════╯${NC}"
echo -e "${BICyan} ┌─────────────────────────────────────────────────────┐${NC}"
echo -e "${BICyan} │ ${NC}HARI INI${NC}: ${BIYellow}$ttoday$NC ${NC}KEMARIN${NC}: ${BIYellow}$tyest$NC ${NC}BULAN${NC}: ${BIYellow}$tmon$NC $NC"
echo -e "${BICyan} └─────────────────────────────────────────────────────┘${NC}"
echo -e "${BICyan} ┌─────────────────────────────────────────────────────┐${NC}"
echo -e "${GREEN}  ${RED}▁ ${CYAN}▂ ${GREEN}▄ ${ORANGE}▅${PINK} ▆${GREEN} ▇ ${RED}█${BLUE}𒆜${CYAN} ༻${NC}  SCRIPT ARYA BLITAR ${BLUE}༺ ${RED}𒆜${GREEN}█ ${ORANGE}▇ ${CYAN}▆ ${RED}▅ ${GREEN}▄ ${ORANGE}▂ ${PINK}▁\E[0m"
echo -e "${BICyan} └─────────────────────────────────────────────────────┘${NC}"
echo -e ""
DATE=$(date +'%d %B %Y')
datediff() {
d1=$(date -d "$1" +%s)
d2=$(date -d "$2" +%s)
echo -e " ${BICyan}│${ICyan}  Expiry In     : ${NC}$(( (d1 - d2) / 86400 )) ${ORANGE}Days $NC"
}
mai="datediff "$Exp" "$DATE""
echo -e " ${BICyan}┌─────────────────────────────────────────────────────┐${NC}"
echo -e " ${BICyan}│ ${ICyan} Version       : ${NC} GRATIS ${NC}"
echo -e " ${BICyan}└─────────────────────────────────────────────────────┘${NC}"
echo
read -p " Select menu : " opt
echo -e ""
case $opt in
1) clear ; menu-ssh ;;
2) clear ; menu-vmess ;;
3) clear ; menu-vless ;;
4) clear ; menu-trojan ;;
5) clear ; trojaan ;;
6) clear ; menu-ss.sh ;;
7) clear ; menu-backup ;;
8) clear ; clearlog ;;
9) clear ; info ;;
10) clear ; gotop ;;
11) clear ; infoserv ;;
12) clear ; update2 ;;
13) clear ; babi ;;
14) clear ; menu-set ;;
0) clear ; menu ;;
*) echo -e "" ; echo "Press any key to back exit" ; sleep 1 ; exit ;;
esac
