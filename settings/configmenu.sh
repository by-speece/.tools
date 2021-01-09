HEIGHT=30
WIDTH=130
CHOICE_HEIGHT=10
BACKTITLE=".settings configs menu"
TITLE=".settings configs menu"
MENU="What you want install?"

OPTIONS=(1 "Speece DE - i3-gaps + polybar + some apps[One Monitor Edition]"
         2 "Speece DE - i3-gaps + polybar + some apps[Dual Monitor Edition](Work in Progress)")


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
            sh settings/configs/Speece_DE[One]/install.sh
            ;;
        2)
            sh settings/configs/Speece_DE[Dual]/install.sh
            ;;
esac
sh tools
