#Speece_DE[One Monitor] Install file
mkdir ~/.settings
cp -rfa ~/.tools/settings/configs/Speece_DE[One]/. ~/.settings/
sudo pacman -Syu --needed --noconfirm -<~/.settings/dependencies.txt
yay -Syu --needed -<~/.settings/aur.txt
sudo systemctl enable ly
rm -rf ~/.config/gtk-3.0
ln -s ~/.settings/config/gtk-3.0	~/.config/
rm -rf ~/.config/dunst
ln -s ~/.settings/config/dunst		~/.config/
rm -rf ~/.config/i3
ln -s ~/.settings/config/i3		~/.config/
rm -rf ~/.config/Typora
ln -s ~/.settings/config/Typora	~/.config/
rm -rf ~/.config/mpv
ln -s ~/.settings/config/mpv		~/.config/
rm -rf ~/.config/nautilus
ln -s ~/.settings/config/nautilus	~/.config/
rm -rf ~/.config/polybar
ln -s ~/.settings/config/polybar	~/.config/
rm -rf ~/.config/ranger
ln -s ~/.settings/config/ranger	~/.config/
rm -rf ~/.config/rofi
ln -s ~/.settings/config/rofi		~/.config/
rm -rf ~/.config/libinput-gestures.conf
ln -s ~/.settings/config/libinput-gestures.conf	~/.config/libinput-gestures.conf
rm -rf ~/.config/picom.conf
ln -s ~/.settings/config/picom.conf	~/.config/picom.conf
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
rm -rf ~/.bashrc
ln -s ~/.settings/.bashrc		~/
rm -rf ~/.nanorc
ln -s ~/.settings/.nanorc		~/
rm -rf ~/.p10k.zsh
ln -s ~/.settings/.p10k.zsh		~/
rm -rf ~/.zshrc
ln -s ~/.settings/.zshrc		~/
rm -rf ~/.zshrc.zni
ln -s ~/.settings/.zshrc.zni		~/
rm -rf ~/.config/alacritty
ln -s ~/.settings/config/alacritty	~/.config/
sudo chmod +s /usr/bin/light
