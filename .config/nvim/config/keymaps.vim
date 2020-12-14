" set leader key to space
let mapleader = " "

nnoremap <leader>t :FloatermToggle<cr>

" use <c-space>for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()
tnoremap <Esc> <C-\><C-n>
inoremap <silent> <c-e>  <Esc>:CocCommand explorer<cr>
nnoremap <silent> <c-e>  <Esc>:CocCommand explorer<cr>
