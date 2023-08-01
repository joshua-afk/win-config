if vim.g.neovide then
  opt.guifont = { "Hack Nerd Font Propo", ":h9.5" }
  vim.g.neovide_cursor_vfx_mode = "torpedo"

  vim.opt.linespace=1

  -- Paste while in command mode
  vim.cmd[[
    cnoremap <c-v> <c-r>+
  ]]

  vim.api.nvim_set_keymap('n', '<F11>', ":let g:neovide_fullscreen = !g:neovide_fullscreen<CR>", {})

  -- Other config
  -- opt.guifont = { "CaskaydiaCove NF", ":h9" }
  -- opt.guifont = { "InconsolataGo Nerd Font Mono", ":h12" }
  -- vim.g.neovide_cursor_vfx_mode = "ripple"
  -- vim.g.neovide_cursor_vfx_mode = "pixiedust"
end

