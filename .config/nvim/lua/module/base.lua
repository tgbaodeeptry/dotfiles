vim.cmd("syntax enable")
vim.cmd("filetype plugin indent on")

local o = vim.opt

o.relativenumber = true
o.undofile       = true 
o.cursorline     = true
o.expandtab      = true
o.autowrite      = true
o.hidden         = true
o.hlsearch       = true
o.ignorecase     = true
o.smartcase      = true
o.lazyredraw     = true
o.autoindent     = true
o.smartindent    = true
o.smarttab       = true
o.splitbelow     = true
o.splitright     = true
o.startofline    = false
o.termguicolors  = true
o.wrap           = false

vim.o.completeopt = "menuone,noinsert,noselect"
vim.o.shortmess = vim.o.shortmess .. "c"

o.encoding       = "UTF-8"
o.fillchars      = {
  vert = "│",
  eob = " ",
  fold = " ",
  diff = " ",
}
o.foldopen       = {
  "percent",
  "search",
}
o.foldcolumn     = "1"

o.inccommand     = "split" -- incrementally show result of command
o.listchars      = {
  eol = "↲",
  tab= "» ",
}

o.mouse          = "nv"
o.shell          = "/usr/bin/zsh"
o.laststatus     = 2
o.pumheight      = 15
o.re             = 0
o.scrolloff      = 4
o.sidescroll     = 4
o.shiftwidth     = 2
o.sidescrolloff  = 15
o.tabstop        = 2
o.timeoutlen     = 400
o.updatetime     = 1000
o.joinspaces     = false

vim.cmd("set foldmethod=marker")

-- colorscheme
vim.cmd("colorscheme codedark")
vim.cmd("hi Folded ctermfg=245")
vim.cmd("set guicursor=i:block")
