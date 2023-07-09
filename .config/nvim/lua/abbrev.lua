-- Link and Reload nvim config (lua)
vim.cmd('abb ln exe "!ln_nvim" <Esc>')
vim.cmd('abb reload exe "luafile %" <Esc>')

-- Pane controls
vim.cmd('abb vr vertical resize')
vim.cmd('abb vdiff vertical diffsplit')

-- Plugins sync and update
vim.cmd('abb pupdate execute "PackerSync" PlugUpdate')

-- Telescope commands shortcuts
vim.cmd('abb tgrep lua require("telescope.builtin").live_grep { noremap = true, prompt_title="Grep with Filtered Files", additional_args=function() return {"-g*.js"} end}')

-- Windows applications open
vim.cmd('abb exp !explorer.exe .')
vim.cmd('abb vscode !code .')

