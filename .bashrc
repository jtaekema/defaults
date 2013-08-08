###########
# exports #
###########

PS1='\[\033]0;\h:\w\007\]'     # set window title
PS1="$PS1"'\[\033[32m\]'       # change color
PS1="$PS1"'\u@\h '             # user@host<space>
PS1="$PS1"'\[\033[33m\]'       # change color
PS1="$PS1"'\w'                 # current working directory
PS1="$PS1"'\[\033[1;34m\]'     # change color
if test -z "$WINELOADERNOEXEC"
then
    PS1="$PS1"'$(__git_ps1)'   # bash function for git completion
fi
PS1="$PS1"'\[\033[0m\]'        # change color
PS1="$PS1"' $ '                # prompt: always $


#############
# functions #
#############

printPath() {
    echo $PATH | tr : '\n'
}


###########
# aliases #
###########

# color support
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# modified commands
alias df='df -h'
alias du='du -h'
alias fu="du --max-depth=1"
alias free='free -h'
alias less='less -i'
alias mkdir='mkdir -pv'
alias ping='ping -c 3'
alias feh='feh --scale-down --auto-zoom'
alias c="clear"
alias vi=vim
alias pp=printPath
alias env="env | sort"
alias gitk="gitk --all"

# privileged access
if [ $UID -ne 0 ]; then
    alias sudo='sudo ' # passes aliases over to root when using sudo
fi

# safety features
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -I'
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# fancy ls
alias ll='ls -Alh --color=auto'
alias l='ls -lh --color=auto'
alias lr='ls -R --color=auto'
