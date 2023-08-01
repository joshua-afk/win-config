api = vim.api
bufferline = require('bufferline')

bufferline.setup({
    options = {
      max_name_length = 50,
      hover = {
        enabled = false,
      },
      show_duplicate_prefix = false
    }
})

api.nvim_set_keymap('n', '<c-t>', ':BufferLinePick<cr>', { noremap = true })
