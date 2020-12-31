#!/usr/bin/env bash
# update
sudo dnf upgrade

# internet
sudo dnf install firefox

# xorg
sudo dnf install xorg-x11-server
sudo dnf install xorg-x11-xinit
sudo dnf install xorg-x11-xauth
sudo dnf install xautolock
sudo dnf install nitrogen

# sound
sudo dnf install rhythmbox
sudo dnf install pavucontrol
sudo dnf install lpf-spotify-client

# discord installation
wget "https://discordapp.com/api/download?platform=linux&format=tar.gz"

# microsoft teams
wget "https://teams.microsoft.com/downloads/desktopurl?env=production&plat=linux&arch=x64&download=true&linuxArchiveType=rpm" -O teams.rpm
sudo rpm -i teams.rpm

# installing picom
git clone https://github.com/jonaburg/picom.git && cd picom
meson --buildtype=release . build
ninja -C build && cd ..
sudo mkdir --parents ~/.config/picom
sudo cp picom.conf ~/.config/picom/picom.conf

# installing the suckless "suite"
cd dmenu
sudo make clean install
cd .. && cd dwm
sudo make clean install
cd .. && cd slock
sudo make clean install
cd .. && cd slstatus
sudo make clean install
cd .. && cd st
sudo make clean install

# creating .xinitrc
sudo cp xinitrc ~/.xinitrc
