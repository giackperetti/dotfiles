PROMPT="%{$fg_bold[cyan]%}%~%{$reset_color%} \$(git_prompt_info)%(?:%{$fg_bold[red]%}%1{❯%}%{$fg_bold[yellow]%}%1{❯%}%{$fg_bold[green]%}%1{❯%} :%{$fg_bold[red]%}%1{❯%}%{$fg_bold[red]%}%1{❯%}%{$fg_bold[red]%}%1{❯%} )%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}[%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}%1{!%}%{$fg[blue]%}]"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}]"
