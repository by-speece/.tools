HEIGHT=30
WIDTH=50
CHOICE_HEIGHT=10
MENU="What you want to use?"

OPTIONS=(1 "DPI settings"
         2 "I3  Monitor settings")


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
            sh ~/.tools/modules/AutorunManager/scripts/xrandr/xrandr.sh
            sh ~/.tools/modules/AutorunManager/menu.sh
            ;;
        2)  sh ~/.tools/modules/AutorunManager/scripts/i3-config/i3.sh
            sh ~/.tools/modules/AutorunManager/menu.sh
            ;;

esac
