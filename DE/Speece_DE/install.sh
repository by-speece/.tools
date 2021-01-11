#!/bin/bash
cmd=(whiptail --separate-output --checklist "Select modules:" 20 50 10)
options=(1 "Install .settings rice" on    # any option can be set to default to "on"
         2 "Install dependencies form Repo" on
         3 "Install dependencies from AUR" on
         4 "Install Extra Apps from Repo" off
         5 "Install Extra Apps from AUR" off)
choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
clear
for choice in $choices
do
    case $choice in
        1)
            rm -rf ~/.config/gtk-3.0
            ln -s ~/.tools/DE/Speece_DE/config/gtk-3.0	~/.config/
            rm -rf ~/.config/dunst
            ln -s ~/.tools/DE/Speece_DE/config/dunst		~/.config/
            rm -rf ~/.config/i3
            ln -s ~/.tools/DE/Speece_DE/config/i3		~/.config/
            rm -rf ~/.config/Typora
            ln -s ~/.tools/DE/Speece_DE/config/Typora	~/.config/
            rm -rf ~/.config/mpv
            ln -s ~/.tools/DE/Speece_DE/config/mpv		~/.config/
            rm -rf ~/.config/nautilus
            ln -s ~/.tools/DE/Speece_DE/config/nautilus	~/.config/
            rm -rf ~/.config/polybar
            ln -s ~/.tools/DE/Speece_DE/config/polybar	~/.config/
            rm -rf ~/.config/ranger
            ln -s ~/.tools/DE/Speece_DE/config/ranger	~/.config/
            rm -rf ~/.config/rofi
            ln -s ~/.tools/DE/Speece_DE/config/rofi		~/.config/
            rm -rf ~/.config/libinput-gestures.conf
            ln -s ~/.tools/DE/Speece_DE/config/libinput-gestures.conf	~/.config/libinput-gestures.conf
            rm -rf ~/.config/picom.conf
            ln -s ~/.tools/DE/Speece_DE/config/picom.conf	~/.config/picom.conf
            rm -rf ~/.bashrc
            ln -s ~/.tools/DE/Speece_DE/.bashrc		~/
            rm -rf ~/.nanorc
            ln -s ~/.tools/DE/Speece_DE/.nanorc		~/
            rm -rf ~/.p10k.zsh
            ln -s ~/.tools/DE/Speece_DE/.p10k.zsh		~/
            rm -rf ~/.zshrc
            ln -s ~/.tools/DE/Speece_DE/.zshrc		~/
            rm -rf ~/.zshrc.zni
            ln -s ~/.tools/DE/Speece_DE/.zshrc.zni		~/
            rm -rf ~/.config/alacritty
            ln -s ~/.tools/DE/Speece_DE/config/alacritty	~/.config/
            ;;
        2)
            sudo pacman -Syu --needed --noconfirm -<~/.tools/DE/Speece_DE/dependencies/base-repo.txt
            sudo chmod +s /usr/bin/light
            ;;
        3)
            yay -Syu --noconfirm --needed -<~/.tools/DE/Speece_DE/dependencies/base-aur.txt
            sudo rm -rf /etc/systemd/system/display-manager.service
            sudo systemctl enable ly.service
            betterlockscreen -U ~/.tools/Wallpaper/Wallpaper.png
            ;;
        4)
            sudo pacman -Syu --needed --noconfirm -<~/.tools/DE/Speece_DE/dependencies/extra-repo.txt
            ;;
        5)
            yay -Syu --noconfirm --needed -<~/.tools/DE/Speece_DE/dependencies/extra-aur.txt
            ;;
    esac
done
sh tools
