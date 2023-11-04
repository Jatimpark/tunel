#!/bin/bash
rm -rf menu
rm -rf update
cd /usr/bin

wget -O autoreboot "https://raw.githubusercontent.com/Jatimpark/tunel/main/options/autoreboot.sh"
wget -O restart "https://raw.githubusercontent.com/Jatimpark/tunel/main/options/restart.sh"
wget -O tendang "https://raw.githubusercontent.com/Jatimpark/tunel/main/options/tendang.sh"
wget -O clearlog "https://raw.githubusercontent.com/Jatimpark/tunel/main/options/clearlog.sh"
wget -O running "https://raw.githubusercontent.com/Jatimpark/tunel/main/options/running.sh"
wget -O speedtest "https://raw.githubusercontent.com/Jatimpark/tunel/main/tools/speedtest_cli.py"
wget -O cek-bandwidth "https://raw.githubusercontent.com/Jatimpark/tunel/main/options/cek-bandwidth.sh"
wget -O menu-vless "https://raw.githubusercontent.com/Jatimpark/tunel/main/menu/menu-vless.sh"
wget -O menu-vmess "https://raw.githubusercontent.com/Jatimpark/tunel/main/menu/menu-vmess.sh"
wget -O menu-ss "https://raw.githubusercontent.com/Jatimpark/tunel/main/menu/menu-ss.sh"
wget -O menu-trojan "https://raw.githubusercontent.com/Jatimpark/tunel/main/menu/menu-trojan.sh"
wget -O menu-ssh "https://raw.githubusercontent.com/Jatimpark/tunel/main/menu/menu-ssh.sh"
wget -O menu-backup "https://raw.githubusercontent.com/Jatimpark/tunel/main/menu/menu-backup.sh"
wget -O menu "https://raw.githubusercontent.com/Jatimpark/tunel/main/menu/menu.sh"
wget -O webmin "https://raw.githubusercontent.com/Jatimpark/tunel/main/options/webmin.sh"
wget -O xp "https://raw.githubusercontent.com/Jatimpark/tunel/main/ssh/xp.sh"
wget -O update "https://raw.githubusercontent.com/Jatimpark/tunel/main/options/update.sh"
wget -O addhost "https://raw.githubusercontent.com/Jatimpark/tunel/main/menu/addhost.sh"
wget -O certxray "https://raw.githubusercontent.com/Jatimpark/tunel/main/menu/crt.sh"
wget -O menu-set "https://raw.githubusercontent.com/Jatimpark/tunel/main/menu/menu-set.sh"
wget -O info "https://raw.githubusercontent.com/Jatimpark/tunel/main/options/info.sh"
wget -O infoserv "https://raw.githubusercontent.com/Jatimpark/tunel/main/options/infoserv.sh"

chmod +x autoreboot
chmod +x restart
chmod +x tendang
chmod +x clearlog
chmod +x running
chmod +x speedtest
chmod +x cek-bandwidth
chmod +x menu-vless
chmod +x menu-vmess
chmod +x menu-ss
chmod +x menu-trojan
chmod +x menu-ssh
chmod +x menu-backup
chmod +x menu
chmod +x webmin
chmod +x xp
chmod +x update
chmod +x addhost
chmod +x certxray
chmod +x menu-set
chmod +x info
chmod +x infoserv
clear
echo -e "\033[0;32m Udah Sayank.. !! "
cd
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu