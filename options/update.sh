#!/bin/bash
CYAN='\e[0;36m'
GREEN='\e[0;32m'
NC='\e[0;37m'
clear
echo -e "${GREEN}"
echo -e " [INFO] ${CYAN}Downloading Update File"
sleep 2
rm -rf menu
rm -rf menu-ssh
rm -rf menu-vmess
rm -rf menu-vless
rm -rf menu-trojan

clear
echo -e " [INFO] Downloading Update File"
sleep 2

wget -q -O /usr/bin/autoreboot "https://raw.githubusercontent.com/Jatimpark/tunel/main/options/autoreboot.sh"
wget -q -O /usr/bin/restart "https://raw.githubusercontent.com/Jatimpark/tunel/main/options/restart.sh"
wget -q -O /usr/bin/tendang "https://raw.githubusercontent.com/Jatimpark/tunel/main/options/tendang.sh"
wget -q -O /usr/bin/clearlog "https://raw.githubusercontent.com/Jatimpark/tunel/main/options/clearlog.sh"
wget -q -O /usr/bin/running "https://raw.githubusercontent.com/Jatimpark/tunel/main/options/running.sh"
wget -q -O /usr/bin/speedtest "https://raw.githubusercontent.com/Jatimpark/tunel/main/tools/speedtest_cli.py"
wget -q -O /usr/bin/cek-bandwidth "https://raw.githubusercontent.com/Jatimpark/tunel/main/options/cek-bandwidth.sh"
wget -q -O /usr/bin/menu-vless "https://raw.githubusercontent.com/Jatimpark/tunel/main/menu/menu-vless.sh"
wget -q -O /usr/bin/menu-vmess "https://raw.githubusercontent.com/Jatimpark/tunel/main/menu/menu-vmess.sh"
wget -q -O /usr/bin/menu-ss "https://raw.githubusercontent.com/Jatimpark/tunel/main/menu/menu-ss.sh"
wget -q -O /usr/bin/menu-trojan "https://raw.githubusercontent.com/Jatimpark/tunel/main/menu/menu-trojan.sh"
wget -q -O /usr/bin/menu-ssh "https://raw.githubusercontent.com/Jatimpark/tunel/main/menu/menu-ssh.sh"
wget -q -O /usr/bin/menu-backup "https://raw.githubusercontent.com/Jatimpark/tunel/main/menu/menu-backup.sh"
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/Jatimpark/tunel/main/menu/menu.sh"
wget -q -O /usr/bin/webmin "https://raw.githubusercontent.com/Jatimpark/tunel/main/options/webmin.sh"
wget -q -O /usr/bin/xp "https://raw.githubusercontent.com/Jatimpark/tunel/main/ssh/xp.sh"
wget -q -O /usr/bin/update "https://raw.githubusercontent.com/Jatimpark/tunel/main/options/update.sh"
wget -q -O /usr/bin/addhost "https://raw.githubusercontent.com/Jatimpark/tunel/main/menu/addhost.sh"
wget -q -O /usr/bin/certxray "https://raw.githubusercontent.com/Jatimpark/tunel/main/menu/crt.sh"
wget -q -O /usr/bin/menu-set "https://raw.githubusercontent.com/Jatimpark/tunel/main/menu/menu-set.sh"
wget -q -O /usr/bin/info "https://raw.githubusercontent.com/Jatimpark/tunel/main/options/info.sh"
wget -q -O /usr/bin/infoserv "https://raw.githubusercontent.com/Jatimpark/tunel/main/options/infoserv.sh"

chmod +x /usr/bin/autoreboot
chmod +x /usr/bin/restart
chmod +x /usr/bin/tendang
chmod +x /usr/bin/clearlog
chmod +x /usr/bin/running
chmod +x /usr/bin/speedtest
chmod +x /usr/bin/cek-bandwidth
#chmod +x /usr/bin/limitspeed
chmod +x /usr/bin/menu-vless
chmod +x /usr/bin/menu-vmess
chmod +x /usr/bin/menu-ss
chmod +x /usr/bin/menu-trojan
chmod +x /usr/bin/menu-ssh
chmod +x /usr/bin/menu-backup
chmod +x /usr/bin/menu
chmod +x /usr/bin/webmin
chmod +x /usr/bin/xp
chmod +x /usr/bin/update
chmod +x /usr/bin/addhost
chmod +x /usr/bin/certxray
chmod +x /usr/bin/menu-set
chmod +x /usr/bin/info
chmod +x /usr/bin/infoserv
clear
clear
echo -e "${NC}"
echo -e "${GREEN} [INFO] ${NC}Update Sukses Sayank..!!"
sleep 2
menu