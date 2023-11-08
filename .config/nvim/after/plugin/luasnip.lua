local ls = require 'luasnip'
local types = require 'luasnip.util.types'
local ls_path = vim.fn.stdpath('config')..'/after/plugin/luasnip.lua'
local snipmate_snip_path = vim.fn.stdpath('config')..'/snippets/snipmate'
local lua_snip_path = vim.fn.stdpath('config')..'/snippets/lua'

ls.setup({
  history = true,
	update_events = "TextChanged,TextChangedI",
  enable_autosnippets = true,
  ext_opts = {
    [types.choiceNode] = {
      active = {
        virt_text = { { "<C-E> to jump next", "Comment" } },
      },
    },
  },
})

-- -- Keymaps
-- vim.cmd [[
--   " press <Tab> to expand or jump in a snippet. These can also be mapped separately
--   " via <Plug>luasnip-expand-snippet and <Plug>luasnip-jump-next.
--   imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
--   " -1 for jumping backwards.
--   inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>
--
--   snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
--   snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>
--
--   " For changing choices in choiceNodes (not strictly necessary for a basic setup).
--   imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
--   smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
-- ]]
--
-- -- extend snippets
-- ls.filetype_extend("javascript", { "javascript-custom", "javascript-moment", "javascript-node", "javascript-mssql"})
--
-- require("luasnip.loaders.from_lua").load({paths = lua_snip_path})

-- SNIPMATE FORMAT
-- extend snippets
ls.filetype_extend("lua",        {"references"})
ls.filetype_extend("ruby",       {"references"})
ls.filetype_extend("blade",      {"references"})
ls.filetype_extend("javascript", {"references", "javascript-moment", "javascript-node", "javascript-webix", "javascript-express", "javascript-axios", "javascript-mssql"})
ls.filetype_extend("blade",      {"references", "html"})
ls.filetype_extend("html",       {"references"})
ls.filetype_extend("eruby",      {"references", "html"})
ls.filetype_extend("sql",        {"references", "sql-jeonsoft"})
ls.filetype_extend("css",        {"references"})
ls.filetype_extend("scss",       {"references", "css"})
ls.filetype_extend("sass",       {"references", "css"})

require("luasnip.loaders.from_snipmate").load({ paths = { snipmate_snip_path } })
