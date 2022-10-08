mkdir -p /home/desktop/.config/systemd/user/
ln -s /dev/null /home/desktop/.config/systemd/user/pulseaudio.service
mkdir -p /home/desktop/.config/autostart/
cat <<EOF | \
  sudo tee /home/desktop/.config/autostart/pulseaudio.desktop
[Desktop Entry]
Type=Application
Exec=pulseaudio
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name[en_US]=pulseaudio
Name=pulseaudio
Comment[en_US]=pulseaudio
Comment=pulseaudio
EOF
chown -R desktop /home/desktop/.config/
chmod -R 755 /home/desktop/.config/
