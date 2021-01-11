#!/bin/bash

read -p "Which color scheme would you like to set? " color
echo "Understood. Setting $color as theme"

# copying colorschemes
cd ~/rice/colors/dwm
sudo cp $color.h ~/rice/dwm/config.def.h
cd .. && cd st
sudo cp $color.h ~/rice/st/config.def.h
cd .. && cd startpage
sudo cp $color.html ~/rice/startpage/index.html
cd .. && cd ..

# installing the suckless "suite"
echo "Setting startpage..."
sleep 1.5
echo "Setting dwm..."
cd dwm
sudo cp config.def.h config.h >/dev/null
sudo make clean install >/dev/null
echo "Setting st..."
cd .. && cd st
sudo cp config.def.h config.h >/dev/null
sudo make clean install >/dev/null

# changing wallpaper
nitrogen --set-zoom-fill ~/rice/wallpapers/$color.jpg
echo "Please restart dwm to see changed color scheme"
