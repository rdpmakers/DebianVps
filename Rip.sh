
        apt-get install -y git libpulse-dev autoconf m4 intltool build-essential dpkg-dev libtool libsndfile1-dev libspeexdsp-dev libudev-dev pulseaudio
        cp /etc/apt/sources.list /etc/apt/sources.list.u2ad
        sed -Ei 's/^# deb-src /deb-src /' /etc/apt/sources.list
        apt-get update -y
        apt build-dep pulseaudio -y
        cd /tmp
        apt source pulseaudio
        pulsever=$(pulseaudio --version | awk '{print $2}')
        cd /tmp/pulseaudio-$pulsever
        # ./configure --without-caps
        ./configure
        git clone https://github.com/neutrinolabs/pulseaudio-module-xrdp.git
        cd pulseaudio-module-xrdp
        ./bootstrap
        ./configure PULSE_DIR="/tmp/pulseaudio-$pulsever"
        make
        cd /tmp/pulseaudio-$pulsever/pulseaudio-module-xrdp/src/.libs
        install -t "/var/lib/xrdp-pulseaudio-installer" -D -m 644 *.so
        # systemctl restart dbus
        # systemctl restart pulseaudio
        service xrdp restart
        # fix PulseAudio no sound issue at Ubuntu 20.04
        # Issue: https://github.com/neutrinolabs/pulseaudio-module-xrdp/issues/44



# Fix PA no sound issue in Ubuntu 20.04.
# Issue: https://github.com/neutrinolabs/pulseaudio-module-xrdp/issues/44

mkdir -p /home/derly/.config/systemd/user/
ln -s /dev/null /home/derly/.config/systemd/user/pulseaudio.service
mkdir -p /home/derly/.config/autostart/
cat <<EOF | \
  sudo tee /home/derly/.config/autostart/pulseaudio.derly
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
chown -R derly /home/derly/.config/
chmod -R 755 /home/derly/.config/



useradd -s /bin/bash -m derly
usermod -a -G sudo derly
echo "derly ALL=(ALL) ALL" >> /etc/sudoers
echo "derly
derly
" | passwd derly



