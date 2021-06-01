scriptencoding utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1

filetype plugin indent on

set sw=4
set ts=4
set sts=4
set et

set nu

let mapleader=","
let g:mapleader=","

autocmd FileType sh setlocal et sta sw=2 sts=2 ts=2

augroup auto_ts
  autocmd FileType json setlocal et sta sw=2 sts=2 ts=2
  autocmd FileType sshconfig setlocal et sta sw=2 sts=2 ts=2
  autocmd FileType go setlocal et sta sw=4 sts=4 ts=4
  autocmd FileType proto setlocal et sta sw=2 sts=2 ts=2
augroup END

set autowrite

" Reloads vimrc after saving but keep cursor position
if !exists('*ReloadVimrc')
   fun! ReloadVimrc()
       let save_cursor = getcurpos()
       source $MYVIMRC
       call setpos(‘.’, save_cursor)
   endfun
endif
autocmd! BufWritePost $MYVIMRC call ReloadVimrc()

" Allow backspace to delete indentation and inserted text
" i.e. how it works in most programs
set backspace=indent,eol,start
" indent  allow backspacing over autoindent
" eol     allow backspacing over line breaks (join lines)
" start   allow backspacing over the start of insert; CTRL-W and CTRL-U
"        stop once at the start of insert.

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

let g:python_host_prog = '~/.pyenv/versions/py2nvim/bin/python'
let g:python3_host_prog = '~/.pyenv/versions/py3nvim/bin/python'
set pyxversion=3
