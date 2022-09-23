clear
clear
echo "============================="
echo "   updating, please wait"
echo "============================="
sudo su
sudo apt-get update
clear
clear
echo "============================="
echo "       installing GUI"
echo "============================="
sudo apt install xfce4 xfce4-goodies -y
sudo apt install dbus-x11 -y
clear
clear
echo "============================="
echo "      installing XRDP"
echo "============================="
sudo apt install xrdp -y
clear
clear
echo "============================="
echo "  installing chrome browser"
echo "============================="
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
clear
clear
echo "============================="
echo "    setting up the XRDP"
echo "============================="
sudo service xrdp start
wget https://raw.githubusercontent.com/rdpmakers/DebianVps/main/SetupS.sh
sh SetupS.sh
wget https://raw.githubusercontent.com/rdpmakers/DebianVps/main/SetupN.sh
sh SetupN.sh
clear
clear
echo "============================="
echo "   XRDP DEFAULT USER INFO"
echo " username: desktop"
echo " password: desktop"
echo "rdp address: " && curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "============================="
