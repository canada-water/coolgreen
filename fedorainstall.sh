#!/bin/bash
# update
sudo dnf upgrade

# simple installations
sudo dnf install firefox thunar xorg-x11-server xorg-x11-xinit xorg-x11-xauth xautolock nitrogen rhythmbox fontawesome-fonts lpf-spotify-client picom

# discord installation
wget "https://discordapp.com/api/download?platform=linux&format=tar.gz"

# microsoft teams
wget "https://teams.microsoft.com/downloads/desktopurl?env=production&plat=linux&arch=x64&download=true&linuxArchiveType=rpm" -O teams.rpm
sudo rpm -i teams.rpm

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
