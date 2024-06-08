# Oh my zsh folder
export ZSH="/home/giack/.oh-my-zsh"

# Oh my zsh theme
ZSH_THEME="nova"

# Oh my zsh update checking interval
export UPDATE_ZSH_DAYS=10

# Zsh corrections
ENABLE_CORRECTION="true"

# Oh my zsh plugins
plugins=(
  git
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# Configuration Aliases
alias zshconf="nvim ~/.dotfiles/.zshrc ~/.dotfiles/.zshenv"
alias zshup="source ~/.zshrc"
alias nvimconf="nvim ~/.dotfiles/.config/nvim/"
alias kittyconf="nvim ~/.dotfiles/.config/kitty/"
alias i3conf="nvim ~/.dotfiles/.config/i3/config ~/.dotfiles/.config/i3status/config"
alias picomconf="nvim ~/.dotfiles/.config/picom/picom.conf"
alias tmuxconf="nvim ~/.dotfiles/.config/tmux/tmux.conf"

# Aliases to improve CLI experience
alias man="LC_ALL=en_US.utf8 man"
alias lg="lazygit"
alias cal="cal -3m"
alias feh="feh -."
alias cat="bat"
alias ping="gping"

# Colorize commands output
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# easier to read disk
alias df='df -h'     # human-readable sizes
alias free='free -m' # show sizes in MB

# Ls Replacement
alias ls="exa"
alias la="ls -a"
alias lt="ls --tree"
alias lta="ls -a --tree"

# Quicker git commands
alias ga="git add"
alias gaa="git add -A"
alias gc="git commit"
alias gcm="git commit -m"
alias gps="git push"
alias gpl="git pull"
alias gplr="git pull --rebase"
alias gs="git status"
alias gl="git log --graph --pretty=format:'%C(red)%h%Creset - %s %Cgreen(%cs) %C(bold blue)<%an>%Creset%C(magenta)%d%Creset'"
alias gck="git checkout"

# Autostart tmux
# case $- in *i*)
#   if [ -z "$TMUX" ]; then exec tmux; fi;;
# esac
