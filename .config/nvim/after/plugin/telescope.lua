api = vim.api
telescope = require('telescope')

-- Options
local options = { noremap = true }

local ignore_these = {
  '.git',
  '.yarn',
  '.neuron',
  'node_modules',
  'fonts',
  'icons',
  'images',
  'dist',
  'build',
  'yarn.lock',
  'package-lock.json',
  'vendor',
  'tags'
}

telescope.setup {
  defaults = {
    -- prompt_prefix = '🔍 ',
    color_devicons = true,
    layout_strategy = 'flex',
    file_ignore_patterns = ignore_these,
  },
  pickers = {
    find_files = {
      theme = "dropdown"
    },
    buffers = {
      theme = "dropdown"
    },
  },
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {
      }
    }
    -- fzf = {
    --   fuzzy = true,                    -- false will only do exact matching
    --   override_generic_sorter = true,  -- override the generic sorter
    --   override_file_sorter = true,     -- override the file sorter
    --   case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
    -- }

    -- project = {
    --   base_dirs = {
    --     'D:/clones/ClientCustomizations'
    --     -- {'D:/clones/ClientCustomizations', max_depth = 4},
    --     -- {path = '~/dev/src4'},
    --     -- {path = '~/dev/src5', max_depth = 2},
    --   },
    --   hidden_files = true, -- default: false
    --   theme = "dropdown",
    --   order_by = "asc",
    --   search_by = "title",
    --   sync_with_nvim_tree = true, -- default false
    --   -- -- default for on_project_selected = find project files
    --   -- on_project_selected = function(prompt_bufnr)
    --   --   -- Do anything you want in here. For example:
    --   --   project_actions.change_working_directory(prompt_bufnr, false)
    --   --   require("harpoon.ui").nav_file(1)
    --   -- end
    -- }
  }
}

-- Load extensions
-- telescope.load_extension('fzf')
-- telescope.load_extension("project")
-- telescope.load_extension('luasnip')
telescope.load_extension('flutter')
telescope.load_extension("workspaces")
telescope.load_extension("ui-select")

-- File Pickers
api.nvim_set_keymap('n', '<leader>ff', ':lua require("telescope.builtin").find_files({no_ignore=true}) <cr>', options)
api.nvim_set_keymap('n', '<leader>fg', ':lua require("telescope.builtin").live_grep() <cr>', options)
api.nvim_set_keymap('n', '<leader>fb', ':lua require("telescope.builtin").buffers() <cr>', options)
api.nvim_set_keymap('n', '<leader>fh', ':lua require("telescope.builtin").help_tags() <cr>', options)
api.nvim_set_keymap('n', '<leader>f]', ':lua require("telescope.builtin").lsp_definitions() <cr>', options)

-- Git
api.nvim_set_keymap('n', '<leader>fc', ':lua require("telescope.builtin").git_commits() <cr>', options)
api.nvim_set_keymap('n', '<leader>fgb', ':lua require("telescope.builtin").git_branches() <cr>', options)
api.nvim_set_keymap('n', '<leader>fs', ':lua require("telescope.builtin").git_status() <cr>', options)

-- Luasnip
api.nvim_set_keymap('n', '<leader>snip', ':Telescope luasnip <cr>', options)

-- Flutter
api.nvim_set_keymap('n', '<leader>fl', ':lua require("telescope").extensions.flutter.commands() <cr>', options)

-- Misc
api.nvim_set_keymap('n', '<leader>fr', ':Telescope resume <cr>', options)
