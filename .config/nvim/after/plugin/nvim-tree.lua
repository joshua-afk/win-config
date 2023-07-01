-- local function custom_attachment(bufnr)
--   local api = require "nvim-tree.api"
--
--   local function opts(desc)
--     return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
--   end
--
--   -- default mappings
--   api.config.mappings.default_on_attach(bufnr)
--
--   -- custom mappings
--   vim.keymap.set('n', ']', api.tree.cd, opts('Change Dir'))
--   vim.keymap.set('n', ']', api.tree.dir_up, opts('DIR Up'))
-- end

api = vim.api
tree = require("nvim-tree")

-- Options
tree.setup({
  -- on_attach = custom_attachment,
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true
  },
  renderer = {
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      }
    }
  },
  git = {
    enable = true,
    ignore = false,
    show_on_dirs = false,
    timeout = 400,
  },
  view = {
    width = 30
  }
})

-- Remaps
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle <cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>r', ':NvimTreeRefresh <cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeFindFile <cr>', { noremap = true })
