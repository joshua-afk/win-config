local fn = vim.fn
local Plug = fn['plug#']

vim.call('plug#begin', fn.stdpath('data')..'/plugged')

-- Core
Plug 'chrisbra/vim-diff-enhanced'
Plug 'junegunn/vim-easy-align'
-- Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'monaqa/dial.nvim'
Plug 'johmsalas/text-case.nvim'
Plug 'notjedi/nvim-rooter.lua'
Plug 'zegervdv/nrpattern.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'numToStr/Comment.nvim'

-- Navigation
Plug('mg979/vim-visual-multi', {branch = 'master'})
Plug 'MattesGroeger/vim-bookmarks'
Plug 'psliwka/vim-smoothie'
Plug 'unblevable/quick-scope'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'petertriho/nvim-scrollbar'

-- File Explorer
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'

-- Linters
Plug 'dense-analysis/ale'
Plug 'mfussenegger/nvim-lint'
Plug 'digitaltoad/vim-pug'
Plug 'jwalton512/vim-blade'
Plug 'pangloss/vim-javascript'
Plug 'statico/vim-javascript-sql'
Plug 'vim-ruby/vim-ruby'
Plug 'godlygeek/tabular'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'joereynolds/sql-lint'
Plug 'vim-python/python-syntax'
Plug 'tbastos/vim-lua'
Plug 'ap/vim-css-color'
Plug 'dart-lang/dart-vim-plugin'
Plug 'akinsho/flutter-tools.nvim'

-- Git
Plug 'tpope/vim-fugitive'
Plug 'f-person/git-blame.nvim'

-- Theme
Plug 'rakr/vim-one'

-- ETC
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'
Plug 'jiangmiao/auto-pairs'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'saadparwaiz1/cmp_luasnip'

Plug 'natecraddock/workspaces.nvim'
-- Plug 'nvim-telescope/telescope-project.nvim'

vim.call('plug#end')

-- Some plugins config
vim.cmd [[
  let g:gitblame_enabled = 0
]]

-- Other plugins
-- Plug 'NMAC427/guess-indent.nvim'
-- Plug 'ggandor/leap.nvim'
-- Plug 'shortcuts/no-neck-pain.nvim'
-- Plug 'airblade/vim-rooter'
-- Plug 'wfxr/minimap.vim'
-- Plug 'folke/trouble.nvim'
-- Plug 'preservim/vim-markdown'
