#!/bin/bash

check_package() {
	if ! pacman -Q "$1" &>/dev/null; then
		echo -e "Package $1 is not installed. Installing..."
		sudo pacman -S --noconfirm "$1"
	else
		echo -e "Package $1 is already installed.\n"
	fi
}

required_packages=("git" "base-devel" "stow" "i3-wm" "i3status" "zsh" "tmux" "kitty" "neovim" "dunst" "zathura" "bat" "rofi" "picom" "ranger" "libqalculate")

# Check and install required packages
for package in "${required_packages[@]}"; do
	check_package "$package"
done

# Stow the dotfiles
stow .
echo -e "Dotfiles have been stowed correctly."
