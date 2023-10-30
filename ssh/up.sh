#!/bin/bash
clear
cd /usr/bin
wget -O up-ins-ray "raw.githubusercontent.com/Jatimpark/tunel/main/tools/up-ins-xray.sh" && chmod +x up-ins-xray
rm -fr up-ins-xray.sh
echo -e "\e[0;32mSelesai... OK!\e[0m"
sleep 2
exit