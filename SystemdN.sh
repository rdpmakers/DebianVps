clear
clear
echo "======================="
echo "Download ngrok"
echo "======================="
wget -O ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip ngrok.zip
mv ngrok /usr/local/bin/
read -p "Paste Ngrok Authtoken: " CRP
ngrok authtoken $CRP
wget https://raw.githubusercontent.com/rdpmakers/MyRDP/main/NXRDP.service
mv NXRDP.service /etc/systemd/system/
service NXRDP start
