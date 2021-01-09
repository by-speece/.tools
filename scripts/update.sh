mkdir ~/.tools-customconfigs
cp -rf ~/.tools/settings/backup.sh ~/.tools-customconfigs
git pull
cp -rf ~/.tools-customconfigs/backup.sh ~/.tools/settings/backup.sh
sudo cp -rf ~/.tools/.install/tools  /usr/bin/
cd ~
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
cd ~
rm -rf yay-bin
sh tools
