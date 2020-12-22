
vim.call('which_key#register', '<space>', 'g:which_key_space')

vim.g.which_key_space = {
    ['name'] = 'Spacebar',
    ['l'] = {
        ['name'] = 'lsp',
        ['b'] = 'build',
        ['g'] = {
            ['name'] = 'goto',
            ['d'] = 'definition',
            ['i'] = 'implementation',
        },
        ['h'] = 'hover',
        ['r'] = 'rename',
        ['f'] = 'format'
    },
    ['o'] = {
        ['name'] = 'options'
    },
    ['t'] = {
        ['name'] = 'terminal',
        ['t'] = 'toggle',
        ['c'] = 'close',
        ['n'] = 'new'
    }
}

