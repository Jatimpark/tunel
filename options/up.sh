#!/bin/bash
cd /usr/bin

wget -q -O /usr/bin/up-ins-xray "https://raw.githubusercontent.com/Jatimpark/tunel/main/tools/up-ins-xray.sh"
chmod +x /usr/bin/up-ins-xray

rm -fr up-ins-xray