alias c="clear"
alias ppath='echo $PATH | tr ":" "\n"'
alias env="env | sort"

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    alias df='df -h'
    alias du='du -h'
    alias fu="du -h -d 1"
    
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # color support
    alias ls='ls -G'
    alias dir='dir -G'
    alias vdir='vdir -G'
    alias grep='grep -G'
    alias fgrep='fgrep -G'
    alias egrep='egrep -G'
    
    # fancy ls
    alias ll='ls -Alh -G'
    alias l='ls -lh -G'
    alias lr='ls -R -G'
    
    # modified commands
    alias df='colourify df -h'
    alias du='colourify du -h'
    alias fu="colourify du -h -d 1"
    alias less='less -i'
    alias mkdir='mkdir -pv'
    alias ping='colourify ping -c 3'
    alias feh='feh --scale-down --auto-zoom'
fi

# privileged access
if [ $UID -ne 0 ]; then
    alias sudo='sudo ' # passes aliases over to root when using sudo
fi

# safety features
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias ln='ln -i'
