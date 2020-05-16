cd ~/
echo"""Basically this will setup xorg and dwm with some other useful things you might need for your journey"""
echo"""Updating System"""
sudo xbps-install -Syu
sudo xbps-install -Syu
echo"""Installing Packages"""
sudo xbps-install -Sy xorg git curl wget firefox base-devel libX11-devel libXft-devel libXinerama-devel bash-completion vim nitrogen
echo"""Cloning the repos"""
git clone https://git.suckless.org/dwm
git clone https://github.com/LukeSmithxyz/st
git clone https://git.suckless.org/dmenu
git clone https://sarcasticdream/voidshiz
echo"""Compiling the shiz"""
cd ~/dwm
sudo sed -i 's@X11INC = usr/X11R6/include@X11INC = usr/include/X11@g' config.mk
sudo sed -i 's@X11LIB = usr/X11R6/lib@X11LIB = usr/lib/X11@g' config.mk
cd ~/st
sudo make clean install
cd ~/dmenu
sudo make clean install
mv ~/voidshiz/.xinitrc ~/
echo """
In your xinitrc please change the resolution to one your are comfortable with
exec dwm
"""
