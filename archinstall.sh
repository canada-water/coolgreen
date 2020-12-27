#!/bin/bash
# update
sudo pacman -Su
sudo pacman -Syu

# simple installations
sudo pacman -S firefox discord thunar xorg-server xorg-xinit xorg-xauth nitrogen code rhythmbox picom xautolock ttf-font-awesome otf-font-awesome

# installing yay
git clone https://aur.archlinux.org/yay.git && cd yay
makepkg -si

# installing AUR packages
yay -S spotify pfetch-git zoom teams

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
