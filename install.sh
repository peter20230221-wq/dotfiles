#!/bin/bash
set -e
echo '软件安装部分'
echo '更新系统'
sudo pacman -Syu
echo '安装AUR管理器'
sudo pacman -S --needed yay paru
echo '安装hyprland及其组件'
sudo pacman -S --needed hyprland hyprsunset hypridle hyprlock hyprpolkitagent hyprcursor
echo '安装wofi软件启动器'
sudo pacman -S --needed wofi
echo '安装kitty终端模拟器'
sudo pacman -S --needed kitty
echo '安装通知管理器'
sudo pacman -S --needed mako
echo '安装waybar顶栏与waybar天气组件'
sudo pacman -S --needed waybar
yay -S wttrbar
echo '安装neofetch与fastfetch'
yay -S --needed neofetch fastfetch
echo '安装swayosd'
sudo pacman -S --needed swayosd
echo '软件安装结束'

echo '执行软链接'
ln -sf "$HOME/.dotfiles/.config/"* "$HOME/.config/"
ln -sf "$HOME/.dotfiles/.zshrc" "$HOME/.zshrc"
echo '软链接结束'
echo '安装完成，请重启或重新登录Hyprland'

