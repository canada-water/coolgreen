#!/usr/bin/env bash
# update
sudo emerge --sync
sudo emerge --update --deep --with-bdeps=y --newuse @world

# internet
sudo emerge --ask www-client/firefox
sudo emerge --ask net-im/discord-bin

# xorg
sudo emerge --ask x11-base/xorg-server
sudo emerge --ask x11-apps/xinit
sudo emerge --ask x11-apps/xauth
sudo emerge --ask x11-apps/xautolock
sudo emerge --ask x11-misc/nitrogen
sudo emerge --ask x11-misc/picom

# sound
sudo emerge --ask media-sound/rhythmbox
sudo emerge --ask media-sound/spotify
sudo emerge --ask media-sound/pavucontrol
sudo emerge --ask media-sound/pulsemixer

# misc
sudo emerge --ask xfce-base/thunar
sudo emerge --ask media-fonts/fontawesome

# pfetch
git clone https://github.com/dylanaraps/pfetch.git && cd pfetch
sudo make install
cd ..

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
