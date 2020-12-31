#!/usr/bin/env bash
# update
sudo apt-get update
sudo apt-get upgrade

# simple installations
sudo apt install firefox
sudo apt install thunar
sudo apt install xorg
sudo apt install xinit
sudo apt install xauth
sudo apt install xautolock
sudo apt install rhythmbox
sudo apt install compton

# .deb installations
wget "https://discordapp.com/api/download?platform=linux&format=deb" -O discord.deb
sudo dpkg -i discord.deb
wget "https://code.visualstudio.com/docs/?dv=linux64_deb" -O vsc.deb
sudo dpkg -i vsc.deb
wget "https://teams.microsoft.com/downloads/destopurl?env=production&plat=linux&arch=x64&download=true&linuxArchiveType=deb" -O teams.deb
sudo dpkg -i teams.deb
wget "https://zoom.us/client/latest/zoom_amd64.deb" -O zoom.deb
sudo dpkg -i zoom.deb

# instlaling the suckless "suite"
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
sudo cp .xinitrc ~/.xinitrc
