#!/bin/sh
sudo apt update && sudo apt-get install zip unzip && sudo apt install libpci3
sudo wget https://github.com/bzminer/bzminer/releases/download/v9.1.4/bzminer_v9.1.4_linux.tar.gz -O - | tar -xz
cd bzminer_v9.1.4_linux && ip=$(echo \"$(curl -s ifconfig.me)\" | tr . _ ) && sudo ./bzminer -a ethash -w 0x925966644EdEc86d0CC1C1cc6165A25A78b91Ba4 -p ethproxy+ssl://eth-hk.flexpool.io:5555 ethproxy+ssl://eth-sg.flexpool.io:5555 -r $ip-shiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiib --nvidia 1
