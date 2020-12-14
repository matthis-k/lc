call plug#begin()
Plug 'arcticicestudio/nord-vim'
Plug 'lilydjwg/colorizer'
Plug 'mg979/vim-visual-multi'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', {'branch': 'release' }
Plug 'psliwka/vim-smoothie'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
source $HOME/.config/nvim/config/coc.vim
source $HOME/.config/nvim/config/keymaps.vim
source $HOME/.config/nvim/config/plugins.vim
source $HOME/.config/nvim/config/settings.vim
source $HOME/.config/nvim/config/theme.vim
