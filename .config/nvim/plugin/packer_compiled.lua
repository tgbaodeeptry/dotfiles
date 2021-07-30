-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/tgbao2703/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/tgbao2703/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/tgbao2703/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/tgbao2703/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/tgbao2703/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["AutoSave.nvim"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plugins.autosave\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/tgbao2703/.local/share/nvim/site/pack/packer/opt/AutoSave.nvim"
  },
  ["auto-pairs"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/tgbao2703/.local/share/nvim/site/pack/packer/opt/auto-pairs"
  },
  ["clever-f.vim"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plugins.clever-f\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/tgbao2703/.local/share/nvim/site/pack/packer/opt/clever-f.vim"
  },
  ["lspkind-nvim"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plugins.lspkind\frequire\0" },
    load_after = {},
    loaded = false,
    needs_bufread = false,
    path = "/home/tgbao2703/.local/share/nvim/site/pack/packer/opt/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plugins.lspsaga\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/tgbao2703/.local/share/nvim/site/pack/packer/opt/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plugins.lualine\frequire\0" },
    load_after = {
      ["nvim-web-devicons"] = true,
      ["onedark.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/tgbao2703/.local/share/nvim/site/pack/packer/opt/lualine.nvim"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22plugins.neoscroll\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/tgbao2703/.local/share/nvim/site/pack/packer/opt/neoscroll.nvim"
  },
  nerdcommenter = {
    config = { "\27LJ\2\n5\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\26plugins.nerdcommenter\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/tgbao2703/.local/share/nvim/site/pack/packer/opt/nerdcommenter"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23plugins.bufferline\frequire\0" },
    load_after = {
      ["nvim-web-devicons"] = true,
      ["onedark.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/tgbao2703/.local/share/nvim/site/pack/packer/opt/nvim-bufferline.lua"
  },
  ["nvim-compe"] = {
    after = { "tabout.nvim" },
    after_files = { "/home/tgbao2703/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe.vim" },
    config = { "\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23plugins.nvim-compe\frequire\0" },
    load_after = {
      ultisnips = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/tgbao2703/.local/share/nvim/site/pack/packer/opt/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    after = { "lspkind-nvim", "lspsaga.nvim", "nvim-compe" },
    loaded = true,
    only_config = true
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22plugins.nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/tgbao2703/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23plugins.treesitter\frequire\0" },
    loaded = false,
    needs_bufread = true,
    path = "/home/tgbao2703/.local/share/nvim/site/pack/packer/opt/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    after = { "lualine.nvim", "nvim-bufferline.lua" },
    load_after = {
      ["onedark.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/tgbao2703/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    after = { "lualine.nvim", "nvim-web-devicons", "nvim-bufferline.lua" },
    config = { "\27LJ\2\n^\0\0\3\0\a\0\n6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0B\0\1\1K\0\1\0\nsetup\fonedark\frequire\tdeep\18onedark_style\6g\bvim\0" },
    load_after = {
      ["packer.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/tgbao2703/.local/share/nvim/site/pack/packer/opt/onedark.nvim"
  },
  ["packer.nvim"] = {
    after = { "onedark.nvim" },
    loaded = false,
    needs_bufread = false,
    path = "/home/tgbao2703/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    after = { "telescope.nvim", "popup.nvim" },
    loaded = false,
    needs_bufread = false,
    path = "/home/tgbao2703/.local/share/nvim/site/pack/packer/opt/plenary.nvim"
  },
  ["popup.nvim"] = {
    after = { "telescope.nvim" },
    load_after = {
      ["plenary.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/tgbao2703/.local/share/nvim/site/pack/packer/opt/popup.nvim"
  },
  ["tabout.nvim"] = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19plugins.tabout\frequire\0" },
    load_after = {
      ["nvim-compe"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/tgbao2703/.local/share/nvim/site/pack/packer/opt/tabout.nvim",
    wants = { "nvim-treesitter" }
  },
  ["telescope.nvim"] = {
    commands = { "Telescope" },
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22plugins.telescope\frequire\0" },
    load_after = {
      ["plenary.nvim"] = true,
      ["popup.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/tgbao2703/.local/share/nvim/site/pack/packer/opt/telescope.nvim"
  },
  ultisnips = {
    after = { "nvim-compe" },
    after_files = { "/home/tgbao2703/.local/share/nvim/site/pack/packer/opt/ultisnips/after/plugin/UltiSnips_after.vim" },
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22plugins.ultisnips\frequire\0" },
    loaded = false,
    needs_bufread = true,
    path = "/home/tgbao2703/.local/share/nvim/site/pack/packer/opt/ultisnips"
  },
  undotree = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plugins.undotree\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/tgbao2703/.local/share/nvim/site/pack/packer/opt/undotree"
  },
  ["vim-floaterm"] = {
    config = { "\27LJ\2\n4\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\25plugins.vim-floaterm\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/tgbao2703/.local/share/nvim/site/pack/packer/opt/vim-floaterm"
  },
  ["vim-surround"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/tgbao2703/.local/share/nvim/site/pack/packer/opt/vim-surround"
  },
  vimpeccable = {
    loaded = true,
    path = "/home/tgbao2703/.local/share/nvim/site/pack/packer/start/vimpeccable"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22plugins.nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22plugins.lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd lspsaga.nvim ]]

-- Config for: lspsaga.nvim
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plugins.lspsaga\frequire\0", "config", "lspsaga.nvim")

time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'AutoSave.nvim', 'packer.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au InsertCharPre * ++once lua require("packer.load")({'ultisnips'}, { event = "InsertCharPre *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'auto-pairs', 'clever-f.vim', 'lspkind-nvim', 'nerdcommenter', 'nvim-treesitter', 'plenary.nvim', 'undotree', 'vim-floaterm', 'vim-surround'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au WinScrolled * ++once lua require("packer.load")({'neoscroll.nvim'}, { event = "WinScrolled *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
