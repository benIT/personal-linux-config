# personal-linux-config repository

## Purpose

This repository contains common linux configuration. 
Thanks to git, it can be cloned on each (virtual) machine to deploy and machine configuration can be harmonized. 

## Usage

### Installation 

#### Using GIT

use this bash one-liner:
     
    cd ~ && git clone --recursive git@github.com:benIT/personal-linux-config.git && cd personal-linux-config && ./install.sh

#### Or downloading a release

    wget -qO- https://github.com/benIT/personal-linux-config/releases/download/v0.0.1/personal-linux-config.tgz | tar -xzv && cd ~/personal-linux-config && ./install.sh

#### Finalizing install

in Vim, run `:PluginInstall`

### Update 

Run that command to update sources:

    cd ~/personal-linux-config && git pull origin master

## VIM

### Plugin management

[Vundle.vim](https://github.com/VundleVim/Vundle.vim) has been chosen to manage VIM plugins

The installer will create a symlink to link `~/.vim/` and `personal-linux-config/.vim` folders.

The installer will add a line in `~/.vimrc` to source the content of `personal-linux-config/.vim/.vimrc`.

### Adding a new VIM plugin

Add a line in `personal-linux-config/.vim/.vimrc` to make Vundle.vim track this plugin.


### NERDtree

User `Ctrl+ww` to switch between the tree window and the file window.

## Git

### Resolving conflict

Run first:

	git mergetool


This config is set with vimdiff as diff tool. Here are some handy shortcut with this tool: 

	:diffg RE  " get from REMOTE
	:diffg BA  " get from BASE
	:diffg LO  " get from LOCAL


Use `:wqa` to quit all files when done.
