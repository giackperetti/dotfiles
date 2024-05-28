# Arch i3 dotfiles
This repo houses the configuration files for most of the software i use on my `Thinkpad x250` running `Arch Linux` with `i3wm`

### Usage
These dotfiles are intended to be used with `stow`.
You can install them on your system using the `bootsrap` script present in this repo.
Firstly clone the repo:
```bash
git clone ... dotfiles/
```
Then, open the directoriy the repo has been cloned in:
```bash
cd dotfiles
```
Then make sure the bootstrap script has executions permissions and run it
```bash
chmod +x bootstrap.sh
./bootstrap.sh
```
Running the script should populate your system with symlinks to the dotfiles contained in the dotfiles folder.
