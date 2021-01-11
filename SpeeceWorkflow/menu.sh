HEIGHT=30
WIDTH=50
CHOICE_HEIGHT=10
MENU="What you want to use?"

OPTIONS=(1 "Xrandr Script-Desktop"
         2 "Xrandr Script-Notebook")


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
            sh ~/.tools/SpeeceWorkflow/scipts/xrandr-desktop.sh
            sh ~/.tools/SpeeceWorkflow/menu.sh
            ;;
        2)  sh ~/.tools/SpeeceWorkflow/scripts/xrandr-notebook.sh
            sh ~/.tools/SpeeceWorkflow/menu.sh
            ;;
        3)
esac
