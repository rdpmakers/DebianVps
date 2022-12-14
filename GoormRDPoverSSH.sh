clear
clear
echo "============================="
echo "   updating, please wait"
echo "============================="
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
sudo apt install -f -y
clear
clear
echo "============================="
echo "    setting up the XRDP"
echo "============================="
sudo service xrdp start
wget https://raw.githubusercontent.com/rdpmakers/DebianVps/main/SysVinitX.sh
sh SysVinitX.sh
clear
clear
echo "============================="
echo "    XRDP SUCCESS INSTALLED"
echo "username: desktop"
echo "password: desktop"
echo "============================="
