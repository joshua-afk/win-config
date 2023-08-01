opt = vim.opt
opt.list = true

-- vim.cmd [[highlight IndentBlanklineIndent1 guifg=#f5c2e7 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent2 guifg=#f38ba8 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent3 guifg=#fab387 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent4 guifg=#a6e3a1 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent5 guifg=#89dceb gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent6 guifg=#89b4fa gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent7 guifg=#cdd6f4 gui=nocombine]]
-- vim.opt.listchars:append "space:⋅"
-- vim.opt.listchars:append "eol:↴"

-- opt.listchars:append "space:⋅"
-- opt.listchars:append "eol:↴"

require("indent_blankline").setup {
  indent_blankline_enabled = false,
  -- char_highlight_list = {
  --   "IndentBlanklineIndent1",
  --   "IndentBlanklineIndent2",
  --   "IndentBlanklineIndent3",
  --   "IndentBlanklineIndent4",
  --   "IndentBlanklineIndent5",
  --   "IndentBlanklineIndent6",
  --   "IndentBlanklineIndent7",
  -- },
  -- for example, context is off by default, use this to turn it on
  -- show_current_context = true,
  -- show_current_context_start = true,
  space_char_blankline = " ",
}
