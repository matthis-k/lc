call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'mg979/vim-visual-multi'
Plug 'tpope/vim-surround'

Plug 'tpope/vim-fugitive'
Plug 'voldikss/vim-floaterm'

Plug 'vim-syntastic/syntastic'
Plug 'rust-lang/rust.vim'
Plug 'psliwka/vim-smoothie'

Plug 'arcticicestudio/nord-vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

source $HOME/.config/nvim/config/plugins.vim
source $HOME/.config/nvim/config/settings.vim
source $HOME/.config/nvim/config/keymaps.vim
source $HOME/.config/nvim/config/theme.vim
