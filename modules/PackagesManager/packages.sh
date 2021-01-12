#!/bin/bash
cmd=(whiptail --separate-output --checklist "Select options:" 20 50 10)
options=(1 "Mirrorlist Update via Reflector" on    # any option can be set to default to "on"
         2 "System Update via Pacman" on
         3 "Update AUR packages via Yay" on
         4 "Clean Pacman" on
         5 "Clean AUR cache via Yay" on)
choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
clear
for choice in $choices
do
    case $choice in
        1)
            sudo reflector --verbose --latest 10 --sort rate --save /etc/pacman.d/mirrorlist
            ;;
        2)
            sudo pacman -Syu --noconfirm
            ;;
        3)
            yay -Syu --noconfirm
            ;;
        4)
            sudo pacman -Sc --noconfirm
            sudo pacman -Rs $(pacman -Qtdq) --noconfirm
            ;;
        5)
            yay -Sc --noconfirm
            ;;
    esac
done
