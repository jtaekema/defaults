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

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

