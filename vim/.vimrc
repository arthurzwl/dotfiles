" to use neovim
" https://neovim.io/doc/user/nvim.html#nvim-from-vim
scriptencoding utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1

filetype plugin indent on

" ts是tabstop的缩写，设TAB宽度为4个空格。
" softtabstop 表示在编辑模式的时候按退格键的时候退回缩进的长度，当使用 expandtab 时特别有用。
" shiftwidth 表示每一级缩进的长度，一般设置成跟 softtabstop 一样。
" expandtab表示缩进用空格来表示，noexpandtab 则是用制表符表示一个缩进。
" autoindent自动缩进
set sw=4
set ts=4
set sts=4
set et

augroup auto_ts
  autocmd FileType json setlocal et sta sw=2 sts=2 ts=2
  autocmd FileType sshconfig setlocal et sta sw=2 sts=2 ts=2
  autocmd FileType go setlocal noet sta sw=4 sts=4 ts=4
  autocmd FileType proto setlocal et sta sw=2 sts=2 ts=2
augroup END

set nu
set hlsearch

let mapleader=","
let g:mapleader=","
" Yank text to the OS X clipboard" 将文本复制到OS X剪贴板中
noremap <leader>y "+y
noremap <leader>yy "+Y
" Preserve indentation while pasting text from the OS X clipboard 在粘贴OS X剪贴板中的文本时保留缩进
noremap <leader>p :set paste<CR>:put +<CR>:set nopaste<CR>
" 取消高亮
nnoremap <nowait><silent> <C-C> :noh<CR>

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Vim 中文文档
Plug 'yianwillis/vimcdoc'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
" Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting

" neovim
if exists(':tnoremap')
    tnoremap <Esc> <C-\><C-n>
endif

" vim-go
let g:go_term_mode = "vsplit"

