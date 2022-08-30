clear
echo "============================="
echo "   updating, please wait"
echo "============================="
sudo apt-get update
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
sudo apt install ./chrome-remote-desktop_current_amd64.deb
echo "============================="
echo "         adding user"
echo "============================="
sudo adduser desktop --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
echo "desktop:desktop" | sudo chpasswd
sudo usermod -aG sudo,adm desktop
clear
echo "========================================================="
echo " get crp from: https://remotedesktop.google.com/headless"
echo "      paste the crp on command then setup your rdp"
echo "========================================================="
echo " note: use this password if you are using a 'sudo' command : desktop"