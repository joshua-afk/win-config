api = vim.api
options = { noremap = true }

dial = require("dial.map")

api.nvim_set_keymap("n", "<C-a>", dial.inc_normal(), options)
api.nvim_set_keymap("n", "<C-x>", dial.dec_normal(), options)
api.nvim_set_keymap("n", "g<C-a>", dial.inc_gnormal(), options)
api.nvim_set_keymap("n", "g<C-x>", dial.dec_gnormal(), options)
api.nvim_set_keymap("v", "<C-a>", dial.inc_visual(), options)
api.nvim_set_keymap("v", "<C-x>", dial.dec_visual(), options)
api.nvim_set_keymap("v", "g<C-a>", dial.inc_gvisual(), options)
api.nvim_set_keymap("v", "g<C-x>", dial.dec_gvisual(), options)
