-- api = vim.api
-- options = { noremap = true }

vim.cmd [[
  " Start interactive EasyAlign in visual mode (e.g. vipga)
  xmap <leader>al <Plug>(EasyAlign)

  " Start interactive EasyAlign for a motion/text object (e.g. gaip)
  nmap <leader>al <Plug>(EasyAlign)
]]

-- api.nvim_set_keymap('v', '<leader>al', ':EasyAlign ', { noremap = true })
-- api.nvim_set_keymap('n', '<leader>al', ':EasyAlign ', { noremap = true })
