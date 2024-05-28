#!/usr/bin/env bash
apt update && apt install -y rsync vim nload htop iperf3 ca-certificates curl wget git &&
wget sh.alhttdw.cn/d11.sh && bash d11.sh

directory="/opt/tools"

if [ -d "$directory" ]; then
    cd /opt/tools && git pull origin main
else
   cd /opt && git clone https://github.com/dayupup123/tools.git
fi

file="/opt/zz"

if [ -f "$file" ]; then
    echo "zz exists."
else
    curl -o /opt/zz.tar.gz -L https://pub-d51a46c1ed05483887d9cbbc4ea8d40a.r2.dev/zz.tar.gz && cd /opt && tar -zxvf zz.tar.gz && chmod +x zz
fi


python3 /opt/tools/script/node.py $1 $2 $3 $4 $5
