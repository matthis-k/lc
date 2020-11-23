" set leader key to space
let mapleader = " "

nnoremap <leader>t :FloatermToggle<cr>

" use <c-space>for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()
nmap <c-b> :NERDTreeToggle<cr>
imap <c-b> <esc><esc>:NERDTreeToggle<cr><a>
:tnoremap <Esc> <C-\><C-n>
