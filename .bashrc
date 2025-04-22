export EDITOR=vim
export CDPATH=.:$(go env GOPATH)/src/github.com/jtaekema:$(go env GOPATH)/src/gitlab.com/jordan.taekema:~/code

# Ruby env stuff
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Go go bin in path
export PATH="$(go env GOPATH)/bin:$PATH"
