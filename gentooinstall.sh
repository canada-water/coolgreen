#!/bin/bash
# update
sudo emerge --sync
sudo emerge --update --deep --with-bdeps=y --newuse @world

# installations
sudo emerge --ask www-client/firefox net-im/discord-bin xfce-base/thunar x11-base/xorg-server x11-apps/xinit x11-apps/xauth x11-apps/xautolock x11-misc/nitrogen media-sound/rhythmbox media-sound/spotify x11-misc/picom media-fonts/fontawesome net-im/teams net-im/zoom

# pfetch
git clone https://github.com/dylanaraps/pfetch.git && cd pfetch
sudo make install
cd ..

# installing the suckless "suite"
cd rice/dmenu
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
