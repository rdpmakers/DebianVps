wget https://raw.githubusercontent.com/rdpmakers/DebianVps/main/localtonet.service
mv localtonet.service /etc/systemd/system
wget -O localtonet.zip https://localtonet.com/download/localtonet-linux-x64.zip
apt install unzip -y
unzip localtonet.zip
mv localtonet /usr/local/bin
systemctl enable localtonet
systemctl start localtonet
screen -r localtonet
