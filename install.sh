#!/usr/bin/env bash
echo -e "##############################################################"
echo -e "Welcome to personal-linux-config."
echo -e "##############################################################"
echo -e "Let's install common utilities that simplify your life:"
##############################################################
#Installing personal .bashrc
##############################################################
BASH_RC_SOURCE_LINE="source ~/personal-linux-config/.bashrc"
touch ~/.bashrc
if grep -q "personal-linux-config" ~/.bashrc
then
    echo -e "\tSKIPPING: ~/.bashrc file already contains '$BASH_RC_SOURCE_LINE'"
else
    echo $BASH_RC_SOURCE_LINE >> ~/.bashrc
    source ~/.bashrc
    echo -e "\tThe line '$BASH_RC_SOURCE_LINE' has been added to .bashrc file"
fi

##############################################################
#Installing personal .vimrc
##############################################################
VIM_RC_SOURCE_LINE="source ~/personal-linux-config/.vimrc"
touch ~/.vimrc
if grep -q "personal-linux-config" ~/.vimrc
then
    echo -e "\tSKIPPING: ~/.vimrc file already contains '$VIM_RC_SOURCE_LINE'"
else
    echo $VIM_RC_SOURCE_LINE >> ~/.vimrc
   echo -e "\tThe line '$VIM_RC_SOURCE_LINE' has been added to .vimrc file"
fi

##############################################################
#Installing personal .gitconfig
##############################################################
GIT_SOURCE_LINE="[include]\n\tpath = ~/personal-linux-config/.gitconfig"
touch ~/.gitconfig
if grep -q "personal-linux-config" ~/.gitconfig
then
    echo -e "\tSKIPPING: ~/.gitconfig file already contains '$GIT_SOURCE_LINE'"
else
    echo -e $GIT_SOURCE_LINE >> ~/.gitconfig
    echo -e "\tThe line '$GIT_SOURCE_LINE' has been added to .gitconfig file"
fi

##############################################################
#Installing vim nginx conf
##############################################################
NGINX_FILETYPE_LINE="setfiletype nginx"
if grep -q "$NGINX_FILETYPE_LINE" ~/.vim/filetype.vim
then
    echo -e "\tSKIPPING: ~/.vim/filetype.vim contains '$NGINX_FILETYPE_LINE'"
else
    echo -e "au BufRead,BufNewFile /etc/nginx/*,/usr/local/nginx/conf/*,/etc/nginx/sites-available/* if &ft == '' | setfiletype nginx | endif" >> ~/.vim/filetype.vim
    echo -e "\tThe line '$NGINX_FILE_TYPE' has been added to filetype.vim file"
fi
