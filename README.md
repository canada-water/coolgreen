# coolgreen: a dwm rice
## introduction
Linux is about learning. You learn how to not be afraid of the command line. You learn what makes a kernel click. You learn what freedom truly is, and you learn how to experience that freedom. Something else you learn is how to customize. The customizations simply are as limitless as your imagination is. There's a catch with that though: what if you're not very creative? Or what if the limitless opportunities are daunting to some? That's something that I aim to solve, or at least fix a part of, with **coolgreen**.

coolgreen is more than just a rice; it's a full installation package. What dwm, i3, bspwm, xmonad, herbstluftwm, spectrwm, and other window managers don't include is ease of accessability. While that's definitely a selling point, as you can jump in and customize them to your heart's content, to the newer users, that makes it a bit difficult to get into. Sometimes the documentation is incredibly boring, lackluster, or nonexistent. Other times the configuration is too complex, even with proper documentation. This is something I struggled with while I was learning how to use window managers. I saw the potential, but part of the experience of using them was, at first, just too confusing or seemed impossible.

coolgreen is based off of dwm and utelizes other pieces of suckless software. The suckless philosophy is to keep the software as minimal as possible. I've attempted to keep with that philosophy and to continue to provide a minimal package, while at the same time expanding upon the suckless philosophy by making it easy. Consider, if you will, coolgreen as the easy button to window managers.

Currently, coolgreen is offered on Arch Linux and its derivitives, Debian and its derivitives, Fedora, Gentoo, and openSUSE. By the time coolgreen reaches version 1.0, it will be offered fluidly on most, if not all current Linux distros. In its current state, the scripts for installation are experimental. I haven't attempted to run a single one on actual hardware, so these are simply guesses as to what would work. If you're sold, go ahead and download it to give it a shot. I would love some feedback on this project, as it will help me understand what I need to do in order to make this the best project I possibly can.

## installation
I have done my best to make the installation of this as streamlined and simple as possible. There are currently two methods of installation: choosing a release .tar.gz file, or using the latest, bleeding-edge version of this which I have out. I recommend sticking to the point release, but if you're adventerous, you can go ahead and use the source directly.

**release**

To install the release, you have to first download the .tar.gz archive from the releases tab. To unpack it, run:

``tar -xzvf coolgreen-<release-number>.tar.gz``

After the archive is unpacked, ``cd`` into the unpacked folder. Within that folder are installation scripts. These scripts are distro-specific, and as such are named accordingly. Pick the one for your distro or the distro your current distro is based on. Run:

``sudo chmod u+x <distro>install.sh``

``./<distro>install.sh``

Put in your user password, and the script will install everything necessary to run this.

**source**

This is basically the same as the release, except you can simply run

``git clone https://github.com/canada-water/coolgreen.git``

Afterwards, ``cd`` into the directory, and run the same commands as the release install.
