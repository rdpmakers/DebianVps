sudo apt-get update
sudo apt-get -y install lxde > /dev/null 2>&1
sudo apt-get install xrdp -y > /dev/null 2>&1
clear
sudo adduser desktop --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
echo "desktop:Debian" | sudo chpasswd
sudo usermod -aG sudo,adm desktop
echo "_______     ________        ________"
echo "_______ \   ________ \     |"
