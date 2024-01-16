g = vim.g

-- g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
local colors = require("catppuccin.palettes").get_palette()

-- for transparent background
-- colors.none = "NONE"

require("catppuccin").setup({
  flavor = "mocha",
  transparent_background = false,
  term_colors = false,
	-- dim_inactive = {
	-- 	enabled = true,
	-- 	shade = "dark",
	-- 	percentage = 0.15,
	-- },
	styles = {
		comments = { "italic" },
		conditionals = { "italic" },
		loops = {},
		functions = { "bold" },
		keywords = {},
		strings = {},
		variables = { "bold" },
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
		operators = {},
	},
	integrations = {
		cmp = true,
		gitsigns = false,
		nvimtree = true,
		telescope = true,
		treesitter = true,
	},
  -- color_overrides = {
  --     -- mocha = {
  --     --     base = "#1e1e1e",
  --     -- },
  -- },
  -- custom_highlights = {
  --   LineNr = { fg = colors.peach },
  --   LineNrAbove = { fg = colors.green },
  --   LineNrBelow = { fg = colors.teal }
  -- },
  -- Transparent background tweaks
	custom_highlights = {
		LineNr = { fg = colors.peach },
		CursorLine = { bg = colors.none },
    LineNrAbove = { fg = colors.green },
    LineNrBelow = { fg = colors.teal },
		-- CursorLineNr = { fg = colors.lavender },
		-- Comment = { fg = colors.overlay1 },
		-- DiagnosticVirtualTextError = { bg = colors.none },
		-- DiagnosticVirtualTextWarn = { bg = colors.none },
		-- DiagnosticVirtualTextInfo = { bg = colors.none },
		-- DiagnosticVirtualTextHint = { bg = colors.none },
	}
})

vim.cmd.colorscheme "catppuccin"
