HEIGHT=30
WIDTH=50
CHOICE_HEIGHT=10
BACKTITLE="Official configs menu"
TITLE="Official configs menu"
MENU="What you want install?"

OPTIONS=(1 "Speece DE")


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
            sh ~/.tools/modules/DE/Speece_DE/install.sh
            ;;

esac
