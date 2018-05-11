##########################
#BASH ALIAS
##########################
alias ll='ls -ahl --color=auto'
alias ltr='ls -ahltr --color=auto'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias c='cat'
alias m='more'
alias v='vim'
alias rvim='sudo -E vim'
alias image-resize=' ~/personal-linux-config/bash/image-resize.sh'
##########################
# PS1 
##########################
function color_my_prompt {
    local __user_and_host="\[\033[01;32m\]\u@\h"
    local __cur_location="\[\033[01;34m\]\w"
    local __prompt_tail="\[\033[35m\]$"
    local __last_color="\[\033[00m\]"
    export PS1="$__user_and_host $__cur_location $__prompt_tail$__last_color "
}
color_my_prompt

##########################
# special prompt when in a .git repo
##########################
GIT_PROMPT_ONLY_IN_REPO=1
GIT_PROMPT_THEME=Solarized
source $HOME/personal-linux-config/bash/bash-git-prompt/gitprompt.sh
##########################
# vagrant
##########################
alias vssh='vagrant ssh'
alias vup='vagrant up'
alias vups='vagrant up && vagrant ssh'
alias vsshc='vagrant ssh-config'
alias vr='vagrant reload'

##########################
#remember
#This util will search in the remember.md file that contains some usefull notes
##########################
function remember {
    if [ $# -ne 1 ]
    then
        echo -e "It seems that the 'remember' function has not been called properly.\nUSAGE:\n$ remember something"
        return 1
    fi
    grep $1 ~/personal-linux-config/remember/remember.md
}

