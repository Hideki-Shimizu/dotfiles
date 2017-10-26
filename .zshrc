PATH=/bin:/usr/bin:/usr/local/bin:${PATH}
export PATH
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/local/bin:$PATH

export PATH=$HOME/26mAl+p/Workdir/bin:$PATH

export LANG=en_US

bindkey -r "\e[A"
bindkey -r "\e[B"
bindkey -r "\e[C"
bindkey -r "\e[D"

#Unbined Delete key
bindkey -r "^?"
bindkey -r "\e[D"

bindkey -r "^M"
alias lcc='fc -ln -1 | awk "{\$1=\$1}1" ORS="" | pbcopy'

#Functions

function acd {
    cd ~/Analyze/$1
}

function ccd {
    cd /Users/Shimizu/26mAl+p/analysis_code_mar17/$1
}

function thesis {
    cd /Users/Shimizu/Tex/MasterThesis/$1
}

#Telescope
alias Tel='make -f makefile; ./Telescope'

#arduino
alias arduino='/Users/Shimizu/Downloads/Arduino.app/Contents/MacOS/Arduino'

#JabRef
alias JabRef='open -a JabRef'

#JabRef
alias enewz='./local/enewz/enewz'
#neovim
export XDG_CONFIG_HOME=$HOME/.config
alias vi='nvim'

#atom
export PATH=$HOME/local/bin:$PATH
export PATH="/Library/TeX/texbin:$PATH"


# ROOT 
ROOTVERSION=6.08.00
export ROOTSYS=~/local/root
export PATH=${ROOTSYS}/bin:${PATH}
export DLD_LIBRARY_PATH=${ROOTSYS}/lib:${DYLD_LIBRARY_PATH}
export LD_LIBRARY_PATH=${ROOTSYS}/lib:${LD_LIBRARY_PATH}

#fink
source /sw/bin/init.sh

# geant4.sh
cd ~/geant4/geant4.10.2-install/bin
source geant4.sh
cd ~/geant4/build
source geant4make.sh
cd

export PATH=$HOME/Downloads/dawn_3_90b/bin:$PATH
export RBENV_ROOT=/usr/local/var/rbenv
export PATH=$HOME//Downloads/dawncut_1_54a/bin:$PATH
export PATH=$HOME/Downloads//david_1_36a/bin:$PATH

# alias

alias alg4='~/g4test/build-Aluminum_simulation'
alias dic='open -a dictionary'
alias web='open -a firefox'
alias lise='wine ~/LISE/LISE++.exe'
alias mail='open -a mail'
alias updatedb='sudo /usr/libexec/locate.updatedb'


alias gfortrun='gcc'


#atom for TeX
export PATH="/Library/TeX/texbin:$PATH"



########################################
# users generic .zshrc file for zsh(1)

## Environment variable configuration
#
# LANG
#
export LANG=ja_JP.UTF-8
case ${UID} in
0)
    LANG=C
    ;;
esac


## Default shell configuration
#
# set prompt
#
autoload colors
colors
case ${UID} in
0)
    PROMPT="%{${fg[cyan]}%}$(echo ${HOST%%.*} | tr '[a-z]' '[A-Z]') %B%{${fg[red]}%}%/#%{${reset_color}%}%b "
    PROMPT2="%B%{${fg[red]}%}%_#%{${reset_color}%}%b "
    SPROMPT="%B%{${fg[red]}%}%r is correct? [n,y,a,e]:%{${reset_color}%}%b "
    ;;
*)
    PROMPT="%{${fg[red]}%}%/%%%{${reset_color}%} "
    PROMPT2="%{${fg[red]}%}%_%%%{${reset_color}%} "
    SPROMPT="%{${fg[red]}%}%r is correct? [n,y,a,e]:%{${reset_color}%} "
    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] &&
        PROMPT="%{${fg[cyan]}%}$(echo ${HOST%%.*} | tr '[a-z]' '[A-Z]') ${PROMPT}"
    ;;
esac

#PROMPT='[%F{yellow}%B%n%b%f@%F{magenta}%U%m%u%f]%F{cyan}%d%f$ '
PROMPT='[%F{yellow}%B%n%b%f]%F{cyan}%d%f$ '
autoload -U compinit; compinit
setopt mark_dirs
setopt list_types
setopt auto_menu
setopt interactive_comments
setopt complete_in_word
setopt globdots
setopt list_packed

setopt correct
setopt auto_pushd
setopt auto_cd
setopt pushd_ignore_dups
setopt extended_glob
setopt hist_ignore_all_dups
setopt hist_ignore_space
alias ...='cd ../..'
alias ....='cd ../../..'

zstyle ':completion:*:default' menu select=1
WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

# auto change directory
#
setopt auto_cd

# auto directory pushd that you can get dirs list by cd -[tab]
#
setopt auto_pushd

# command correct edition before each completion attempt
#
setopt correct

# compacked complete list display
#
setopt list_packed

# no remove postfix slash of command line
#
setopt noautoremoveslash

# no beep sound when complete list displayed
#
setopt nolistbeep


## Keybind configuration
#
# emacs like keybind (e.x. Ctrl-a gets to line head and Ctrl-e gets
#   to end) and something additions
#
bindkey -e
bindkey "^[[1~" beginning-of-line # Home gets to line head
bindkey "^[[4~" end-of-line # End gets to line end
bindkey "^[[3~" delete-char # Del

# historical backward/forward search with linehead string binded to ^P/^N
#
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^p" history-beginning-search-backward-end
bindkey "^n" history-beginning-search-forward-end
bindkey "\\ep" history-beginning-search-backward-end
bindkey "\\en" history-beginning-search-forward-end

# reverse menu completion binded to Shift-Tab
#
bindkey "\e[Z" reverse-menu-complete


## Command history configuration
#
HISTFILE=${HOME}/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data


## Completion configuration
#
fpath=(${HOME}/.zsh/functions/Completion ${fpath})
autoload -U compinit
compinit


## zsh editor
#
autoload zed


## Prediction configuration
#
#autoload predict-on
#predict-off


## Alias configuration
#
# expand aliases before completing
#
setopt complete_aliases     # aliased ls needs if file/dir completions work

alias where="command -v"
alias j="jobs -l"

case "${OSTYPE}" in
freebsd*|darwin*)
    alias ls="ls -G -w"
    ;;
linux*)
    alias ls="ls --color"
    ;;
esac

alias la="ls -a"
alias lf="ls -F"
alias ll="ls -l"

alias du="du -h"
alias df="df -h"

alias su="su -l"


## terminal configuration
#
case "${TERM}" in
screen)
    TERM=xterm
    ;;
esac

case "${TERM}" in
xterm|xterm-color)
    export LSCOLORS=exfxcxdxbxegedabagacad
    export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
    zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'
    ;;
kterm-color)
    stty erase '^H'
    export LSCOLORS=exfxcxdxbxegedabagacad
    export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
    zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'
    ;;
kterm)
    stty erase '^H'
    ;;
cons25)
    unset LANG
    export LSCOLORS=ExFxCxdxBxegedabagacad
    export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
    zstyle ':completion:*' list-colors 'di=;34;1' 'ln=;35;1' 'so=;32;1' 'ex=31;1' 'bd=46;34' 'cd=43;34'
    ;;
jfbterm-color)
    export LSCOLORS=gxFxCxdxBxegedabagacad
    export LS_COLORS='di=01;36:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
    zstyle ':completion:*' list-colors 'di=;36;1' 'ln=;35;1' 'so=;32;1' 'ex=31;1' 'bd=46;34' 'cd=43;34'
    ;;
esac

# set terminal title including current directory
#
case "${TERM}" in
xterm|xterm-color|kterm|kterm-color)
    precmd() {
        echo -ne "\033]0;${USER}@${HOST%%.*}:${PWD}\007"
    }
    ;;
esac


## load user .zshrc configuration file
#
[ -f ${HOME}/.zshrc.mine ] && source ${HOME}/.zshrc.mine

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/Users/Shimizu/6chefs2/cocos2d-x-3.13.1/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable COCOS_X_ROOT for cocos2d-x
export COCOS_X_ROOT=/Users/Shimizu/6chefs2
export PATH=$COCOS_X_ROOT:$PATH

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT=/Users/Shimizu/6chefs2/cocos2d-x-3.13.1/templates
export PATH=$COCOS_TEMPLATES_ROOT:$PATH
