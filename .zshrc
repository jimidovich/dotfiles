# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
# added by Anaconda3 4.1.1 installer
#export PATH="/home/yiju/anaconda3/bin:$PATH"
export PATH=$PATH:/opt/anaconda/bin
#export PATH=/opt/anaconda/bin:$PATH

#watch nvidia-smi -q -d power
#watch nvidia-smi -q -d temperature

# QT path
#export QTDIR=/home/yiju/Qt5.7.1/5.7/gcc_64
#export QTIDEDIR=/home/yiju/Qt5.7.1/Tools/QtCreator/bin
#export PATH=$QTDIR/bin:$QTIDEDIR:$PATH 
#export MANPATH=$QTDIR/man:$MANPATH 
#export LD_LIBRARY_PATH=$QTDIR/lib:$LD_LIBRARY_PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/yiju/.oh-my-zsh

#export TERM=screen-256color
export LD_LIBRARY_PATH=/home/yiju/momi/momi/v6.3.6_20160606_api_tradeapi_linux64
export LD_LIBRARY_PATH=/opt/cuda/lib64:$LD_LIBRARY_PATH
#export CUDA_HOME=/opt/cuda

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="agnoster"
ZSH_THEME="gianu"
DEFAULT_USER="yiju"
RPROMPT="%T %w"

# Tweak fn key on mac
#echo jimjjmm | sudo -S sh -c 'echo 2 > /sys/module/hid_apple/parameters/fnmode'
#clear

alias spt='sudo apt-get'
alias vi='vim'
alias vvpy27='source /home/yiju/venvs/py27/bin/activate'
alias vvpy3='source /home/yiju/venvs/py3/bin/activate'
alias vvwx='source /home/yiju/venvs/weixin/bin/activate'

alias pac='sudo pacman'
alias pacs='sudo pacman -S'
alias pacr='sudo pacman -R'

alias xx='startx'
alias vup='nmcli con up id VPNhk8'
alias vn='nmcli con down id VPNhk8'

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git, z)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
 alias zshconfig="vi ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# remap Esc to Caps Lock
#xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
#setxkbmap -option 'caps:ctrl_modifier'
#xmodmap -e "keycode  51 = minus underscore minus underscore"
#xmodmap -e "keycode  78 = backslash bar backslash bar"
xmodmap -e "keycode 9 = Alt_L Meta_L Alt_L Meta_L"
xmodmap -e "keycode 64 = grave asciitilde grave asciitilde"
xmodmap -e "keycode 49 = Escape NoSymbol asciitilde"
xmodmap -e "keysym grave = Mode_switch"
xmodmap -e "keycode 43 = h H Left H"
xmodmap -e "keycode 44 = j J Down J"
xmodmap -e "keycode 45 = k K Up K"
xmodmap -e "keycode 46 = l L Right L"
xmodmap -e "keycode 57 = n N plus N"
xmodmap -e "keycode 58 = m M equal M"
xmodmap -e "keycode 59 = comma less minus less"
xmodmap -e "keycode 60 = period greater underscore greater"
xmodmap -e "keycode 47 = semicolon colon equal colon"
xmodmap -e "keycode 40 = d D Next D"
xmodmap -e "keycode 30 = u U Prior U"

if [ -e ${XCAPE} ]; then
    killall xcape 2> /dev/null
    #xcape -e 'Caps_Lock=Escape'
    xcape -e 'Control_L=Escape'
    #xcape -e 'Shift_R=parenright;Shift_L=parenleft'
fi

# powerline-shell
#function powerline_precmd() {
#    PS1="$(~/powerline-shell.py $? --shell zsh 2> /dev/null)"
#}

#function install_powerline_precmd() {
#    for s in "${precmd_functions[@]}"; do
#        if [ "$s" = "powerline_precmd" ]; then
#           return
#        fi
#    done
#    precmd_functions+=(powerline_precmd)
#}
                   
#if [ "$TERM" != "linux" ]; then
#    install_powerline_precmd
#fi

precmd () { print -Pn "\e]0;$TITLE\a" }
title() { export TITLE="$*" }

LS_COLORS=$LS_COLORS:'di=01;34:' ; export LS_COLORS
