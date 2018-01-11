# Remember

This file contains usual linux operations that I am bored of searching on the net because my brain is too limited to remember it!

## vim

### movement

^: begining of line
$: end of line

### insert mode

i: insert at cursor
a: append after cursor
A: append at the end of the line
o: append blank line below current line
O: append blank line above current line

### visual mode

for marking text.
v: start visaul mode
y: yank (copy) mark text
d: delete marked text

### cut and paste

yy: copy line
p: put after cursor
P: put before cursor
dd: delete line
dw: delete word

### search/replace

/pattern: search pattern
:%s/old/new/gc: search and replace pattern globally with confirmation

### multiple files

:e filename: edit file in a new buffer
:bn: next buffer
:bp: previous buffer
:bd: delete buffer

### running command 

:sh: run an interactive shell
:! command: execute command
:! command %: execute command on the current file
:r textfile: insert text from a specified file into the current buffer

### configuration

:set nu: turn on line display
:set nonu: turn off line display

## linux

### Create a symlink

     ln -s /path/to/file /path/to/symlink

