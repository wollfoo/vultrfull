#!/bin/bash
if [ "$(id -u)" != "0" ]; then
   sudo su   
else
	echo "Root user"
fi
sudo -i
apt-get update
apt-get install -y git wget
rm -rf loki-full.sh
wget https://raw.githubusercontent.com/wollfoo/vultrfull/master/zepfull.sh
chmod 777 zepfull.sh
./zepfull.sh
