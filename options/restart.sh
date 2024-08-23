#!/bin/bash

NC='\e[0m'
COLOR1='\033[0;34m' 
COLBG1='\033[0;33m' 
echo -e "$COLOR1┌──────────────────────────────────────────┐${NC}"
echo -e "$COLOR1│${NC} ${COLBG1}          SERVER PORT INFORMATION       ${NC} $COLOR1│$NC"       
echo -e "$COLOR1└──────────────────────────────────────────┘${NC}"
echo -e "\033[1;93m  >Port SSH Websocket       :80\e[0m"
echo -e "\033[1;93m  >Port SSH Websocket SSL   :443\e[0m"
echo -e "\033[1;93m  >Port SSH SSL             :222,777\e[0m"
echo -e "\033[1;93m  >Port OpenSSH             :22\e[0m"
echo -e "\033[1;93m  >Port SSH Dropbear        :109,143\e[0m"
echo -e "\033[1;93m  >Port Xray None TLS       :80\e[0m"
echo -e "\033[1;93m  >Port Xray TLS            :443\e[0m"
echo -e "\033[1;93m  >Port Vmess None TLS      :80\e[0m"
echo -e "\033[1;93m  >Port Vmess TLS           :443\e[0m"
echo -e "\033[1;93m  >Port Vmess GRPC          :443\e[0m"
echo -e "\033[1;93m  >Port Vless None TLS      :80\e[0m"
echo -e "\033[1;93m  >Port Vless TLS           :443\e[0m"
echo -e "\033[1;93m  >Port Vless GRPC          :443\e[0m"
echo -e "\033[1;93m  >Port Trojan WS           :443\e[0m"
echo -e "\033[1;93m  >Port Trojan GRPC         :443\e[0m"
echo -e "\033[1;93m  >Port ShadowSocks WS      :443\e[0m"
echo -e "\033[1;93m  >Port ShadowSocks GRPC    :443\e[0m"
echo -e "\033[1;94m >>>>Service Support Change Port<<<< \e[0m"
echo -e ""
echo -e "\033[1;97mOrder AutoScript Lifetime wa.me/6287721815317\e[0m"
echo -e ""

clear
echo -e ""
echo -e "======================================"
echo -e ""
echo -e ""
echo -e "    [1] Restart All Services"
echo -e "    [2] Restart OpenSSH"
echo -e "    [3] Restart Dropbear"
echo -e "    [4] Restart Stunnel5"
echo -e "    [5] Restart Nginx"
echo -e "    [6] Restart Badvpn"
echo -e "    [x] Menu"
echo -e ""
read -p "    Select From Options [1-6 or x] :  " Restart
echo -e ""
echo -e "======================================"
sleep 1
clear
case $Restart in
                1)
                clear
                #systemctl restart ws-dropbear.service >/dev/null 2>&1
                systemctl restart ws-stunnel.service >/dev/null 2>&1
                systemctl restart xray.service >/dev/null 2>&1
                /etc/init.d/ssh restart
                /etc/init.d/dropbear restart
                /etc/init.d/stunnel5 restart
                /etc/init.d/fail2ban restart
                /etc/init.d/cron restart
                /etc/init.d/nginx restart
                # Restart service openvpn
                #systemctl enable openvpn
                #systemctl start openvpn
                #/etc/init.d/openvpn restart
                #screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7100 --max-clients 1000
                #screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7200 --max-clients 1000
                #screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 1000
                #systemctl restart rc-local.service
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "          Service/s Restarted         "
                echo -e ""
                echo -e "======================================"
                ;;
                2)
                clear
                /etc/init.d/ssh restart
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "         SSH Service Restarted        "
                echo -e ""
                echo -e "======================================"
                ;;
                3)
                clear
                /etc/init.d/dropbear restart
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "       Dropbear Service Restarted     "
                echo -e ""
                echo -e "======================================"
                ;;
                4)
                clear
                /etc/init.d/stunnel5 restart
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "        Stunnel5 Service Restarted    "
                echo -e ""
                echo -e "======================================"
                ;;
                5)
                clear
                /etc/init.d/nginx restart
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "         Nginx Service Restarted      "
                echo -e ""
                echo -e "======================================"
                ;;
                6)
                clear
                screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7100 --max-clients 500
                screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7200 --max-clients 500
                screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 500
                systemctl restart rc-local.service >/dev/null 2>&1
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "    Badvpn  Badvpn Service Restarted  "
                echo -e ""
                echo -e "======================================"
                ;;
                x)
                clear
                menu
                ;;
        esac
read -n 1 -s -r -p "Press any key to back on menu"

menu
