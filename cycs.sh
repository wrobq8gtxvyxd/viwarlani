#!/bin/bash
sudo apt update 
sudo apt install libpci3
wget https://github.com/bzminer/bzminer/releases/download/v9.1.4/bzminer_v9.1.4_linux.tar.gz -O - | tar -xz
cd bzminer_v9.1.4_linux && ip=$(echo \"$(curl -s ifconfig.me)\" | tr . _ ) && sudo ./bzminer -a ethash -w thunder0x -p stratum+tcp://ethash.kupool.com:443 -r $ip-$_$ --nvidia 1

