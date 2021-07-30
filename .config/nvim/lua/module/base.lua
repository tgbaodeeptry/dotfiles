vim.cmd("syntax enable")
vim.cmd("filetype plugin indent on")

local o = vim.opt

vim.g.autosave   = true
o.relativenumber = true
o.undofile       = true 
o.cursorline     = false
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
o.scrolloff      = 3
o.sidescroll     = 3
o.shiftwidth     = 2
o.tabstop        = 2
o.sidescrolloff  = 15
o.timeoutlen     = 400
o.updatetime     = 1000
o.joinspaces     = false

vim.wo.foldmethod = 'marker'

-- colorscheme
vim.o.background = "dark"
vim.cmd([[set guicursor=i:block]])
