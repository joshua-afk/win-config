local ls = require 'luasnip'
local types = require 'luasnip.util.types'

ls.setup({
  history = true,
	update_events = "TextChanged,TextChangedI",
  enable_autosnippets = true,
  ext_opts = {
    [types.choiceNode] = {
      active = {
        virt_text = { { "choiceNode", "Comment" } },
      },
    },
  },
})

-- extend snippets
ls.filetype_extend("lua",        {"references"})
ls.filetype_extend("ruby",       {"references"})
ls.filetype_extend("blade",      {"references"})
ls.filetype_extend("javascript", {"references", "javascript-moment", "javascript-node", "javascript-webix"})
ls.filetype_extend("blade",      {"references", "html"})
ls.filetype_extend("html",       {"references"})
ls.filetype_extend("eruby",      {"references", "html"})
ls.filetype_extend("sql",        {"references", "sql-jeonsoft"})

-- require("luasnip.loaders.from_snipmate").load({ paths = { "~/.config/nvim/snippets" } })
require("luasnip.loaders.from_snipmate").load({ paths = { vim.fn.stdpath('config')..'/snippets' } })
