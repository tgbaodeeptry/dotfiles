local vimp = require('vimp')

vimp.nnoremap({'silent'}, '<leader>nt', ':enew<cr>')
vimp.nnoremap({'silent'}, '<leader>qt', function()
  local count = 0
  for i in pairs(vim.api.nvim_list_bufs()) do
    if vim.api.nvim_buf_is_loaded(i) then
      count = count + 1
    end
  end

  if count > 2 then
    if not vim.api.nvim_buf_get_option(vim.api.nvim_get_current_buf(), "modifiable") then
      vim.api.nvim_command("bd")
    elseif vim.api.nvim_buf_get_name("%") ~= "" then
      vim.api.nvim_command("w | bd")
    elseif not vim.api.nvim_buf_get_option(vim.api.nvim_get_current_buf(), "readonly") then
      vim.api.nvim_command("bd")
    else 
      vim.api.nvim_command("xit")
    end
  else
    vim.api.nvim_command("xit")
  end
end)

vimp.nnoremap({'silent'}, ']b', ':BufferLineCycleNext<cr>')
vimp.nnoremap({'silent'}, '[b', ':BufferLineCyclePrev<cr>')

local col = {
  white = "#abb2bf",
  darker_black = "#2a303c",
  black = "#2E3440", --  nvim bg
  black2 = "#343a46",
  one_bg = "#373d49",
  one_bg2 = "#3a404c",
  one_bg3 = "#3d434f",
  grey = "#474d59",
  grey_fg = "#565c68",
  grey_fg2 = "#606672",
  light_grey = "#646a76",
  red = "#BF616A",
  baby_pink = "#de878f",
  pink = "#e89199",
  line = "#3a404c",
  green = "#A3BE8C",
  vibrant_green = "#afca98",
  blue = "#7797b7",
  nord_blue = "#81A1C1",
  yellow = "#EBCB8B",
  sun = "#e1c181",
  purple = "#aab1be",
  dark_purple = "##B48EAD",
  teal = "#6484a4",
  orange = "#e39a83",
  cyan = "#9aafe6",
  statusline_bg = "#333945",
  lightbg = "#3f4551",
  lightbg2 = "#393f4b"
}
--
local bufferline = require('bufferline')

bufferline.setup {
  options = {
    buffer_close_icon = "",
    modified_icon = "",
    close_icon = "",
    left_trunc_marker = "",
    right_trunc_marker = "",
    max_name_length = 20,
    max_prefix_length = 18,
    tab_size = 20,
    enforce_regular_tabs = true,
    show_buffer_close_icons = false,
    mappings = true,
    always_show_bufferline = true,
    show_tab_indicators = false,
    show_close_icon = false,
    indicator_icon = '|',
    separator_style = 'slant',
    offsets = {
      {
        filetype = "NvimTree",
        text = "Explorer",
        text_align = "center",
        highlight = "Directory"
      }
    },
  },
  highlights = {
    fill = {
      guifg = col.grey_fg,
      guibg = col.black2
    },
    background = {
      guifg = col.grey_fg,
      guibg = col.black2
    },
    -- buffers
    buffer_visible = {
      guifg = col.light_grey,
      guibg = col.black2
    },
    buffer_selected = {
      guifg = col.white,
      guibg = col.black2,
      gui = "bold"
    },
    -- tabs
    tab = {
      guifg = col.light_grey,
      guibg = col.one_bg3
    },
    tab_selected = {
      guifg = col.black2,
      guibg = col.black
    },
    tab_close = {
      guifg = col.red,
      guibg = col.black
    },
    indicator_selected = {
      guifg = col.blue,
      guibg = col.blue
    },
    -- separators
    separator = {
      guifg = col.black,
      guibg = col.black
    },
    separator_visible = {
      guifg = col.black,
      guibg = col.black
    },
    separator_selected = {
      guifg = col.black,
      guibg = col.black
    },
    -- modified
    modified = {
      guifg = col.red,
      guibg = col.black2
    },
    modified_visible = {
      guifg = col.red,
      guibg = col.black2
    },
    modified_selected = {
      guifg = col.green,
      guibg = col.black
    },
    close_button = {
      guifg = col.light_grey,
      guibg = col.black2
    },
    close_button_visible = {
      guifg = col.light_grey,
      guibg = col.black2
    },
    close_button_selected = {
      guifg = col.red,
      guibg = col.black
    }
  }
}
