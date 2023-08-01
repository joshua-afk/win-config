api = vim.api
options = { noremap = true }

api.nvim_set_keymap('n', '<leader>tu', ':lua require("textcase").current_word("to_upper_case")<CR>', options)
api.nvim_set_keymap('n', '<leader>tl', ':lua require("textcase").current_word("to_lower_case")<CR>', options)
api.nvim_set_keymap('n', '<leader>ts', ':lua require("textcase").current_word("to_snake_case")<CR>', options)
api.nvim_set_keymap('n', '<leader>tc', ':lua require("textcase").current_word("to_camel_case")<CR>', options)
api.nvim_set_keymap('n', '<leader>td', ':lua require("textcase").current_word("to_dash_case")<CR>', options)
api.nvim_set_keymap('n', '<leader>ta', ':lua require("textcase").current_word("to_phrase_case")<CR>', options)
api.nvim_set_keymap('n', '<leader>tp', ':lua require("textcase").current_word("to_pascal_case")<CR>', options)
api.nvim_set_keymap('n', '<leader>tt', ':lua require("textcase").current_word("to_title_case")<CR>', options)

api.nvim_set_keymap('v', '<leader>tu', ':lua require("textcase").current_word("to_upper_case")<CR>', options)
api.nvim_set_keymap('v', '<leader>tl', ':lua require("textcase").current_word("to_lower_case")<CR>', options)
api.nvim_set_keymap('v', '<leader>ts', ':lua require("textcase").current_word("to_snake_case")<CR>', options)
api.nvim_set_keymap('v', '<leader>tc', ':lua require("textcase").current_word("to_camel_case")<CR>', options)
api.nvim_set_keymap('v', '<leader>td', ':lua require("textcase").current_word("to_dash_case")<CR>', options)
api.nvim_set_keymap('v', '<leader>ta', ':lua require("textcase").current_word("to_phrase_case")<CR>', options)
api.nvim_set_keymap('v', '<leader>tp', ':lua require("textcase").current_word("to_pascal_case")<CR>', options)
api.nvim_set_keymap('v', '<leader>tt', ':lua require("textcase").current_word("to_title_case")<CR>', options)

require('textcase').setup()

-- CASES
-- Upper case    | LOREM IPSUM
-- Lower case    | lorem ipsum
-- Snake case    | lorem_ipsum
-- Dash case     | lorem-ipsum
-- Constant case | LOREM_IPSUM
-- Dot case      | lorem.ipsum
-- Camel case    | loremIpsum
-- Pascal case   | LoremIpsum
-- Title case    | Lorem Ipsum
-- Path case     | lorem/ipsum
-- Phrase case   | Lorem ipsum
