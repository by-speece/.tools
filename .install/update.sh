cd ~/.tools
git pull
mkdir ~/.tools.tmp
cp -rf ~/.tools.d/i3-autorun/config.d/config.base   ~/.tools.tmp
cp -rf ~/.tools.d/i3-autorun/config.d/i3            ~/.tools.tmp
rm -rf ~/.tools.d/
mkdir ~/.tools.d
cp -rf ~/.tools/tools.d/.  ~/.tools.d/
cp -rf ~/.tools.tmp/config.base   ~/.tools.d/i3-autorun/config.d/config.base
cp -rf ~/.tools.tmp/i3            ~/.tools.d/i3-autorun/config.d/
rm -rf ~/.tools.tmp
exit
