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
echo "      installing CRD"
echo "============================="
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo dpkg --install chrome-remote-desktop_current_amd64.deb
sudo apt install -y --fix-broken
clear
clear
echo "============================="
echo "  installing chrome browser"
echo "============================="
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get -f install -y
clear
clear
clear
clear
echo "========================================================="
echo " get crp from: https://remotedesktop.google.com/headless"
echo "      paste the crp on command then setup your rdp"
echo "========================================================="

