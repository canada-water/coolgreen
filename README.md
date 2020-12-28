# coolgreen: a dwm rice
## introduction
**coolgreen** is my current dwm rice, which has a nice green color scheme. With some minor configuration, this rice can easily be deployed on any Linux distro with as little hassle as possible thanks to convenient installation scripts I have provided. These scripts streamline the installation process, installing the dependencies required for the keybindings I use on a daily basis. These applications currently include Zoom, Microsoft Teams, Firefox, Discord, the Thunar file manager, Rhythmbox, and Spotify.

## installation
I have done my best to make the installation of this as streamlined and simple as possible. There are currently two methods of installation: choosing a release .tar.gz file, or using the latest, bleeding-edge version of this which I have out. I recommend sticking to the point release, but if you're adventerous, you can go ahead and use the source directly.

**release**

To install the release, you have to first download the .tar.gz archive from the releases tab. To unpack it, run:

``tar -xzvf coolgreen-<release-number>.tar.gz``

After the archive is unpacked, ``cd`` into the unpacked folder. Within that folder are installation scripts. These scripts are distro-specific, and as such are named that way. Pick the one for your distro or the distro your current distro is based on. Run:

``sudo chmod u+x <distro>install.sh
./<distro>install.sh``
