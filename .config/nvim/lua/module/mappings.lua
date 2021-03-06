local vimp = require('vimp')

vimp.imap('jj', '<ESC>')

vimp.nmap('<leader>cpa', 'ggVG"+y')
vimp.xmap('<leader>c', '"+y')
vimp.nmap('<leader>p', '"+p')

vimp.nmap('<c-m-l>', 'gg=G')

vimp.nnoremap('<c-k>', '<c-w>k')
vimp.nnoremap('<c-j>', '<c-w>j')
vimp.nnoremap('<c-h>', '<c-w>h')
vimp.nnoremap('<c-l>', '<c-w>l')
