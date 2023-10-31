#!/bin/bash
cd /usr/bin
wget -O up-ssh-vpn "raw.githubusercontent.com/Jatimpark/tunel/main/ssh/up-ssh-vpn.sh" && chmod +x up-ssh-vpn.sh
up-ssh-vpn
rm -fr up-ssh-vpn.sh
echo -e "\033[0;32m Udah Sayank.. !! "
sleep 2
clear
exit
