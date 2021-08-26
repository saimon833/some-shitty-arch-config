#!/usr/bin/zsh
if [ ! -d "$HOME/git" ]; then
	mkdir $HOME/git
fi
sudo pacman -S nvidia nvidia-utils xorg nvidia-settings xorg xorg-xinit flameshot nemo
cd $HOME/git
git clone https://github.com/saimon833/dwm
git clone https://github.com/saimon833/dmenu
git clone https://github.com/saimon833/slstatus

cd $HOME/git/dwm
sudo make clean install

cd $HOME/git/dmenu
sudo make clean install

cd $HOME/git/slstatus
sudo make clean install 

cp $HOME/git/arch-deploy/src/xinitrc $HOME/.xinitrc
mkdir $HOME/.config/alacritty/
cp $HOME/git/arch-deploy/src/alacritty.yml $HOME/.config/alacritty/alacritty.yml


