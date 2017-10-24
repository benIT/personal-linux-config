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
source $HOME/personal-linux-config/bash-git-prompt/gitprompt.sh
