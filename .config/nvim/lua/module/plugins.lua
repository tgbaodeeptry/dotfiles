vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'itchyny/lightline.vim'
  use 'sheerun/vim-polyglot'
  use 'tpope/vim-surround'
  use 'ryanoasis/vim-devicons'
  use 'mbbill/undotree'
  use 'jiangmiao/auto-pairs'
  use 'SirVer/ultisnips'
  use 'octol/vim-cpp-enhanced-highlight'
  use 'rhysd/clever-f.vim'
  use 'preservim/nerdcommenter'
  use 'tomasiser/vim-code-dark'

  use 'onsails/lspkind-nvim'
  use 'karb94/neoscroll.nvim'
  use 'svermeulen/vimpeccable'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-compe'
  use 'glepnir/lspsaga.nvim'
  use {
    'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }
  use 'voldikss/vim-floaterm'
  use {
    'kyazdani42/nvim-tree.lua', requires = {{'kyazdani42/nvim-web-devicons'}}
  }
end)
