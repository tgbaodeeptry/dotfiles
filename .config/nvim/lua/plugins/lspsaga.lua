local vimp = require('vimp')
vimp.nnoremap(']e', ':Lspsaga diagnostic_jump_next<cr>')
vimp.nnoremap('[e', ':Lspsaga diagnostic_jump_prev<cr>')
vimp.nnoremap('<leader>dc', ':Lspsaga show_line_diagnostics<cr>')

local saga = require 'lspsaga'
saga.init_lsp_saga {
  error_sign = '',
  warn_sign = '',
  hint_sign = '',
  infor_sign = '',
  border_style = "round",
  dianostic_header_icon = '   ',
  code_action_icon = ' ',
  code_action_keys = {
    quit = 'q',exec = '<CR>'
  },
  rename_prompt_prefix = '➤',
  finder_definition_icon = '  ',
  finder_reference_icon = '  ',
}

