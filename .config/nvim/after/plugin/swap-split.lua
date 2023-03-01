map = vim.api.nvim_set_keymap

require("swap-split").setup({
    ignore_filetypes = {
        "NvimTree"
    }
})

map('n', '<leader>sw', '<cmd>SwapSplit<CR>', { noremap = true })
