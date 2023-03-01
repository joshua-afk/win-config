g = vim.g
o = vim.o
api = vim.api
keymap = vim.keymap
options = { noremap = true }

-- Remap Leader
keymap.set("n", "<Space>", "<Nop>", { silent = true, remap = false })
g.mapleader = " "

-- Quickly open vimrc
api.nvim_set_keymap('n', '<leader>vrc', ':vsplit $MYVIMRC <cr>', options)

-- Fast save & quit
api.nvim_set_keymap('n', '<leader>w', ':w <cr>', options)
api.nvim_set_keymap('n', '<leader>q', ':q <cr>', options)

-- Easier split navigation (QWERTY)
api.nvim_set_keymap('n', '<c-j>', '<c-w><c-j>', options)
api.nvim_set_keymap('n', '<c-k>', '<c-w><c-k>', options)
api.nvim_set_keymap('n', '<c-l>', '<c-w><c-l>', options)
api.nvim_set_keymap('n', '<c-h>', '<c-w><c-h>', options)

api.nvim_set_keymap('n', '0', '^', options)
api.nvim_set_keymap('n', '^', '0', options)

-- Easy buffers
api.nvim_set_keymap('n', '<leader>n', ':bn <cr>', options)
api.nvim_set_keymap('n', '<leader>b', ':bp <cr>', options)

-- Copy to system clipboard
api.nvim_set_keymap('v', '<leader>y', '"+y', options)
api.nvim_set_keymap('n', '<leader>Y', '"+yg_', options)
api.nvim_set_keymap('n', '<leader>y', '"+y', options)
api.nvim_set_keymap('n', '<leader>yy', '"+yy', options)

-- Paste from system clipboard
api.nvim_set_keymap('n', '<leader>p', '"+p', options)
api.nvim_set_keymap('n', '<leader>P', '"+P', options)
api.nvim_set_keymap('v', '<leader>p', '"+p', options)
api.nvim_set_keymap('v', '<leader>P', '"+P', options)

-- Hit <enter> to insert new line in normal mode
api.nvim_set_keymap('n', '<enter>', 'o<esc>', options)
api.nvim_set_keymap('n', 's<enter>', 'o<esc>', options)

-- Close HTML tag
api.nvim_set_keymap('i', '<c-c>', '</<c-x><c-o><c-x>', { noremap = true, silent = true })

-- Faster open splits
api.nvim_set_keymap('n', '<leader>vs', ':vsplit <cr>', options)
api.nvim_set_keymap('n', '<leader>sp', ':split <cr>', options)

-- Vertical resize for sidenav
api.nvim_set_keymap('n', '<leader>30', ':vertical resize 30 <cr>', options)

-- Open explorer.exe in current directory
api.nvim_set_keymap('n', '<leader>exp', ':!explorer.exe . <cr><cr>', options)

-- Fast fold block of code
api.nvim_set_keymap('n', 'zz', 'zf%', options)

-- Swith between 2 latest buffers
api.nvim_set_keymap('n', '<tab>', '<c-6>', options)
