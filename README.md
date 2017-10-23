# personal-linux-config repository

## Purpose

This repository contains common linux configuration. 
Thanks to git, it can be cloned on each (virtual) machine to deploy and machine configuration can be harmonized. 

## Usage

### Installation 

Run that command to clone and install:
    
    cd ~ 
    git clone --recursive git@github.com:benIT/personal-linux-config.git
    cd personal-linux-config
    ./install.sh


Or use this bash one-liner:
     
    cd ~ && git clone --recursive git@github.com:benIT/personal-linux-config.git && cd personal-linux-config && ./install.sh
    
### Update 

Run that command to update sources:

    cd ~/personal-linux-config 
    git pull origin master


Or use this bash one-liner:

    cd ~/personal-linux-config && git pull origin master

## Git

### Resolving conflict

Run first:

	git mergetool


This config is set with vimdiff as diff tool. Here are some handy shortcut with this tool: 

	:diffg RE  " get from REMOTE
	:diffg BA  " get from BASE
	:diffg LO  " get from LOCAL


Use `:wqa` to quit all files when done.
