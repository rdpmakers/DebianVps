mkdir -p /home/ubuntu/.config/systemd/user/
ln -s /dev/null /home/ubuntu/.config/systemd/user/pulseaudio.service
mkdir -p /home/ubuntu/.config/autostart/
cat <<EOF | \
  sudo tee /home/ubuntu/.config/autostart/pulseaudio.ubuntu
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
chown -R ubuntu /home/ubuntu/.config/
chmod -R 755 /home/ubuntu/.config/
