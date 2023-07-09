-------- ABBREVIATIONS --------
require 'abbrev'

-------- PACKER --------
require 'packer-plugins'

-------- PLUG --------
require 'plug'

-------- SETTINGS --------
require 'settings'

-------- MAPPINGS --------
require 'mappings'

-------- AUTO-COMMANDS --------
require 'auto-commands'

-------- NEOVIDE SETTINGS --------
if vim.g.neovide then
  opt.guifont = { "CaskaydiaCove NF", ":h10" }
  vim.g.neovide_cursor_vfx_mode = "torpedo"

  -- vim.opt.linespace=3
  -- vim.g.neovide_cursor_vfx_mode = "ripple"
  -- vim.g.neovide_cursor_vfx_mode = "pixiedust"
end

-------- VIM PLUG PLUGIN SETTINGS --------
vim.cmd [[
  let g:gitblame_enabled = 0
]]
