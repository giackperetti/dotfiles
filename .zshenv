# Default Environment Variables
export XDG_CONFIG_HOME="$HOME/.config"
export EDITOR="nvim"
export TERM="xterm-256color"
export TERMINAL="kitty"
export PAGER="most"
export BROWSER="/usr/bin/brave"
export CHROME_PATH="$BROWSER"
export PATH="$PATH:/home/giack/.local/bin:/home/giack/.cargo/bin/:$GOPATH/bin/"
export GOPATH="/home/giack/projects/.goPath"
export DOTNET_CLI_TELEMETRY_OPTOUT=1

# Themeing
export BAT_THEME="gruvbox-dark"
export FZF_DEFAULT_OPTS='--color=bg+:#3c3836,bg:#32302f,spinner:#fb4934,hl:#928374,fg:#ebdbb2,header:#928374,info:#8ec07c,pointer:#fb4934,marker:#fb4934,fg+:#ebdbb2,prompt:#fb4934,hl+:#fb4934 --border="rounded" --border-label="" --preview-window="border-rounded" --prompt=">" --marker=">" --pointer="◆" --preview="bat --color=always --style=numbers"'

# Fix Eclipse buggy cursor
export SWT_WEBKIT2=1

# Fix man page colorization
export GROFF_NO_SGR=1
