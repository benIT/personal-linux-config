##########################
#BASH ALIAS
##########################
alias ll='ls -ahl --color=auto'
alias ltr='ls -ahltr --color=auto'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias c='clear'

##########################
#GIT function that modify PS1 with branch info
##########################
GIT_PROMPT_ONLY_IN_REPO=1
GIT_PROMPT_THEME=Solarized
source bash-git-prompt/gitprompt.sh
