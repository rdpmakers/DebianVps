rm -rf ngrok ngrok.zip ng.sh > /dev/null 2>&1
sudo apt install unzip -y
echo "======================="
echo "Download ngrok"
echo "======================="
wget -O ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok.zip
mv ngrok /usr/bin/
read -p "Paste Ngrok Authtoken: " CRP
ngrok authtoken $CRP
wget https://raw.githubusercontent.com/rdpmakers/MyRDP/main/NSSH.service
mv NSSH.service /etc/systemd/system/
systemctl start NSSH
wait(10)
echo "============================"
echo "Login with your user and password"
echo "ssh domain:" && curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "============================"
