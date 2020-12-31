#!/usr/bin/env bash
# update
sudo pacman -Su
sudo pacman -Syu

# internet
sudo pacman -S firefox
sudo pacman -S discord

# xorg
sudo pacman -S xorg-server
sudo pacman -S xorg-xinit
sudo pacman -S xorg-xauth
sudo pacman -S xautolock
sudo pacman -S nitrogen

# sound
sudo pacman -S rhythmbox
sudo pacman -S pavucontrol
sudo pacman -S pamixer

# misc
sudo pacman -S thunar
sudo pacman -S ttf-font-awesome
sudo pacman -S otf-font-awesome

# installing yay
git clone https://aur.archlinux.org/yay.git && cd yay
makepkg -si

# installing AUR packages
yay -S spotify 
yay -S pfetch-git
yay -S zoom
yay -S teams
yay -S picom-jonaburg-git

# set up picom
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
sudo touch ~/.xinitrc
sudo cp .xinitrc ~/.xinitrc
