alias ls="ls -vFG"
alias ll="ls -lFG"
alias la="ls -aFG"
alias rm="rm -i"
alias gvim="open -a /Applications/MacVim.app"
alias g++cv="g++ -bind_at_load `pkg-config --cflags opencv` `pkg-config --libs opencv`"

gp() { grep -r --color=always -n "$1" ./ ;}
alias fd='find ./ -name '

PS1='
 \033[1;34m[\u]\033[0m  \033[0;36m\w\033[0m
 \$ '
