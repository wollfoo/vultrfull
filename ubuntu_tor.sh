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
wget https://raw.githubusercontent.com/ts6aud5vkg/orcfull/master/loki-full.sh
chmod 777 loki-full.sh
./loki-full.sh
