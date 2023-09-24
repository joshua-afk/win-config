local ls = require 'luasnip'

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local rep = require("luasnip.extras").rep
local fmt = require("luasnip.extras.fmt").fmt

return {
	-- -- s("trig", t("loaded!!")),
	-- 
 --  -- s('samp', fmt("local {} = require('{}')", { i(1, "default"), rep(1) })),
	--
 -- --  ls.parser.parse_snippet(
	-- -- 	"exo",
	-- -- 	"Wow! This ${1:Stuff} really ${2:works. ${3:Well, a bit.}}",
	-- -- ),
	--
 --  -- s("fn", {
 --  --   c(1, {
	-- 	-- 	t("public "),
	-- 	-- 	t("private "),
	-- 	-- }),
 --  --   t("class "),
 --  --   i(2),
 --  --   t(" "),
 --  -- }),
}
