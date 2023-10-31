#!/bin/bash
cd /usr/bin

wget -O up-ins-xray "raw.githubusercontent.com/Jatimpark/tunel/main/tools/up-ins-xray.sh" && chmod +x up-ins-xray
up-ins-xray
cd /usr/bin
rm -fr up-ins-xray
echo -e "\033[0;32m Udah Sayank.. !! "
sleep 2
clear
exit