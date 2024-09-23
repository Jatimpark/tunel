#!/bin/bash
rm -rf /etc/xray/config.json
rm -rf /etc/nginx/conf.d/xray.conf
wget -q -O /etc/nginx/conf.d/xray.conf "https://raw.githubusercontent.com/Jatimpark/tunel/main/tools/xray.conf"
wget -q -O /etc/xray/config.json "https://raw.githubusercontent.com/Jatimpark/tunel/main/tools/config.json"
systemctl restart nginx xray
sleep 2
menu
