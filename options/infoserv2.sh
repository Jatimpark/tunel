#!/bin/bash
vmc=$(grep -c -E "^### " "/etc/xray/config.json")
let vma=$vmc/2
ssh1="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10)
IPVPS=$(curl -s ipinfo.io/ip)
MODEL=$(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g')
clear
neofetch

screenfetch
NC='\e[0m'
BLUE='\033[0;34m' 
GREEN='\033[0;32m' 
CYAN='\033[0;36m' 
BIPurple='\033[0;33m'
RED='\033[0;31m'

# CHEK STATUS 
tls_v2ray_status=$(systemctl status xray | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
nontls_v2ray_status=$(systemctl status xray | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
vless_tls_v2ray_status=$(systemctl status xray | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
vless_nontls_v2ray_status=$(systemctl status xray | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
trojan_server=$(systemctl status xray | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
dropbear_status=$(/etc/init.d/dropbear status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
stunnel_service=$(/etc/init.d/stunnel5 status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
ssh_service=$(/etc/init.d/ssh status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
vnstat_service=$(/etc/init.d/vnstat status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
cron_service=$(/etc/init.d/cron status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
fail2ban_service=$(/etc/init.d/fail2ban status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
#trgo="$(systemctl show trojan-go.service --no-page)"                                      
#strgo=$(echo "${trgo}" | grep 'ActiveState=' | cut -f2 -d=)  
wstls=$(systemctl status ws-stunnel.service | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
# STATUS SERVICE  SSH 
if [[ $ssh_service == "running" ]]; then 
   status_ssh=" ${GREEN}Aktif ${NC}"
else
   status_ssh="${RED}Error "
fi

# STATUS SERVICE  VNSTAT 
if [[ $vnstat_service == "running" ]]; then 
   status_vnstat=" ${GREEN}Aktif ${NC}"
else
   status_vnstat="${RED} Error ${NC}"
fi

# STATUS SERVICE  CRONS 
if [[ $cron_service == "running" ]]; then 
   status_cron=" ${GREEN}Aktif ${NC}"
else
   status_cron="${RED} Error ${NC}"
fi

# STATUS SERVICE  FAIL2BAN 
if [[ $fail2ban_service == "running" ]]; then 
   status_fail2ban=" ${GREEN}Aktif ${NC}"
else
   status_fail2ban="${RED} Error ${NC}"
fi

# STATUS SERVICE  TLS 
if [[ $tls_v2ray_status == "running" ]]; then 
   status_tls_v2ray=" ${GREEN}Aktif${NC} "
else
   status_tls_v2ray="${RED} Error ${NC}"
fi

# STATUS SERVICE NON TLS V2RAY
if [[ $nontls_v2ray_status == "running" ]]; then 
   status_nontls_v2ray=" ${GREEN}Aktif ${NC}"
else
   status_nontls_v2ray="${RED} Error ${NC}"
fi

# STATUS SERVICE VLESS HTTPS
if [[ $vless_tls_v2ray_status == "running" ]]; then
  status_tls_vless=" ${GREEN}Aktif ${NC}"
else
  status_tls_vless="${RED} Error ${NC}"
fi

# STATUS SERVICE VLESS HTTP
if [[ $vless_nontls_v2ray_status == "running" ]]; then
  status_nontls_vless=" ${GREEN}Aktif${NC} "
else
  status_nontls_vless="${RED} Error  ${NC}"
fi
# STATUS SERVICE TROJAN
if [[ $trojan_server == "running" ]]; then 
   status_virus_trojan=" ${GREEN}Aktif ${NC}"
else
   status_virus_trojan="${RED} Error${NC}"
fi
# STATUS SERVICE DROPBEAR
if [[ $dropbear_status == "running" ]]; then 
   status_beruangjatuh=" ${GREEN}Aktif${NC}"
else
   status_beruangjatuh="${RED} Error${NC}"
fi

# STATUS SERVICE STUNNEL
if [[ $stunnel_service == "running" ]]; then 
   status_stunnel=" ${GREEN}Aktif ${NC}"
else
   status_stunnel="${RED} Error ${NC}"
fi
# STATUS SERVICE WEBSOCKET TLS
if [[ $wstls == "running" ]]; then 
   swstls=" ${GREEN}Aktif ${NC}"
else
   swstls="${RED} Error${NC}"
fi
# Status Service Trojan GO
if [[ $strgo == "active" ]]; then
  status_trgo=" ${GREEN}Aktif ${NC}"
else
  status_trgo="${RED} Error${NC}"
fi
# STATUS SERVICE WEBSOCKET DROPBEAR
if [[ $wsdrop == "running" ]]; then 
   swsdrop=" ${GREEN}Aktif ${NC}"
else
   swsdrop="${RED} Error ${NC}"
fi

Domen="$(cat /etc/xray/domain)"
echo -e "${GREEN}
"┈┈┈╲┈┈┈┈╱ "
"┈┈┈╱▔▔▔▔╲ "
"┈┈┃┈▇┈┈▇┈┃ "
"╭╮┣━━━━━━┫╭╮ "
"┃┃┃┈┈┈┈┈┈┃┃┃${NC} love Arya Blitar${GREEN} "
"╰╯┃┈┈┈┈┈┈┃╰╯ "
"┈┈╰┓┏━━┓┏╯ "
"┈┈┈╰╯┈┈╰╯ "
"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e " Hey... Wellcome To ${BIPurple}$HOSTNAME              \E[0m"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "${CYAN}===========================================\033[0m${NC}"
echo -e "${NC} Jumlah Ssh    : ${NC}$ssh1 \033[0m${NC}"
echo -e "${NC} Jumlah AlXray : ${NC}$vma \033[0m${NC}"
echo -e "${BIPurple}===========================================\033[0m${NC}"
echo -e "${NC} IP Vps        : $IPVPS \033[0m${NC}"
echo -e "${NC} Domain        : $(cat /etc/xray/domain)${NC}"
echo -e "${NC} ISP           : $ISP \033[0m${NC}"
echo -e "${NC} System OS     : $MODEL${NC}"
echo -e "${BIPurple}===========================================\033[0m${NC}"

echo -e " Dropbear                :$status_beruangjatuh"
echo -e " Stunnel5                :$status_stunnel"
echo -e " Fail2Ban                :$status_fail2ban"
echo -e " Crons                   :$status_cron"
echo -e " Vnstat                  :$status_vnstat"
echo -e " XRAY Vmess TLS          :$status_tls_v2ray"
echo -e " XRAY Vmess None TLS     :$status_nontls_v2ray"
echo -e " XRAY Vless TLS          :$status_tls_vless"
echo -e " XRAY Vless None TLS     :$status_nontls_vless"
echo -e " XRAY Trojan             :$status_virus_trojan"
echo -e " Trojan GO               :$status_trgo"
echo -e " Websocket TLS           :$swstls"
echo -e " Websocket None TLS      :$swstls"
echo -e "${CYAN}=========================================\033[0m${NC}"
echo ""
echo -e " \033[0;37mSc By Arya Blitar 081931615811 ${GREEN} "
echo ""
read -n 1 -s -r -p "Tekan Enter Untuk ke menu"

menu2
