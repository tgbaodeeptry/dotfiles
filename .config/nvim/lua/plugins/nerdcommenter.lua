local vimp = require('vimp')

vimp.nmap({'silent'}, '<c-_>', '<plug>NERDCommenterToggle')
vimp.vmap({'silent'}, '<c-_>', '<plug>NERDCommenterToggle')

vim.g.NERDCreateDefaultMappings = 1
vim.g.NERDTrimTrailingWhitespace = 1
vim.g.NERDCommentEmptyLines = 1
vim.g.NERDCompactSexyComs = 1
