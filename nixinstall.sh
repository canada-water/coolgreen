#!/usr/bin/env bash
# update

# internet
sudo nix-env -i firefox
sudo nix-env -i discord
sudo nix-env -i teams
sudo nix-env -i zoom

# xorg
sudo nix-env -i xorg.xorgserver
sudo nix-env -i xorg.xinit
sudo nix-env -i xorg.xauth
sudo nix-env -i xautolock
sudo nix-env -i nitrogen

# sound
sudo nix-env -i rhythmbox
sudo nix-env -i spotify
sudo nix-env -i pavucontrol
sudo nix-env -i pamixer

# misc
sudo nix-env -i xfce.thunar
sudo nix-env -i font-awesome

# installing picom
git clone https://github.com/jonaburg/picom.git && cd picom
meson --buildtype=release . build
ninja -C build && cd ..
sudo mkdir -parents ~/.config/picom
sudo cp picom.conf ~/.config/picom/picom.conf

# installing the suckless "suite"
cd dmenu
sudo make clean install
cd ../dwm
sudo make clean install
cd ../slock
sudo make clean install
cd ../slstatus
sudo make clean install
cd ../st
sudo make clean install
cd ..

# creating .xinitrc
sudo touch ~/.xinitrc
sudo cp .xinitrc ~/.xinitrc
