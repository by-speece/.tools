cd ~
git clone https://github.com/by-speece/.tools
mkdir ~/.tools.d
cp -rfa ~/.tools/tools.d/.   ~/.tools.d
sudo pacman -Syu --needed --noconfirm reflector
cd ~/.tools
sudo cp -rf ~/.tools/.install/tools /usr/bin/
cd ~
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
cd ~
rm -rf yay-bin
rm -rf ~/.tools.d
mkdir ~/.tools.d
cp -rfa ~/.tools/tools.d/.   ~/.tools.d
rm install.sh
tools
