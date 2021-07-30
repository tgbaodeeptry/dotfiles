local vimp = require('vimp')
vimp.nnoremap({'silent'}, '<leader>f', ':NvimTreeToggle<cr>')

local tree_c = require('nvim-tree.config')
local tree_cb = tree_c.nvim_tree_callback
local g = vim.g

g.nvim_tree_side = "left"
g.nvim_tree_ignore = {".git", "node_modules", ".cache"}
g.nvim_tree_gitignore = 1
g.nvim_tree_auto_open = 1
g.nvim_tree_auto_close = 1
g.nvim_tree_quit_on_open = 0
g.nvim_tree_follow = 1
g.nvim_tree_indent_markers = 1
g.nvim_tree_hide_dotfiles = 1
g.nvim_tree_git_hl = 1
g.nvim_tree_highlight_opened_files = 1
g.nvim_tree_root_folder_modifier = ":t"
g.nvim_tree_tab_open = 1
g.nvim_tree_allow_resize = 1
g.nvim_tree_add_trailing = 0
g.nvim_tree_update_cwd = 1
g.nvim_tree_disable_window_picker = 1
g.nvim_tree_hijack_cursor = 1

g.nvim_tree_show_icons = {
  git = 1,
  folders = 1,
  files = 1
}

g.nvim_tree_icons = {
  default = "",
  symlink = "",
  git = {
    unstaged = "✗",
    staged = "✓",
    unmerged = "",
    renamed = "➜",
    untracked = "★",
    deleted = "",
    ignored = "◌"
  },
  folder = {
    default = "",
    open = "",
    empty = "", -- 
    empty_open = "",
    symlink = "",
    symlink_open = ""
  }
}
