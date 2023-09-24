local ls = require 'luasnip'

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local rep = require("luasnip.extras").rep
local fmt = require("luasnip.extras.fmt").fmt

return {
  ls.parser.parse_snippet(
    "cl",
		"console.log(${1:'Hi mom!'})"
	),

  s('clv', fmt("console.log('{}', {})", { i(1, ''), rep(1) })),
}
