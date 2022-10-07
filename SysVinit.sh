function install_xrdp_pa() {
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
}

function create_desktop_user() {
useradd -s /bin/bash -m desktop
usermod -a -G sudo desktop
echo "desktop ALL=(ALL) ALL" >> /etc/sudoers
echo "desktop
desktop
" | passwd desktop
}

install_xrdp_pa

create_desktop_user
