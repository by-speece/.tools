cd ~
git clone https://github.com/by-speece/.tools
sudo pacman -Syu --needed --noconfirm whiptail reflector
cd ~/.tools
git submodule update --init --recursive --remote
cd ~/.tools/ARPM
git pull
sudo cp -rf ~/.tools/.install/tools /usr/bin/
cd ~
rm install.sh
tools
