#!/bin/bash
echo -e ""
sleep 2
echo -e "\033[0;32m Start Loading.......\033[0m"
sleep 3. 
cd /usr/bin

wget -q -O /usr/bin/autoreboot "https://raw.githubusercontent.com/afiaza/tunel/main/options/autoreboot.sh"
wget -q -O /usr/bin/restart "https://raw.githubusercontent.com/afiaza/tunel/main/options/restart.sh"
wget -q -O /usr/bin/clearlog "https://raw.githubusercontent.com/afiaza/tunel/main/options/clearlog.sh"
wget -q -O /usr/bin/running "https://raw.githubusercontent.com/afiaza/tunel/main/options/running.sh"
wget -q -O /usr/bin/speedtest "https://raw.githubusercontent.com/afiaza/tunel/main/tools/speedtest_cli.py"
wget -q -O /usr/bin/cek-bandwidth "https://raw.githubusercontent.com/afiaza/tunel/main/options/cek-bandwidth.sh"
wget -q -O /usr/bin/menu-vless "https://raw.githubusercontent.com/afiaza/tunel/main/menu/menu-vless.sh"
wget -q -O /usr/bin/menu-vmess "https://raw.githubusercontent.com/afiaza/tunel/main/menu/menu-vmess.sh"
wget -q -O /usr/bin/menu-ss "https://raw.githubusercontent.com/afiaza/tunel/main/menu/menu-ss.sh"
wget -q -O /usr/bin/menu-trojan "https://raw.githubusercontent.com/afiaza/tunel/main/menu/menu-trojan.sh"
wget -q -O /usr/bin/menu-ssh "https://raw.githubusercontent.com/afiaza/tunel/main/menu/menu-ssh.sh"
wget -q -O /usr/bin/menu-backup "https://raw.githubusercontent.com/afiaza/tunel/main/menu/menu-backup.sh"
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/afiaza/tunel/main/menu/menu.sh"
wget -q -O /usr/bin/babi "https://raw.githubusercontent.com/afiaza/tunel/main/ssh/babi.sh"
wget -q -O /usr/bin/xp "https://raw.githubusercontent.com/afiaza/tunel/main/ssh/xp.sh"
wget -q -O /usr/bin/addhost "https://raw.githubusercontent.com/afiaza/tunel/main/menu/addhost.sh"
wget -q -O /usr/bin/certxray "https://raw.githubusercontent.com/afiaza/tunel/main/menu/crt.sh"
wget -q -O /usr/bin/menu-set "https://raw.githubusercontent.com/afiaza/tunel/main/ssh/menu-set.sh"
wget -q -O /usr/bin/info "https://raw.githubusercontent.com/afiaza/tunel/main/options/info.sh"
wget -q -O /usr/bin/infoserv "https://raw.githubusercontent.com/afiaza/tunel/main/options/infoserv.sh"

chmod +x /usr/bin/autoreboot
chmod +x /usr/bin/restart
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
chmod +x /usr/bin/babi.sh
chmod +x /usr/bin/xp
chmod +x /usr/bin/addhost
chmod +x /usr/bin/certxray
chmod +x /usr/bin/menu-set
chmod +x /usr/bin/info
chmod +x /usr/bin/infoserv
clear
echo -e ""
echo -e "\e[0;32mDownloaded successfully!\e[0m"
echo ""
cd
rm -fr update.sh
clear
echo ""
echo -e "\033[0;34m----------------------------------------\033[0m"
echo -e "\E[42;1;37m        SCRIPT UDAH UPDATED             \E[0m"
echo -e "\033[0;34m----------------------------------------\033[0m"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
;;
x)
clear
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
;;
esac
