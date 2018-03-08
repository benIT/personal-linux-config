#!/usr/bin/env bash
echo -e "##############################################################"
echo -e "Welcome to personal-linux-config."
echo -e "##############################################################"
echo -e "Let's install common utilities that simplify your life:"
##############################################################
#Installing personal .bashrc
##############################################################
BASH_RC_SOURCE_LINE="source ~/personal-linux-config/bash/.bashrc"
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
VIM_RC_SOURCE_LINE="source ~/personal-linux-config/.vim/.vimrc"
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
#linking ~/.vim and ~/personal-linux-configuration/.vim
##############################################################
rm -rf ~/.vim
ln -s ~/personal-linux-config/.vim ~/.vim
ln -s ~/personal-linux-config/.vim/bundle/vim-monokai/colors/monokai.vim ~/personal-linux-config/.vim/colors/monokai.vim
echo -e "For installing, VIM plugins do not forget to run ':PluginInstall'"
