#!/usr/bin/env bash
# additional imports
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo zypper ar https://packages.microsoft.com/yumrepos/ms-teams/ ms-teams

# update
sudo zypper refresh
sudo zypper update

# internet
sudo zypper install firefox
sudo zypper install discord
sudo zypper install teams

# xorg
sudo zypper install xorg-x11-server
sudo zypper install xauth
sudo zypper install xinit
sudo zypper install xautolock
sudo zypper install nitrogen

# sound
sudo zypper install rhythmbox
sudo zypper install pavucontrol
sudo zypper install spotify
sudo zypper install pamixer

# misc
sudo zypper install thunar
sudo zypper install fontawesome-fonts

# zoom
wget "https://zoom.us/client/latest/zoom_openSUSE_x86_64.rpm"
sudo zypper install zoom_openSUSE_x86_64.rpm

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
