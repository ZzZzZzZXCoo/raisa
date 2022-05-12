#!/bin/bash
cd /usr/bin
wget -q "https://raw.githubusercontent.com/ZzZzZzZXCoo/raisa/main/vpnjav"
wget -q -O menu "https://raw.githubusercontent.com/ZzZzZzZXCoo/raisa/main/menu.sh"
wget -q -O ssh "https://raw.githubusercontent.com/ZzZzZzZXCoo/raisa/main/ssh.sh"
wget -q -O ssssr "https://raw.githubusercontent.com/ZzZzZzZXCoo/raisa/main/ssssr.sh"
wget -q -O xraay "https://raw.githubusercontent.com/ZzZzZzZXCoo/raisa/main/v2raay.sh"
chmod +x menu && sed -i -e 's/\r$//' menu
chmod +x ssh &&  sed -i -e 's/\r$//' ssh
chmod +x ssssr && sed -i -e 's/\r$//' ssssr
chmod +x xraay &&  sed -i -e 's/\r$//' xraay
