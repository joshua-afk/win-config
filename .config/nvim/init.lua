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
  vim.o.guifont = "CaskaydiaCove Nerd Font:h10" -- text below applies for VimScript
  vim.opt.linespace=5

  vim.g.neovide_cursor_vfx_mode = "ripple"
end
