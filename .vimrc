syntax enable
syntax on
set t_Co=64
set background=dark
colorscheme solarized
set autoindent
set cindent
set cursorline
set ruler
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number
set cursorcolumn
set showmatch
set foldenable
set foldmethod=syntax
autocmd BufNewFile *.py,*.sh,exec :call SetTitle()
let $author_name = "linuan"
let $author_email = "li-nuan@qq.com"
" autocmd vimenter * CtrlP
autocmd vimenter * Tagbar
autocmd vimenter * NERDTree

" NERDTree
let g:NERDTreeNodeDelimiter = 'x'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary")  | q | endif
map <F2> :NERDTreeToggle<CR>

" Pydiction
let g:pydiction_location = '~/.vim/bundle/Pydiction/complete-dict'
let g:pydiction_menu_height = 3

" Tagbar
let g:tagbar_width=30
let g:tagbar_autofocus=1
let g:tagbar_autopreview = 1
" let g:tagbar_left = 1
let g:tagbar_right = 1
nmap <F4> :TagbarToggle<CR>


" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:20'
let g:NERDTreeChDirMode = 2
let g:ctrlp_working_path_mode = 'rw'

function SetTitle()
	let filetype_name = strpart(expand("%"), stridx(expand("%"), "."))
    let file_name = strpart(expand("%"), 0, stridx(expand("%"), "."))
	    if file_name =~ "\/"
			let file_name = strpart(file_name, strridx(file_name, "/") + 1)
		endif
if filetype_name == '.sh'
    call setline(1,"\#####################################################")
    call append(line("."),"\# File Name: ".expand("%"))
    call append(line(".")+1,"\# Author: ".$author_name)
    call append(line(".")+2,"\# Mail: ".$author_email)
    call append(line(".")+3,"\# Create Time: ".strftime("%c"))
    call append(line(".")+4,"\#===================================================")
    call append(line(".")+5,"#!/bin/bash")
    call append(line(".")+6,"")
elseif filetype_name == '.py' 
	call setline(1,"\######################################################")
	call append(line("."),"\# File Name: ".expand("%"))
	call append(line(".")+1,"\# Author: ".$author_name)
	call append(line(".")+2,"\# Mail: ".$author_email)
	call append(line(".")+3,"\# Create Time: ".strftime("%c"))
	call append(line(".")+4,"\#===================================================")
	call append(line(".")+5,"#!/usr/bin/python")
	call append(line(".")+6,"")
endif
autocmd BufNewFile * normal G
endfunc

set nocompatible             
filetype off                   

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


Plugin 'VundleVim/Vundle.vim'
Plugin 'JayNuan/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'JayNuan/nerdtree'
Plugin 'JayNuan/Pydiction'
Plugin 'JayNuan/taglist.vim'
Plugin 'JayNuan/tagbar'
Plugin 'JayNuan/ctrlp.vim'
Plugin 'JayNuan/solarized'


call vundle#end()            
filetype plugin indent on    

