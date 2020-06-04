" buffer switch
noremap <c-h> :bp<CR>
noremap <c-l> :bn<CR>

" Yank text to the OS X clipboard" 将文本复制到OS X剪贴板中
noremap <leader>y "+y
noremap <leader>yy "+Y
" Preserve indentation while pasting text from the OS X clipboard 在粘贴OS X剪贴板中的文本时保留缩进
noremap <leader>p :set paste<CR>:put +<CR>:set nopaste<CR>
