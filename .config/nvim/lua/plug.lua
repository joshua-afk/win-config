local fn = vim.fn
local Plug = fn['plug#']

vim.call('plug#begin', fn.stdpath('data')..'/plugged')

-- Core
Plug 'chrisbra/vim-diff-enhanced'
Plug 'junegunn/vim-easy-align'

-- Navigation
Plug('mg979/vim-visual-multi', {branch = 'master'})
Plug 'MattesGroeger/vim-bookmarks'
Plug 'psliwka/vim-smoothie'
Plug 'unblevable/quick-scope'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

-- Linters
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

vim.call('plug#end')

-- Other plugins
-- Plug 'NMAC427/guess-indent.nvim'
-- Plug 'lukas-reineke/indent-blankline.nvim'
-- Plug 'ggandor/leap.nvim'
-- Plug 'shortcuts/no-neck-pain.nvim'
-- Plug 'airblade/vim-rooter'
-- Plug 'wfxr/minimap.vim'
-- Plug 'folke/trouble.nvim'
-- Plug 'preservim/vim-markdown'
