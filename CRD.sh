clear
echo "============================="
echo "   updating, please wait"
echo "============================="
sudo apt-get update
clear
echo "============================="
echo "   updgrading, please wait"
echo "============================="
sudo apt-get upgrade -y
clear
echo "============================="
echo "      installing lxde"
echo "============================="
sudo apt-get install lxde -y
clear
echo "============================="
echo "      installing CRD"
echo "============================="
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
./chrome-remote-desktop_current_amd64.deb
echo "========================================================="
echo " get crp from: https://remotedesktop.google.com/headless"
echo "      paste the crp on command then setup your rdp"
echo "========================================================="
