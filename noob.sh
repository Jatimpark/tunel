# // Exporting Language to UTF-8
export LC_ALL='en_US.UTF-8'
export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'
export LC_CTYPE='en_US.utf8'

# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'

# // Export Banner Status Information
export EROR="[${RED} EROR ${NC}]"
export INFO="[${YELLOW} INFO ${NC}]"
export OKEY="[${GREEN} OKEY ${NC}]"
export PENDING="[${YELLOW} PENDING ${NC}]"
export SEND="[${YELLOW} SEND ${NC}]"
export RECEIVE="[${YELLOW} RECEIVE ${NC}]"

# // Export Align
export BOLD="\e[1m"
export WARNING="${RED}\e[5m"
export UNDERLINE="\e[4m"

# // Exporting URL Host
export Server_URL="autosc.me/aio"
export Server_Port="8443"
export Server_IP="underfined"
export Script_Mode="Stable"
export Auther="XdrgVPN"

function create(){
clear

echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "${GREEN}| \E[44;1;39m      °NOOBZVPN'S CREATE°            \E[0m|"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
read -p "Username: " user
read -p "Password: " pass
read -p "Exp (0 for unlimited days):" exp
read -p "IP LIMIT " ip

if [ ! -e /etc/cybervpn/limit/noobs/ip/ ]; then
  mkdir -p /etc/cybervpn/limit/noobs/ip/
fi
echo "$ip" > /etc/cybervpn/limit/noobs/ip/$user

noobzvpns --add-user $user $pass --expired-user $user $exp


clear

echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "${GREEN}| \E[44;1;39m      °NOOBZVPN'S ACCOUNT°            \E[0m|"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo ""
echo -e "DOMAIN : $( cat /etc/xray/domain )"
echo -e "USERNAME: $user"
echo -e "PASSWORD: $pass"
echo -e "IP LIMIT: $ip"
echo -e "EXP DAYS: $exp DAYS"
echo -e "tcp_std port:  8080"
echo -e "tcp_ssl port: 8443"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "Example config TCP_STD 8080"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo ""
echo -e "ELHaA97rZiksmA/Je16vJ4yo6M5eBXQNXgO0WiYWrcgwUwNY+FjVZbyVJhAvSW57bWJezZnliLD7AO3t1whb3awb2MVwd6jcU3Ge0BbgdnWJanGkIViZ1l9iiGugfKZP6SrFYUbXWi3Joj0oOOgK9NDPdcIswwYUpclrYNaRuej3X6FdWv+3MjzCKHZUjIZdnRh2cVFKULYG1+XpQtPB/dUiNAhmvsUTclBJ0nMgCKbTLzR2QC5NmqXMPVsgpu1z1xyd/iK4zG/ZRErNztZYh2UhDgF3QXzVNI6YXk5ZTwMu6yK89W12k4oRi/yOlY+LlY+HR/HRp8cbmc6eC/NyIXvZcDo0qeDxMTlLEMQXqxxCXIq4Z/06Q9OLb1ZUb6XRD9vhFn5EwvtQu8o7GgrEo8oO4SuHzMrPmUJ2oDU3e675tm5N095cQJf4O5R8qde+CWEwDQB8wLmYFysDJg0DWEpGoVtskqu7nGjQjIpzROR/PzkcjF0ncY6GV2m0/KUeuNqcr/4PlmzEb0x8qbUnv73zqDXh1x4OMy3dh8qaeOjlgK/zEbmEaocJp6+M+WUbbgGZ8jME+kLRKJRit1wWAARtaBoFRSY7Ernqs84jSNXMy3rE+eT3BxbcrxHpGWtTpw=="
echo ""
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "Example config TCP_SSL 8443"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo ""

echo -e "ECMmORHoEgl8gZyPl0N0Th8NoKtUYBoWJEicTLU4S+1i4ojjsGqLNUzQ6+scgbsMGVa0/3O9+bfsgCSJXWPvvBdelg0IODfw0e3mJ9vhPTjDVcdDTxAehI2AGoyn4xxuHL5Azf1oqQgbhvHrA6WBTFDQEpkhLe8kubLQDoimBuKhczhyZt5tXHhApTyNch86vG4ezxCgvd52SzCwSbnyjBv/7nNUhxUH1tZF56XaEtcLqQDhXQF93OP5CQLsvarwm2BqRrIAf5kTlRUFkFP3JZL4yCHaXPraxYeziJlKKLQZCmugjqP9Jn0IpMnxopGkzI6rSmC3pO2y2jCPZ2RyPK6AG4C2NeWz1jpUdbqFD70ke+OV1zj4gtk2noH4BuqdwEaoYdzqfTXJrAP5ghjkF9peLE8Bql2JtCcmub7b+jchR8WsDGf1deBCuMNy701wfR9S9FiZBbtYYkGlVwGBdIVcyWO5aSmUd4i1JZQ+QRcQiDbUOBGobFzSicQBsACFzqlPYiJsYP76WdcGQ+axNKQLlSGxyY2BL28RxNEI3ehdUhmtYZPk0KdIU/WQKfGdRQOZeX51Vkoyo4LULMflc5wBTZRce/tAVoJOGAhcaQm9Os9vHKd58dvNR7VENyUl8ReC"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "${GREEN}| \E[44;1;39m      °Arya Tunneling°            \E[0m|"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"

}


function delete(){
clear
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "${GREEN}| \E[44;1;39m      °NOOBZVPN'S DELETE°            \E[0m|"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
read -p "username :" user

noobzvpns --remove-user $user
clear
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "${GREEN}| \E[44;1;39m      °NOOBZVPN'S DELETED!°            \E[0m|"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo "USERNAME: $user"
echo "Delete success!!"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "${GREEN}| \E[44;1;39m      °Arya Tunneling°            \E[0m|"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
}


function renew(){
clear
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "${GREEN}| \E[44;1;39m      °NOOBZVPN'S RENEW°            \E[0m|"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
read -p "username: " user
read -p "expired?: " exp
noobzvpns --renew-user $user --expired-user $user $exp
clear
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "${GREEN}| \E[44;1;39m      °NOOBZVPN'S RENEW!°            \E[0m|"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo "USERNAME: $user"
echo "renew success!!"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "${GREEN}| \E[44;1;39m      °Arya Tunneling°            \E[0m|"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
}




function lock(){
clear
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "${GREEN}| \E[44;1;39m      °NOOBZVPN'S LOCK°            \E[0m|"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
read -p "username: " user
noobzvpns --block-user $user
clear
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "${GREEN}| \E[44;1;39m      °NOOBZVPN'S LOCK!°            \E[0m|"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo "USERNAME: $user"
echo "locked success!!"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "${GREEN}| \E[44;1;39m      °Arya Tunneling°            \E[0m|"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
}






function show(){

clear
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "${GREEN}| \E[44;1;39m      °NOOBZVPN'S MEMBER!°            \E[0m|"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
noobzvpns --info-all-user | awk '/^\s*\+.*-> active/ {gsub(/(issued\(yyyymmdd\)|hash_key): [0-9a-f]+/, ""); print; getline; print; getline; getline; getline; print; print "═══════════════════"}'

echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "${GREEN}| \E[44;1;39m      °Arya Tunneling°            \E[0m|"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
}



function unlock(){
clear
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "${GREEN}| \E[44;1;39m      °NOOBZVPN'S UNLOCK°            \E[0m|"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
read -p "username: " user
noobzvpns --unblock-user $user
clear
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "${GREEN}| \E[44;1;39m      °NOOBZVPN'S UNLOCK!°            \E[0m|"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo "USERNAME: $user"
echo "unlocked success!!"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "${GREEN}| \E[44;1;39m      °Arya Tunneling°            \E[0m|"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
}



function remove(){
clear
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "${GREEN}| \E[44;1;39m      °NOOBZVPN'S UNLOCK°            \E[0m|"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"

read -p "Apakah Anda ingin menghapus semua user? (Y/N): " choice

if [ "$choice" == "Y" ] || [ "$choice" == "y" ]; then
    # Eksekusi perintah di sini
    echo "MENGHAPUS SEMUA USER!"
noobzvpns --remove-all-user
elif [ "$choice" == "N" ] || [ "$choice" == "n" ]; then
    echo "Membatalkan penghapusan."
menu-noobzvpns
else
    echo "Pilihan tidak valid."
fi

clear
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "${GREEN}| \E[44;1;39m      °NOOBZVPN'S UNLOCK!°            \E[0m|"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo "USERNAME: $user"
echo "unlocked success!!"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "${GREEN}| \E[44;1;39m      °Arya Tunneling°            \E[0m|"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
}




clear
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "${GREEN}| \E[44;1;39m      °NOOBZVPN'S SERVICE°            \E[0m|"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"


echo -e "${LIGHT}"
echo -e "01.MENU CREATE ACCOUNT NOOBZVPNS"
echo -e "02.MENU DELETE ACCOUNT NOOBZVPNS"
echo -e "03.MENU RENEW ACCOUNT NOOBZVPNS"
echo -e "04.MENU LOCK ACCOUNT NOOBZVPNS"
echo -e "05.MENU UNLOCK ACCOUNT NOOBZVPNS"
echo -e "06.MENU SHOW ALL USER NOOBZVPNS"
echo -e "07.MENU REMOVE ALL USER NOOBZVPNS"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "${GREEN}| \E[44;1;39m            °ARYA TUNNELING°            \E[0m|"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e ""
echo
read -p " Select menu : " opt
echo -e ""
case $opt in
01 | 1) clear ; create ;;
02 | 2) clear ; delete ;;
03 | 3) clear ; renew ;;
04 | 4) clear ; lock ;;
05 | 5) clear ; unlock ;;
06 | 6) clear ; show ;;
07 | 7) clear ; remove ;;
100) clear ; $up2u ;;
00 | 0) clear ; menu ;;
*) clear ; menu ;;
esac
