vim.cmd('set undodir=~/.undodir')
vim.cmd('set undofile')

local vimp = require('vimp')

vimp.nnoremap({'silent'}, '<leader>u', ':UndotreeToggle<CR>')

