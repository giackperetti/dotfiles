#!/bin/bash

# Detect package manager and define install command
if command -v pacman &>/dev/null; then
  INSTALL_CMD="sudo pacman -S --noconfirm"
  PACKAGE_CHECK_CMD="pacman -Q"
elif command -v apt &>/dev/null; then
  INSTALL_CMD="sudo apt install -y"
  PACKAGE_CHECK_CMD="dpkg -s"
  sudo apt update -y
elif command -v dnf &>/dev/null; then
  INSTALL_CMD="sudo dnf install -y"
  PACKAGE_CHECK_CMD="dnf list installed"
  sudo dnf check-update -y
elif command -v zypper &>/dev/null; then
  INSTALL_CMD="sudo zypper install -y"
  PACKAGE_CHECK_CMD="zypper info --installed"
  sudo zypper refresh
else
  echo "Unsupported package manager. Exiting."
  exit 1
fi

# Function to check if a package is installed, and install it if not
check_package() {
  if ! $PACKAGE_CHECK_CMD "$1" &>/dev/null; then
    echo -e "Package $1 is not installed. Installing..."
    $INSTALL_CMD "$1"
  else
    echo -e "Package $1 is already installed."
  fi
}

# List of required packages
required_packages=("git" "stow" "zsh" "tmux" "kitty" "neovim" "bat" "rofi" "picom" "yazi" "libqalculate")

# Install all required packages
for package in "${required_packages[@]}"; do
  check_package "$package"
done

# Install Oh My Zsh and required plugins
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "Oh My Zsh is not installed. Installing..."

  # Install Oh My Zsh itself
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
