vim.cmd [[packadd packer.nvim]]

return require('packer').startup({function()
  use {
    'wbthomason/packer.nvim', 
    event = "VimEnter"
  }  

  use {
    'navarasu/onedark.nvim',
    after = "packer.nvim",
    config = function()
      vim.g.onedark_style = 'deep'
      require('onedark').setup()
    end
  }

  use {
    'tpope/vim-surround',
    event = "BufRead"
  }

  use {
    'jiangmiao/auto-pairs',
    event = "BufRead"
  }

  use {
    'hoob3rt/lualine.nvim',
    config = function() require 'plugins.lualine' end,
    after = {"onedark.nvim", "nvim-web-devicons"}
  }

  use {
    'abecodes/tabout.nvim',
    config = function() require 'plugins.tabout' end,
    wants = 'nvim-treesitter',
    after = 'nvim-compe'
  }

  use {
    'lukas-reineke/indent-blankline.nvim',
    disable = true,
    event = "BufRead",
    config = function() require 'plugins.indent-blankline' end
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    config = function() require 'plugins.treesitter' end,
    event = "BufRead",
  }

  use {
    "Pocco81/AutoSave.nvim",
    event = "VimEnter",
    config = function() require "plugins.autosave" end
  }

  use {
    'akinsho/nvim-bufferline.lua',
    config = function() require 'plugins.bufferline' end,
    after = {"onedark.nvim", "nvim-web-devicons"},
  }

  use {
    'mbbill/undotree',
    event = "BufRead",
    config = function() require 'plugins.undotree' end
  }

  use {
    'SirVer/ultisnips',
    event = "InsertCharPre",
    config = function() require 'plugins.ultisnips' end
  }

  use {
    'rhysd/clever-f.vim',
    event = "BufRead",
    config = function() require 'plugins.clever-f' end
  }

  use {
    'preservim/nerdcommenter',
    event = "BufRead",
    config = function() require 'plugins.nerdcommenter' end
  }

  use {
    'onsails/lspkind-nvim',
    event = 'BufRead',
    config = function() require 'plugins.lspkind' end,
    after = "nvim-lspconfig"
  }

  use {
    'karb94/neoscroll.nvim',
    event = "WinScrolled",
    config = function() require 'plugins.neoscroll' end
  }

  use 'svermeulen/vimpeccable'

  use {
    'neovim/nvim-lspconfig',
    -- event = "BufRead",
    config = function() require 'plugins.lspconfig' end
  }

  use {
    'hrsh7th/nvim-compe',
    -- event = 'InsertEvent',
    config = function() require 'plugins.nvim-compe' end,
    after = { "ultisnips", "nvim-lspconfig" }
  }

  use {
    'glepnir/lspsaga.nvim',
    config = function() require 'plugins.lspsaga' end,
    after = "nvim-lspconfig"
  }

  use {
    "nvim-lua/plenary.nvim",
    event = "BufRead"
  }
  use {
    "nvim-lua/popup.nvim",
    after = "plenary.nvim"
  }

  use {
    'nvim-telescope/telescope.nvim', 
    cmd = "Telescope",
    config = function() require 'plugins.telescope' end,
    after = { "plenary.nvim", "popup.nvim" }
  }

  use {
    'voldikss/vim-floaterm',
    event = "BufRead",
    config = function() require 'plugins.vim-floaterm' end
  }

  use {
    'kyazdani42/nvim-tree.lua', 
    -- event = "BufRead",
    config = function() require 'plugins.nvim-tree' end
  }

  use {
    "kyazdani42/nvim-web-devicons",
    after = "onedark.nvim",
  }

end,
config = {
  display = {
    open_fn = require('packer.util').float,
  },
  -- max_jobs = 16,
  git = {
    default_url_format = 'https://hub.fastgit.org/%s'
  }
}})
