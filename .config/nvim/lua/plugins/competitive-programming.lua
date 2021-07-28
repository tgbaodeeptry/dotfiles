local vimp = require('vimp')

vimp.nmap('<leader>r', ':up | :50vs | :terminal python3 ~/Documents/CP-Helper/execute.py :p:h :t false<CR>')
vimp.nmap('<leader>cr', ':up | :50vs | :terminal python3 ~/Documents/CP-Helper/execute.py :p:h :t true<CR>')
vimp.nmap('<leader>s', ':up | :50vs | :terminal python3 ~/Documents/CP-Helper/submit.py :p<CR>')
vimp.nmap('<leader>te', ':up | :50vs | :terminal python3 ~/Documents/CP-Helper/testing.py :p:h :t 1<CR>')
vimp.nmap('<leader>ge', ':up | :50vs | :terminal python3 ~/Documents/CP-Helper/testing.py :p:h :t 0<CR>')
