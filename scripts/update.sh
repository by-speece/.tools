mkdir ~/.tools-customconfigs
cp -rf ~/.tools/settings/backup.sh ~/.tools-customconfigs
git pull
cp -rf ~/.tools-customconfigs/backup.sh ~/.tools/settings/backup.sh
sudo cp -rf ~/.tools/.install/tools  /usr/bin/
sh tools
