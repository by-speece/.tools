HEIGHT=30
WIDTH=50
CHOICE_HEIGHT=10
MENU="What you want to use?"

OPTIONS=(1 "Xrandr Script-Desktop - 23 inch + 1920 x 1080"
         2 "Xrandr Script-Notebook - 14 inch + 1920 x 1080")


CHOICE=$(whiptail --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
            sh ~/.tools/AutorunManager/scripts/xrandr/xrandr-desktop.sh
            cp -rf ~/.tools/AutorunManager/scripts/xrandr/xrandr-desktop.sh ~/.tools/autorun/dpi.sh
            sh ~/.tools/AutorunManager/menu.sh
            ;;
        2)  sh ~/.tools/AutorunManager/scripts/xrandr/xrandr-notebook.sh
            cp -rf ~/.tools/AutorunManager/scripts/xrandr/xrandr-notebook.sh ~/.tools/autorun/dpi.sh
            sh ~/.tools/AutorunManager/menu.sh
            ;;

esac
