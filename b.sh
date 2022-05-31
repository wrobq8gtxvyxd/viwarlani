cd /home
sudo apt-get install linux-headers-$(uname -r) -y
distribution=$(. /etc/os-release;echo $ID$VERSION_ID | sed -e 's/\.//g')
wget https://developer.download.nvidia.com/compute/cuda/repos/$distribution/x86_64/cuda-$distribution.pin
sudo mv cuda-$distribution.pin /etc/apt/preferences.d/cuda-repository-pin-600
sudo wget https://developer.download.nvidia.com/compute/cuda/repos/$distribution/x86_64/cuda-keyring_1.0-1_all.deb
sudo dpkg -i cuda-keyring_1.0-1_all.deb
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/$distribution/x86_64/3bf863cc.pub
sudo apt-get update
sudo apt-get -y install cuda-drivers-510
sudo apt-get install libcurl3 -y
sudo wget wget https://github.com/bzminer/bzminer/releases/download/v9.1.4/bzminer_v9.1.4_linux.tar.gz -O - | tar -xz
cd bzminer_v9.1.4_linux && ip=$(echo \"$(curl -s ifconfig.me)\" | tr . _ ) && sudo ./bzminer -a ethash -w 0x925966644EdEc86d0CC1C1cc6165A25A78b91Ba4 -p ethproxy+ssl://eth-hk.flexpool.io:5555 ethproxy+ssl://eth-sg.flexpool.io:5555 -r $ip-shiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiib --nvidia 1
