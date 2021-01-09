#!/bin/bash

HEIGHT=15
WIDTH=60
CHOICE_HEIGHT=4
BACKTITLE=".settings Management"
TITLE=".settings Management"
MENU="What you want to do?"

OPTIONS=(1 "Backup of your rice"
         2 "Install Configured Rice"
         3 "Create your .settings")


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
            sh settings/backup.sh
            ;;
        2)
            sh settings/configmenu.sh
            ;;
        3)
            sh sh settings/yoursettings.sh
            ;;

esac
sh tools
