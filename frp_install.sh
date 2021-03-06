#!/bin/bash

sleep 1s

sudo su runner
cd /home/runner

sudo apt install nginx python3 python3-pip curl wget telnet tar gzip -y

cd /home.runner 
wget https://github.com/fatedier/frp/releases/download/v0.36.2/frp_0.36.2_linux_amd64.tar.gz -P /home/runner && cd /home/runner && sudo chmod 755 /home/runner/frp_0.36.2_linux_amd64.tar.gz && tar -zxf /home/runner/*gz && rm /home/runner/*gz* && mv /home/runner/frp* /home/runner/frp

curl https://raw.githubusercontent.com/sdise/ga_ssh/main/frpc.ini -o /home/runner/frp/frpc.ini

sudo chmod 755 /home/runner/frp/frpc && sudo chmod 755 /home/runner/frp/frpc.ini && cd /home/runner/frp && ./frpc -c /home/runner/frp/frpc.ini &

 
sudo pip3 install https://github.com/shadowsocks/shadowsocks/archive/master.zip

wget https://raw.githubusercontent.com/sdise/ga_ssh/main/ss.json && mv ss.json /home/runner/

sudo ssserver -c /home/runner/ss.json -d start &
