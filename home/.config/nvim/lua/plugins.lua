vim.cmd 'packadd paq-nvim'
local paq = require'paq-nvim'.paq

paq{'savq/paq-nvim', opt = true}

paq 'KaraMCC/vim-streamline'
paq 'arcticicestudio/nord-vim'
paq 'jiangmiao/auto-pairs'
paq 'kyazdani42/nvim-tree.lua'
paq 'kyazdani42/nvim-web-devicons'
paq 'lilydjwg/colorizer'
paq 'mg979/vim-visual-multi'
paq 'neovim/nvim-lspconfig'
paq 'nvim-lua/completion-nvim'
paq 'nvim-lua/lsp_extensions.nvim'
paq 'nvim-treesitter/nvim-treesitter'
paq 'psliwka/vim-smoothie'
paq 'voldikss/vim-floaterm'
paq 'liuchengxu/vim-which-key'

require'plugins.treesitter'
require'plugins.floaterm'
require'plugins.luaTree'
require'plugins.streamline'
require'plugins.whichkey'
