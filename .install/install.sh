cd ~
git clone https://github.com/by-speece/.tools
sudo pacman -Syu --needed --noconfirm reflector
cd ~/.tools
git submodule update --init --recursive --remote
cd ~/.tools/ARPM
git pull
sudo cp -rf ~/.tools/.install/tools /usr/bin/
cd ~
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
T
cd ~
rm -rf yay-bin
rm install.sh
tools
