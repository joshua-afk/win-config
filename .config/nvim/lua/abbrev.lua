vim.cmd('abb vr vertical resize')
vim.cmd('abb vdiff vertical diffsplit')
vim.cmd('abb pupdate execute "PackerSync" PlugUpdate')
vim.cmd('abb exp !explorer.exe .')
vim.cmd('abb vscode !code .')
vim.cmd('abb tgrep lua require("telescope.builtin").live_grep { noremap = true, prompt_title="Grep with Filtered Files", additional_args=function() return {"-g*.js"} end}')

