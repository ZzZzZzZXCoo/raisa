#!/bin/bash
clear
cat /usr/bin/raisa | lolcat
echo -e "\e[32m════════════════════════════════════════\e[m" | lolcat
echo -e "             ═══[Trojan]═══"
echo -e "\e[32m════════════════════════════════════════\e[m" | lolcat
echo -e " 1)  Create Trojan Account"
echo -e " 2)  Deleting Trojan Account"
echo -e " 3)  Renew Trojan Account"
echo -e " 4)  Check User Login Trojan"
echo -e ""
echo -e "\e[1;32m══════════════════════════════════════════\e[m" | lolcat
echo -e " Click Enter Untuk Kembali Ke Menu"
echo -e "\e[1;32m══════════════════════════════════════════\e[m" | lolcat
echo -e ""
read -p "     Please Input Number  [ 1-4 ] :  "  trojan
echo -e ""
case $trojan in
1)
add-tr
;;
2)
del-tr
;;
3)
renew-tr
;;
4)
cek-tr
;;
x)
menu
;;
*)
menu
;;
esac
