#!/bin/bash

HEIGHT=15
WIDTH=60
CHOICE_HEIGHT=4
BACKTITLE="Packages Managers"
TITLE="Install Packages Packs"
MENU="What you want to do?"

OPTIONS=(1 "Speece Pack"
         2  "Xorg-pack")


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
            sudo pacman -Syu -<packs/speecepack/repo.txt
            yay -Syu -<packs/speecepack/aur.txt
            ;;
        2)
            sh packs/xorg.sh
esac
sh tools
