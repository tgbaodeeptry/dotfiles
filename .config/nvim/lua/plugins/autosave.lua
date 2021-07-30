local autosave = require('autosave')

autosave.setup(
  {
    enabled = vim.g.auto_save, -- takes boolean value from init.lua
    execution_message = "",
    events = {"InsertLeave", "TextChanged"},
    conditions = {
      exists = true,
      filetype_is_not = {},
      modifiable = true
    },
    write_all_buffers = false,
    on_off_commands = true,
    clean_command_line_interval = 0,
    debounce_delay = 135
  }
)
