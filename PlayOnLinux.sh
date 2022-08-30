clear
clear
echo "============================="
echo "     adding architecture"
echo "============================="
sudo dpkg --add-architecture i386
clear
clear
echo "============================="
echo "          updating"
echo "============================="
sudo apt-get update
clear
clear
echo "============================="
echo "      installing wine32"
echo "============================="
sudo apt-get install wine32 -y
clear
clear
echo "============================="
echo "   Downloading PlayOnLinux"
echo "============================="
cd ~/Downloads
wget https://www.playonlinux.com/script_files/PlayOnLinux/4.3.4/PlayOnLinux_4.3.4.deb
clear
clear
echo "============================="
echo "   Installing PlayOnLinux"
echo "============================="
sudo dpkg -i PlayOnLinux_4.3.4.deb
sudo apt install -f
clear
clear
echo "============================="
echo "     getting version info"
echo "============================="
playonlinux --version
clear
clear
echo "============================="
echo "     starting PlayOnLinux"
echo "============================="
playonlinux
echo "============================="
echo "          Task Done"
echo "============================="
cd
