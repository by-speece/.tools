#!/bin/bash
#!/bin/zsh
HEIGHT=30
WIDTH=60
CHOICE_HEIGHT=10
BACKTITLE=".tools Managment"
TITLE=".tool Managment"
MENU="What you want to do?"

OPTIONS=(
         1 "Rice Manager"
         2 "Packages Managers Tools"
         3 "Autorun Manager"
         4 "Basic troubleshooting assistant"
         5 ".tools Upgrade")

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
            sh ~/.tools/modules/DE/menu.sh
            sh tools
            ;;
        2)
            sh ~/.tools/modules/PackagesManager
            sh tools
            ;;
	      3)
            sh ~/.tools/modules/AutorunManager/menu.sh
            sh tools
            ;;
        4)
            echo "This will be added in the future"
            sh tools
            ;;
        5)
            sh .install/update.sh
            sh tools
            ;;
    esac
