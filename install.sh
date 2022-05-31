#! /bin/bash

sudo apt update
sudo apt upgrade

sudo apt install gnome-tweaks
sudo apt install gnome-shell-extensions
sudo apt install conky-all curl jq
sudo apt-get install chrome-gnome-shell

git clone https://github.com/vinceliuice/WhiteSur-gtk-theme
./WhiteSur-gtk-theme-master/install.sh

git clone https://github.com/yeyushengfan258/Reversal-icon-theme
./Reversal-icon-theme-master/install.sh -red

mv fonts $HOME/.local/share

git clone https://github.com/vinceliuice/Vimix-cursors
./Vimix-cursors-master/install.sh

mkdir $HOME/.icons
mv $HOME/.local/share/icons/Vimix-cursors $HOME/.local/share/icons/Vimix-white-cursors/ $HOME/.icons

mkdir $HOME/.local/share/gnome-shell/extensions
mv extensions/* $HOME/.local/share/gnome-shell/extensions

gnome-extensions enable arcmenu@arcmenu.com 
gnome-extensions enable blur-my-shell@aunetx 
gnome-extensions enable dash-to-panel@jderose9.github.com
gnome-extensions enable mediacontrols@cliffniff.github.com 
gnome-extensions enable CoverflowAltTab@palatis.blogspot.com
gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com

dconf load /org/gnome/shell/extensions/< all-extensions-config/all_extension_settings.conf

dconf write /org/gnome/desktop/interface/cursor-theme "'Vimix-white-cursors'"
dconf write /org/gnome/desktop/interface/icon-theme "'Reversal-red-dark'"
dconf write /org/gnome/shell/extensions/coverflowalttab/switcher-style "'Timeline'"
dconf write /org/gnome/shell/extensions/user-theme/name "'WhiteSur-Dark-solid'"
dconf write /org/gnome/desktop/interface/gtk-theme "'WhiteSur-Dark-solid'"
dconf write /org/gnome/desktop/sound/theme-name "'Yaru'"
dconf write /org/gnome/desktop/interface/font-name "'Roboto 11'"
dconf write /org/gnome/desktop/interface/document-font-name "'Roboto 11'"
dconf write /org/gnome/desktop/wm/preferences/titlebar-font "'Roboto Medium 11'"
dconf write /org/gnome/mutter/center-new-windows true

mkdir $HOME/.config/conky
mv conky-config/Graffias $HOME/.config/conky
mv conky-config/start_conky.desktop $HOME/.config/autostart

./WhiteSur-gtk-theme/tweaks.sh -s
./WhiteSur-gtk-theme/tweaks.sh -f monterey

echo -e "\n****************************************"
echo -e "\nCredits:"
echo -e "\n****************************************"
echo -e "\nhttps://www.pling.com/p/1805660/"
echo -e "\nhttps://www.youtube.com/watch?v=lXIb-1_H-mA"
echo -e "\n****************************************"
echo -e "\nStyling your Ubuntu machine is complete!\n"

