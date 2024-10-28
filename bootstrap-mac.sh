#!/bin/bash

# Function to check and install a Homebrew package
check_package() {
  if ! brew list "$1" &>/dev/null; then
    echo -e "Package $1 is not installed. Installing..."
    brew install "$1"
  else
    echo -e "Package $1 is already installed."
  fi
}

# List of required packages for macOS
required_packages=("git" "stow" "zsh" "tmux" "kitty" "neovim" "bat" "yazi")

# Install Homebrew if it's not installed
if ! command -v brew &>/dev/null; then
  echo "Homebrew is not installed. Installing..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew is already installed."
fi

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

# Stow only mac-specific and shared dotfiles
echo "Stowing macOS-specific dotfiles..."
stow -v .oh-my-zsh/custom/themes
stow -v .config/bat
stow -v .config/kitty
stow -v .config/nvim
stow -v .config/tmux
stow -v .config/zathura
stow -v .zshrc
stow -v .zshenv
stow -v .gitconfig
echo -e "\n\nDotfiles have been stowed correctly."
