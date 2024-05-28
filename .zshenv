# Default Environment Variables
export XDG_CONFIG_HOME="$HOME/.config"
export EDITOR="nvim"
export TERM="xterm-256color"
export TERMINAL="kitty"
export BROWSER="/usr/bin/brave"
export CHROME_PATH="$BROWSER"
export PATH="$PATH:/home/giack/.local/bin:/home/giack/.cargo/bin/:/home/giack/coding/.goPath/bin/"
export GOPATH="/home/giack/coding/.goPath"
export DOTNET_CLI_TELEMETRY_OPTOUT=1

# Themeing
export BAT_THEME="gruvbox-dark"
export FZF_DEFAULT_OPTS='--color=bg+:#3c3836,bg:#32302f,spinner:#fb4934,hl:#928374,fg:#ebdbb2,header:#928374,info:#8ec07c,pointer:#fb4934,marker:#fb4934,fg+:#ebdbb2,prompt:#fb4934,hl+:#fb4934 --border="rounded" --border-label="" --preview-window="border-rounded" --prompt=">" --marker=">" --pointer="◆" --preview="bat --color=always --style=numbers"'

# Colorscheme for MAN Pages
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# Fix Eclipse buggy cursor
export SWT_WEBKIT2=1
