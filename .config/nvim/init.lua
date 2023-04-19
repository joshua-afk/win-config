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

if vim.g.neovide then
  opt.guifont = { "CaskaydiaCove NF", ":h10" }
  vim.opt.linespace=5

  -- vim.g.neovide_cursor_vfx_mode = "ripple"
  -- vim.g.neovide_cursor_vfx_mode = "pixiedust"
  vim.g.neovide_cursor_vfx_mode = "torpedo"
end
