vim.b.noswapfile = true
vim.b.undofile = true

-- all buffer options must also be set in global option (see: ':help set')
vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.smartindent = true
vim.bo.softtabstop = 4
vim.bo.tabstop = 4

vim.g.nobackup = true
vim.g.noerrbells = true
vim.g.smartcase = true

-- set all local buffer options also to global, otherwise they dont work
vim.o.expandtab = true
vim.o.hidden = true
vim.o.shiftwidth = 4
vim.o.smartindent = true
vim.o.softtabstop = 4
vim.o.tabstop = 4
-- other global options
vim.o.showmode = false

vim.wo.linebreak = true
vim.wo.breakindent = true
