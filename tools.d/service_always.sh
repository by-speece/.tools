#load dpi settings
echo "Loading DPI Settings"
sh ~/.tools.d/dpi-autorun/dpi.sh
echo "Loading Picom"
sh ~/.tools.d/picom-autorun/picom.sh > /dev/null 2>&1
