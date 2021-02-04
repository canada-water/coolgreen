#!/usr/bin/env bash
# update
sudo pacman -Su
sudo pacman -Syu

# installing paru
git clone https://aur.archlinux.org/paru.git
cd paru && makepkg -si && cd ..

# internet
paru firefox
paru discord
paru zoom
paru teams

# xorg
paru xorg-server
paru xorg-xinit
paru xorg-xauth
paru nitrogen

# sound
paru rhythmbox
paru pavucontrol
paru pamixer
paru pulseaudio pulseaudio-alsa pulseaudio-bluetooth pulseaudio-equalizer pulseaudio-jack pulseaudio-librc
paru spotify

# fonts
paru dina-font ttf-ibm-plex ttf-liberation ttf-linux-libertine font-bh-ttf ttf-roboto tex-gyre-fonts ttf-fantasque-sans-mono ttf-jetbrins-mono ttf-monofur ttf-cascadia-code inter-font adobe-source-han-sans-otc-fonts adobe-source-han-serif-otc-fonts noto-fonts-cjk noto-fonts-emoji ttf-joypixels ttf-font-awesome otf-font-awesome

# misc
paru thunar
paru pfetch-git
paru picom-jonaburg-git
paru thunar

# set up picom
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

# other odds and ends
