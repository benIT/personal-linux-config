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
alias rename-camcorder-video=' ~/personal-linux-config/bash/rename-camcorder-video.sh'
alias reencode-camcorder-video=' ~/personal-linux-config/bash/reencode-camcorder-video.sh'
alias cartoon.sh='~/personal-linux-config/bash/cartoon.sh'
alias github-authoring='git config user.name "benIT" && git config user.email "benoit.works@gmail.com"'
alias openstack-wait='while(true); do clear; openstack stack list; sleep 5; done'
alias sss='shutdown 0'
alias download='wget --tries=100 --retry-connrefused'
alias new-script='cp ~/personal-linux-config/bash/template.sh ./new-script.sh && chmod +x ./new-script.sh'
alias random='openssl rand -base64 32'
alias gitignore-init='echo '.idea' > .gitignore'
alias gitg='nohup gitg > /dev/null 2>&1&'
alias grosses-tetes-last-podcast='curl -s https://www.rtl.fr/podcast/les-grosses-tetes.xml | grep -m 1 -o https://.*mp3 | xargs wget --tries=100 --retry-connrefused'
alias sync-roms='rsync -avzh --delete --progress --prune-empty-dirs /usr/local/share/games/mame/roms/ tv:/usr/local/share/games/mame/roms/'
alias sync-cam='rsync -avzh --delete --progress --prune-empty-dirs ~/camescope/ user@tv.local:~/camescope/'
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
# docker
##########################
alias docker-clean='docker stop `docker ps -a -q` && docker rm `docker ps -a -q`'
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
    grep -A 5 $1 ~/personal-linux-config/remember/remember.md
}

