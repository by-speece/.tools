HEIGHT=30
WIDTH=50
CHOICE_HEIGHT=10
MENU="What you want to use?"

OPTIONS=(1 "Picom ON"
         2 "Picom OFF")


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
	          cp -rf ~/.tools/modules/AutorunManager/scripts/picom/picom-on.sh ~/.tools.d/picom-autorun/picom.sh
            i3-msg restart
            ;;
        2)  rm -rf ~/.tools.d/picom-autorun/picom.sh
            killall picom
            ;;

esac
