PATH=~/bin:$PATH
export EDITOR=vim
export LC_CTYPE=zh_TW.UTF-8

alias db="cd ~/Dropbox"
alias ai="cd ~/Dropbox/NTU/101_1/ArtificialIntelligence/"
alias sig="cd ~/Dropbox/matlab/data_matching"
alias gg="cd ~/Dropbox/matlab/thesis_project"

alias ss=". ~/.bashrc"
alias ls="ls -vFG"
alias ll="ls -lFG"
alias la="ls -aFG"
alias rm="rm -i"
alias top="top -o cpu"
alias gvim="open -a /Applications/MacVim.app"
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias matlab="/Applications/MATLAB_R2010b.app/bin/matlab -nodesktop"
alias o="open"
alias diff="diff -u"
#alias g++cv="g++ -bind_at_load `pkg-config --cflags opencv` `pkg-config --libs opencv`"


gp() { grep -r --color=always -n "$1" ./ ;}
alias fd='find ./ -name '

function git_branch {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return;
    echo "(git:"${ref#refs/heads/}") ";
}

unset temp
function prompt_command {
    TERMWIDTH=${COLUMNS}
    newPWD=`echo -n $PWD | perl -p -e "s{$HOME}{~}"`

    local temp="[$USER@$HOSTNAME] $newPWD $(git_branch)"
    let fillsize=${TERMWIDTH}-${#temp}
    fill=""
    if [ "$fillsize" -gt "0" ]
    then
        fill="-------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
        fill="${fill:0:${fillsize}}"
    fi
}

PROMPT_COMMAND=prompt_command
PS1='
\033[1;34m[\u@\H]\033[0m \033[0;36m\w\033[0m $(git_branch)\033[1;30m${fill}\033[m
\$ '
