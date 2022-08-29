clear
echo "============================="
echo "   updating, please wait"
echo "============================="
sudo apt-get update
clear
echo "============================="
echo "   updgrading, please wait"
echo "============================="
sudo apt-get upgrade
clear
echo "============================="
echo "      installing lxde"
echo "============================="
sudo apt-get -y install lxde
clear
echo "============================="
echo "   installing xrdp"
echo "============================="
sudo apt-get install xrdp
clear
echo "============================="
echo "         adding user"
echo "============================="
sudo adduser desktop --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
echo "desktop:Debian" | sudo chpasswd
sudo usermod -aG sudo,adm desktop
echo " ________      _________        ________"
echo "| _______ \   | ________ \     |  ______ \"
