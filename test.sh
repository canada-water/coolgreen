#!/bin/bash

read -p "Which color scheme would you like to install? " color
echo "Understood. Installing $color"

# copying colorschemes
cd ~/rice/colors/dwm
sudo cp $color.h ~/rice/dwm/config.def.h
cd .. && cd st
sudo cp $color.h ~/rice/st/config.def.h
cd .. && cd startpage
sudo cp $color.html ~/rice/startpage/index.html
cd .. && cd ..

# installing the suckless "suite"
cd dwm
sudo cp config.def.h config.h
sudo make clean install
cd .. && cd st
sudo cp config.def.h config.h
sudo make clean install
