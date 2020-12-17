" set leader key to space
let mapleader = " "


" use <c-space>for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()
tnoremap <Esc> <C-\><C-n>
inoremap <silent> <c-e>  <Esc>:CocCommand explorer<cr>
nnoremap <silent> <c-e>  <Esc>:CocCommand explorer<cr>
nnoremap <silent> <leader>tn :CocCommand floaterm.new<cr>
nnoremap <silent> <leader>tt :CocCommand floaterm.toggle<cr>
nnoremap <silent> <leader>tj :CocCommand floaterm.next<cr>
nnoremap <silent> <leader>tk :CocCommand floaterm.prev<cr>

