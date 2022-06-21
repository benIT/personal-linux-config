# Remember

This file contains usual linux operations that I am bored of searching on the net because my brain is too limited to remember it!

## vim

### set vim as default editor

append these 2 lines in `/etc/profile`:

    EDITOR="vim"
    export EDITOR

### movement

^: begining of line
$: end of line

### normal mode

* esc: go to normal mode
* u: undo
* ctrl+r: redo: 
* dd: cut:delete line
* x: delete char
* dw: delete word
* diw: delete word under cursor
* ~: switch case
* yy: copy line
* p: put after cursor
* P: put before cursor
* dd: delete line
* dw: delete word

### tabs

* gt: new tab
* gT: previous tab
* tabedit file: open file in a new tab

### insert mode

* i: insert at cursor
* a: append after cursor
* A: append at the end of the line
* o: append blank line below current line
* O: append blank line above current line

### visual mode

for marking text.
* v: start visual mode
* shift+v: visual mode for line
* y: yank (copy) mark text
* d: delete marked text

### search/replace

* /pattern: search pattern
* :%s/old/new/gc: search and replace pattern globally with confirmation

### multiple files

* :e filename: edit file in a new buffer
* :bn: next buffer
* :bp: previous buffer
* :bd: delete buffer
* :ls: list current buffers
* :bn: display the nth buffer

### running command 

* :sh: run an interactive shell
* :! command: execute command
* :! command %: execute command on the current file
* :r textfile: insert text from a specified file into the current buffer

### configuration

* :set nu: turn on line display
* :set nonu: turn off line display

## linux

### groups

#### list groups of current user

    groups

#### add existing user to existing group

    sudo usermod -a -G groupName userName

### .tgz archive

#### Create a .tgz archive

    tar -cvzf archive.tgz archive

#### Extract a .tgz archive

    tar -xvzf archive.tgz


#### List a .tgz archive

    tar -tf archive.tgz

### zip archive

#### create a zip archive

    zip -r archive.zip target

#### extract a zip archive 

    unzip archive.zip -d target

#### list a zip archive

    unzip -l archive.zip

### Create a symlink

     ln -s /path/to/file /path/to/symlink
     
### list open ports

     sudo netstat -tulpn | grep LISTEN

## GIT

### Branch

#### create a new branch

    git co -b feature

#### set upstream and push 

    git push -u origin feature

### delete branch

    git branch -D user-story-32
    git push origin :user-story-32

### rebase

    git fetch &&  git checkout master && git rebase origin/master

### Create a tag

    git tag -a v1.0.0 -m "version 1.0.0"

### Push tag

    git push --tags

### Delete tag

    git tag --delete tagname
    git push origin :tagname

### Openstack

    openstack list
    openstack stack show my-stack
    openstack stack delete my-stack
    openstack stack volume list

## System

### who is logged in

    w
### kill user's process

    sudo pkill -KILL -u ben

### OS name

    lsb_release -a

### memory information

    free

### List partitions

    df -h

## Database

### PostgreSQL

#### Enter interactive mode 

    sudo -u postgres psql
    
#### Create a new user and database

    sudo -u postgres psql -c "CREATE USER moodle WITH PASSWORD 'moodle' CREATEDB;"
    sudo -u postgres psql -c "CREATE DATABASE moodle;"
    sudo -u postgres psql -c "grant all privileges on database moodle to moodle;"
    
## Docker

### List

	docker ps -a

### Run

	docker run --name debian-web --rm -p 8080:80 -d benit/debian-web:latest

### Build

	docker build -t benit/debian-web . --build-arg http_proxy --build-arg https_proxy --build-arg GIT_CONFIG_FILE="$(cat ~/.gitconfig)"  --tag benit/debian-web:php5.6
	
### Attach a shell

    docker container exec -it debian-web /bin/bash
    
### Stop a container

    docker container stop debian-web

### Stop and remove all running containers

    docker stop `docker ps -a -q` && docker rm `docker ps -a -q`

## SSH

### Generate ssh keys

    ssh-keygen -t rsa -b 4096 -C "benoit@laptop"

### Upload ssh key to user

    ssh-copy-id -i ~/.ssh/id_rsa.pub user@ip

## Network

### Get public @IP

    curl ifconfig.me

## PDF

### Reduce pdf size

	ps2pdf -dPDFSETTINGS=/screen in.pdf out.pdf 
	ps2pdf -dPDFSETTINGS=/ebook in.pdf out.pdf 

### Merge several pdfs into one pdf

	pdfunite *.pdf merged.pdf

## rsync 

### miror

	rsync -avzh --delete --progress --prune-empty-dirs /home/user/folder foo@bar:/miror
	
## TMUX

	tmux new -s work: create a new session
	tmux attach -t work: attach a tmux session

* ctrl+b,d: detach from session
* ctrl+b,$: rename current session
* ctrl+b,,: rename current window
* ctrl+b,c: create a new window
* ctrl+b,p: previous window
* ctrl+b,n: next window
* ctrl+b,[0-9]: go to [0-9 window]
* ctrl+b,": vertical split
* %: horizontal split



## psql

* `\db`: list tablespaces
* `\l` :list db
* `\! ps -ef | postgresql`: exectute the OS cmd from the psql terminal
* `\c my_db`: connect to my_db
* `\d`: list objects
* `\d my_table`: list structure of my_table
* `\dp schema.*`: list structure + rights 
* `\dn`: list schemas
* `\h cmd`: display help about cmd
* `\q`: quit
* `\?` : list commands
* `\i file.sql`: : execute file.sql same as `psql -f file.sql`
* `\o /tmp/logpgsql.sql`: spool output to file
* `\x`: display for tabular data display
* `\timing`: display queries execution time 
* `\dg`: list roles
* `select current_user;`
* `select current_database()`;



## SQL*plus

`sqlplus / as sysdba`

The `/` design the instance set by ``ORACLE_SID` env var.

* `$ORCALE_HOME/sqlplus/admin/glogin.sql`: script to customize sqlplus
* `sqlplus ben/password`: to connect
* `! cmd` or `host cmd`to run OS command e.g. `! ls -ltr`
* `disc`: to disconnect from oracle but still connected to sqlplus
* `exit` or `quit`: to close sqlplus session
* `connect ben/pass`: to switch user
* `show user;`
* `run` or `/` : run last cmd in sqlplus buffer
* `start /tmp/my_script.sh` or `@/tmp/my_script.sh`: exec specified script
* `edit /tmp/my_script.sh`: to edit file
* `save /tmp/query.sql`: save buffer to given file
* `spool /tmp/result.txt`: redirect results to file. use `spool off;` to stop
* `describe customer`: print structure
