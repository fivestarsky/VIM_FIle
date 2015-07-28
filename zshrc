plugins=(git osx autojump go docker)

alias cls='clear'
alias ll='ls -la'
alias la='ls -la'
alias vi='vim'
alias grep="grep --color=auto"
alias -s go=vim
alias -s html=vim
alias -s py=vim
alias -s js=vim
alias -s c=vim
alias -s java=vim
alias -s txt=vim
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'

export GOPATH=$HOME/gopath
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
