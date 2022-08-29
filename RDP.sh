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
sudo apt-get install xrdp -y
echo "============================="
echo "     setting up port"
echo "============================="
sudo apt-get install ufw
sudo ufw allow 3389
clear
echo "============================="
echo "         adding user"
echo "============================="
sudo adduser desktop --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
echo "desktop:Debian" | sudo chpasswd
sudo usermod -aG sudo,adm desktop
echo " ________      _________        ________"
echo "| _______ \   | ________ \     |  ______ \"
echo "| |      | |  | |       | |    | |      | |"
echo "| |_____/  /  | |       | |    | |______| |"
echo "|  _____  /   | |       | |    |  _______/"
echo "| |     \ \   | |_______| |    | |"
echo "|_|      \_\  |__________/     |_|"
echo "====================="
echo "  username: desktop"
echo "  password: Debian"
echo "====================="
