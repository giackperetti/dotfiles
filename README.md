# Arch i3 dotfiles
This repo houses the configuration files for most of the software i use on my `Thinkpad x250` running `Arch Linux` with `i3wm`.

Trying to install these dotfiles on a system that isn't running Arch Linux will cause errors as the `bootstrap.sh` script uses `pacman` to install required packages

### Usage
- You can install them on your system using the `bootsrap` script present in this repo.
  Firstly clone the repo:
  ```bash
  git clone https://github.com/giackperetti/dotfiles.git dotfiles/
  ```
- Then, open the directoriy the repo has been cloned in:
  ```bash
  cd dotfiles
  ```
- Then make sure the bootstrap script has executions permissions and run it.

  This will install all the required packages(if missing) and it will create symlinks in the correct directories using stow
  ```bash
  chmod +x bootstrap.sh
  ./bootstrap.sh
  ```
