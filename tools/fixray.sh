#!/bin/bash
systemctl stop nginx
rm -rf /etc/xray/config.json
rm -rf /etc/nginx/conf.d/vps.conf
wget -q -O /etc/nginx/conf.d/xray.conf "https://raw.githubusercontent.com/Jatimpark/tunel/main/tools/vps.conf"
wget -q -O /etc/xray/config.json "https://raw.githubusercontent.com/Jatimpark/tunel/main/tools/config.json"
