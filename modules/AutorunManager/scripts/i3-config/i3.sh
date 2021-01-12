HEIGHT=30
WIDTH=50
CHOICE_HEIGHT=10
MENU="What you want to use?"

OPTIONS=(1 "Dual Monitor Hdmi + DisplayPort"
         2 "Dual Monitor Laptop + Hdmi"
         3 "One Monitor")


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
            cp ~/.tools/modules/AutorunManager/scripts/i3-config/i3-dual-monitor-hdmi+dpi     ~/.tools/config/tools.d/i3-config/config.display
            sh ~/.tools/config/tools.d/service.sh
            ;;
        2)
            cp ~/.tools/modules/AutorunManager/scripts/i3-config/i3-dual-netbook+hdmi     ~/.tools/config/tools.d/i3-config/config.display
            sh ~/.tools/config/tools.d/service.sh
            ;;
        3)
            cp ~/.tools/modules/AutorunManager/scripts/i3-config/i3-one-monitor     ~/.tools/config/tools.d/i3-config/config.display
            sh ~/.tools/config/tools.d/service.sh
            ;;
esac
