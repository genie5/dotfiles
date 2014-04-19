# genie

export PATH=/usr/local/lib/cw:/bin:/usr/bin:/sbin:/usr/sbin:/home/mark/bin:/usr/local/bin
#export TERM="linux"
export PAGER="less"
export EDITOR="vim"
export LANG="en_US.utf8"
export LANGUAGE="en_US.utf8"
export LC_ALL="en_US.utf8"
export LD_LIBRARY_PATH=/usr/local/lib:/usr/lib
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/usr/lib/pkgconfig

alias ls="ls --color=auto"

autoload -U colors && colors
RPROMPT='%{$fg_bold[blue]%}%(?,,%{$fg_no_bold[red]%}:(%{$fg_bold[blue]%}) %1~%{$reset_color%}'
PROMPT='%{$fg_bold[blue]%}%# %{$reset_color%}'

source /home/mark/source/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
ZSH_HIGHLIGHT_STYLES[precommand]='fg=green'
ZSH_HIGHLIGHT_STYLES[path]='fg=magenta,bold'
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=magenta,bold'
ZSH_HIGHLIGHT_STYLES[path_approx]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=red,bold'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=red,bold'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=red,bold'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=magenta,bold'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=magenta,bold'
ZSH_HIGHLIGHT_STYLES[alias]='fg=green'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=green'
ZSH_HIGHLIGHT_STYLES[function]='fg=green'
ZSH_HIGHLIGHT_STYLES[command]='fg=green'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=white'

unsetopt appendhistory autocd beep notify
setopt AUTO_CD
setopt CORRECT
setopt completealiases
setopt append_history
setopt share_history
setopt hist_verify
setopt hist_ignore_all_dups
export HISTSIZE=1000000
export SAVEHIST=1000000
export HISTFILE=~/.zshistory
setopt inc_append_history
setopt promptsubst
zstyle ':completion::complete:*' use-cache 1
autoload -U compinit && compinit

# Less Colors for Man Pages
export LESS_TERMCAP_mb=$'\E[01;31m' #begin blinking
export LESS_TERMCAP_md=$'\E[01;31m' #begin bold
export LESS_TERMCAP_me=$'\E[0m'     #end mode
export LESS_TERMCAP_se=$'\E[0m'     #end standout-mode
export LESS_TERMCAP_so=$'\E[01;33m' #begin standout-mode info box
export LESS_TERMCAP_ue=$'\E[0m'     #end underline
export LESS_TERMCAP_us=$'\E[01;32m' #begin underline
