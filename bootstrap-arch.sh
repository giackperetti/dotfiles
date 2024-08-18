#!/bin/bash

check_package() {
  if ! pacman -Q "$1" &>/dev/null; then
    echo -e "Package $1 is not installed. Installing..."
    sudo pacman -S --noconfirm "$1"
  else
    echo -e "Package $1 is already installed."
  fi
}

required_packages=("git" "base-devel" "stow" "i3-wm" "i3status" "zsh" "tmux" "kitty" "neovim" "dunst" "zathura" "bat" "rofi" "picom" "ranger" "libqalculate" "xdotool" "maim")

# Install all required packages
for package in "${required_packages[@]}"; do
  check_package "$package"
done

# Install oh-my-zsh and required plugins
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "Oh My Zsh is not installed. Installing..."

  # Install oh-my-zsh itself
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  # Install required plugins
  git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
else
  echo "Oh My Zsh is already installed."
fi

# Set ZSH as default shell
if [ "$SHELL" != "$(which zsh)" ]; then
  echo "Changing default shell to ZSH."
  chsh -s "$(which zsh)"
else
  echo "Default shell is already ZSH."
fi

# Stow the dotfiles
stow .
echo -e "\n\nDotfiles have been stowed correctly."
