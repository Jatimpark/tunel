#!/bin/bash
cd /usr/bin

echo ""
clear
echo -e "\e[0;32mPlease Wait...!\e[0m"
sleep 2
clear
echo ""
echo -e "\e[0;32m Downloading started!\e[0m"
sleep 2
cd /usr/bin

wget -O /usr/bin/autoreboot "https://raw.githubusercontent.com/Jatimpark/tunel/main/options/autoreboot.sh"
wget -O /usr/bin/restart "https://raw.githubusercontent.com/Jatimpark/tunel/main/options/restart.sh"
wget -O /usr/bin/tendang "https://raw.githubusercontent.com/Jatimpark/tunel/main/options/tendang.sh"
wget -O /usr/bin/clearlog "https://raw.githubusercontent.com/Jatimpark/tunel/main/options/clearlog.sh"
wget -O /usr/bin/running "https://raw.githubusercontent.com/Jatimpark/tunel/main/options/running.sh"
wget -O /usr/bin/speedtest "https://raw.githubusercontent.com/Jatimpark/tunel/main/tools/speedtest_cli.py"
wget -O /usr/bin/cek-bandwidth "https://raw.githubusercontent.com/Jatimpark/tunel/main/options/cek-bandwidth.sh"
wget -O /usr/bin/menu-vless "https://raw.githubusercontent.com/Jatimpark/tunel/main/menu/menu-vless.sh"
wget -O /usr/bin/menu-vmess "https://raw.githubusercontent.com/Jatimpark/tunel/main/menu/menu-vmess.sh"
wget -O /usr/bin/menu-ss "https://raw.githubusercontent.com/Jatimpark/tunel/main/menu/menu-ss.sh"
wget -O /usr/bin/menu-trojan "https://raw.githubusercontent.com/Jatimpark/tunel/main/menu/menu-trojan.sh"
wget -O /usr/bin/menu-ssh "https://raw.githubusercontent.com/Jatimpark/tunel/main/menu/menu-ssh.sh"
wget -O /usr/bin/menu-backup "https://raw.githubusercontent.com/Jatimpark/tunel/main/menu/menu-backup.sh"
wget -O /usr/bin/menu "https://raw.githubusercontent.com/Jatimpark/tunel/main/menu/menu.sh"
wget -O /usr/bin/webmin "https://raw.githubusercontent.com/Jatimpark/tunel/main/options/webmin.sh"
wget -O /usr/bin/xp "https://raw.githubusercontent.com/Jatimpark/tunel/main/ssh/xp.sh"
wget -O /usr/bin/update "https://raw.githubusercontent.com/Jatimpark/tunel/main/options/update.sh"
wget -O /usr/bin/addhost "https://raw.githubusercontent.com/Jatimpark/tunel/main/menu/addhost.sh"
wget -O /usr/bin/certxray "https://raw.githubusercontent.com/Jatimpark/tunel/main/menu/crt.sh"
wget -O /usr/bin/menu-set "https://raw.githubusercontent.com/Jatimpark/tunel/main/menu/menu-set.sh"
wget -O /usr/bin/info "https://raw.githubusercontent.com/Jatimpark/tunel/main/options/info.sh"
wget -O /usr/bin/infoserv "https://raw.githubusercontent.com/Jatimpark/tunel/main/options/infoserv.sh"

chmod +x /usr/bin/autoreboot
chmod +x /usr/bin/restart
chmod +x /usr/bin/tendang
chmod +x /usr/bin/clearlog
chmod +x /usr/bin/running
chmod +x /usr/bin/speedtest
chmod +x /usr/bin/cek-bandwidth
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
echo -e "\033[0;32m Udah Sayank.. !! "
sleep 2
echo -e "\033[0;34m----------------------------------------\033[0m"
echo -e "\E[42;1;37m        SCRIPT UDAH UPDATED             \E[0m"
echo -e "\033[0;34m----------------------------------------\033[0m"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu