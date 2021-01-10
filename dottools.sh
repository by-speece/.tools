#!/bin/bash
#!/bin/zsh
HEIGHT=30
WIDTH=60
CHOICE_HEIGHT=10
BACKTITLE=".tools Managment"
TITLE=".tool Managment"
MENU="What you want to do?"

OPTIONS=(
         1 "[ARPM]Arch Rice Package Manager"
         2 "System Management"
         3 "Packages Managers Tools"
         4 "Basic troubleshooting assistant"
         5 "Packages Packs"
         6 ".tools Upgrade/Install")

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
            sh ARPM/menu.sh
            sh tools 
            ;;
        2)
            sh scripts/system/menu.sh
            sh tools
            ;;
	      3)
            sh scripts/packages.sh
            sh tools
            ;;
        4)
            sh scripts/helper/menu.sh
            sh tools
            ;;
        5)
            sh packages/menu.
            sh tools
            ;;
        6)
            sh .install/update.sh
            sh tools
            ;;
    esac
