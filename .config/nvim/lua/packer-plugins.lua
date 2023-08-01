local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'

	-- Core
	use 'zegervdv/nrpattern.nvim'
  use "nvim-lua/plenary.nvim"
  use 'xorid/swap-split.nvim'
	use 'numToStr/Comment.nvim'
  -- use 'feline-nvim/feline.nvim'
  use { 'michaelb/sniprun', run = 'bash ./install.sh'}
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }

  -- Navigation
  use 'notjedi/nvim-rooter.lua'
  use 'petertriho/nvim-scrollbar'
	
  -- LSP & Snippets
	use 'neovim/nvim-lspconfig'
  use({
    "L3MON4D3/LuaSnip",
    tag = "v1.2.*",
    run = "make install_jsregexp"
  })
  use {'akinsho/bufferline.nvim', tag = "v3.*"}

	-- Theme
	use { "catppuccin/nvim", as = "catppuccin" }

  -- File Explorer
  use 'nvim-tree/nvim-web-devicons'
	use { 'kyazdani42/nvim-tree.lua', tag = 'nightly' }
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.x' }

  -- Extension for plugins
	use 'saadparwaiz1/cmp_luasnip'
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
  }
  use {
    "benfowler/telescope-luasnip.nvim",
    module = "telescope._extensions.luasnip"
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)

-- Other plugins
-- use 'nvim-treesitter/playground'
-- use "folke/styler.nvim"
-- use 'SidOfc/carbon.nvim'
-- use {'akinsho/bufferline.nvim', tag = "v3.*"}
-- use {
--   "narutoxy/dim.lua",
--   config = function()
--     require('dim').setup({})
--   end
-- }
