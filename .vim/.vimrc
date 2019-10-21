"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"General VIM configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set number
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

set autochdir       " auto change to current dir
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Vundle: bundle manager for VIM
"run :PluginInstall to install bundles 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'chr4/nginx.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-commentary'
Plugin 'sickill/vim-monokai'
call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plugin configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
colorscheme monokai
" let g:molokai_original = 1
let g:vim_markdown_folding_disabled = 1
"display nerdtree when vim is launched
"autocmd vimenter * NERDTree
let NERDTreeShowHidden=1

"indentationsettings. To use it in vim, normal mode:  gg=G
filetype  indent plugin on