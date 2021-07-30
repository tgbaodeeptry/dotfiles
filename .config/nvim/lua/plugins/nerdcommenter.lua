local vimp = require('vimp')

vimp.nmap({'silent'}, '<c-_>', '<plug>NERDCommenterToggle')
vimp.vmap({'silent'}, '<c-_>', '<plug>NERDCommenterToggle')

vim.g.NERDCreateDefaultMappings = 1
vim.g.NERDCommentEmptyLines = 1
vim.g.NERDCompactSexyComs = 1
vim.g.NERDToggleCheckAllLines = 1
vim.g.NERDSpaceDelims = 1
