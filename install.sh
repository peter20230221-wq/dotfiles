#!/bin/bash
set -e
echo '软件安装部分'
echo '更新系统'
sudo pacman -Syu
echo '安装基础编译依赖'
sudo pacman -S --needed base-devel rust cargo openssl pkg-config
echo '安装字体'
sudo pacman -S --needed noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-nerd-fonts-symbols ttf-jetbrains-mono-nerd
echo '安装AUR管理器'
sudo pacman -S --needed yay paru
echo '安装hyprland及其组件'
sudo pacman -S --needed hyprland hyprsunset hypridle hyprlock hyprpolkitagent hyprcursor
echo '安装剪贴板管理器'
sudo pacman -S --needed copyq
echo '安装输入法'
sudo pacman -S --needed fcitx5 fcitx5-chinese-addons fcitx5-configtool
echo '安装网络管理托盘'
sudo pacman -S --needed network-manager-applet
echo '安装wofi软件启动器'
sudo pacman -S --needed wofi
echo '安装kitty终端模拟器'
sudo pacman -S --needed kitty
echo '安装截图工具'
sudo pacman -S --needed grim slurp
echo '安装终端工具'
sudo pacman -S --needed thefuck
echo '安装oh-my-zsh'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
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

