#!/bin/bash
yl='\e[031;1m'
bl='\e[36;1m'
gl='\e[32;1m'

clear 
cat /usr/bin/bannerku | lolcat
echo -e ""
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s ipinfo.io/ip )
	cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
	cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
	freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
	tram=$( free -m | awk 'NR==2 {print $2}' )
	swap=$( free -m | awk 'NR==4 {print $2}' )
	up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')

	echo -e "   \e[032;1mCPU Model:\e[0m $cname"
	echo -e "   \e[032;1mNumber Of Cores:\e[0m $cores"
	echo -e "   \e[032;1mCPU Frequency:\e[0m $freq MHz"
	echo -e "   \e[032;1mTotal Amount Of RAM:\e[0m $tram MB"
	echo -e "   \e[032;1mSystem Uptime:\e[0m $up"
	echo -e "   \e[032;1mIsp Name:\e[0m $ISP"
	echo -e "   \e[032;1mCity:\e[0m $CITY"
	echo -e "   \e[032;1mTime:\e[0m $WKT"
	echo -e "   \e[032;1mIPVPS:\e[0m $IPVPS"
echo -e  "   -----------------------MENU OPTIONS----------------------" | lolcat
echo -e   "   1\e[1;33m)\e[m Panel SSH & OpenVPN Menu"
echo -e   "   2\e[1;33m)\e[m Panel SSR & SS Account"
echo -e   "   3\e[1;33m)\e[m Panel V2Ray"
echo -e   "  \e[1;32m------------------------------------------------------------\e[m" | lolcat
echo -e   "                             SYSTEM MENU\e[m" | lolcat 
echo -e   "  \e[1;32m------------------------------------------------------------\e[m" | lolcat
echo -e   "   90\e[1;33m)\e[m  Add Subdomain Host For VPS"
echo -e   "   91\e[1;33m)\e[m   Autobackup Data VPS"
echo -e   "   92\e[1;33m)\e[m  Backup Data VPS"
echo -e   "   93\e[1;33m)\e[m  Restore Data VPS"
echo -e   "   94\e[1;33m)\e[m  Webmin Menu"
echo -e   "   95\e[1;33m)\e[m  Limit Bandwith Speed Server"
echo -e   "   96\e[1;33m)\e[m  Check Usage of VPS Ram" 
echo -e   "   97\e[1;33m)\e[m  Reboot VPS"
echo -e   "   98\e[1;33m)\e[m  Speedtest VPS"
echo -e   "   99\e[1;33m)\e[m  Information Display System" 
echo -e   "   100\e[1;33m)\e[m  Info Script Auto Install"
echo -e   "  \e[1;32m------------------------------------------------------------\e[m" | lolcat
echo -e   "   x)   Exit" | lolcat
echo -e   "  \e[1;32m------------------------------------------------------------\e[m" | lolcat
echo -e   ""
read -p "     Select From Options [1-22 or x] :  " menu
echo -e   ""
case $menu in
1)
ssh
;;
2)
ssssr
;;
3)
xraay
;;
90)
add-host
;;
91)
autobackup
;;
92)
backup
;;
93)
restore
;;
94)
wbmn
;;
95)
limit-speed
;;
96)
ram
;;
97)
reboot
;;
98)
speedtest
;;
99)
info
;;
100)
about
;;
x)
exit
;;
*)
echo  "Please enter an correct number"
;;
esac

