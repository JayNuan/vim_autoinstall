syntax on
set bg=dark
set autoindent
set cindent
set cursorline
set tabstop=4
set softtabstop=4
set shiftwidth=4
set ru
set number
set cursorcolumn
autocmd BufNewFile *.py,*.sh,exec :call SetTitle()
let $author_name = "linuan"
let $author_email = "li-nuan@qq.com"
let g:NERDTreeNodeDelimiter = 'x'
let g:pydiction_location = '~/.vim/bundle/Pydiction/complete-dict'
let g:pydiction_menu_height = 3


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



call vundle#end()            
filetype plugin indent on    

map <F2> :NERDTree<CR>
