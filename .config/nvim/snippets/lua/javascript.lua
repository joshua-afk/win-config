-------------------------------
-- Contents
--
-- Common
-- Conditions
-- Loops
-- Objects
--
-------------------------------

local ls = require 'luasnip'

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local rep = require("luasnip.extras").rep
local fmt = require("luasnip.extras.fmt").fmt
local ps = ls.parser.parse_snippet

return {
  -- Conditions
  ps(
    "if",
		"if (${1}) {\n\t${0}\n}"
	),

  ps(
    "ifelse",
		"if (${1}) {\n\t${2}\n} else {\n\t${0}\n}"
	),

  ps(
    "switch",
		"switch(${1}) {\n\tcase x:\n\t\t// ...\n\t\tbreak;\n\tcase y:\n\t\t// ..\n\t\tbreak;\n\tdefault:\n}"
	),
  --array true

  -- Loops
  -- for loop
  ps(
    "forin",
		"for (const i in ${1}) {\n\t${0}\n}"
	),

  ps(
    "forof",
		"for (const key of ${1}) {\n\t${0}\n}"
	),
  --foreach

  -- Common
  -- s(
  --   "cl",
  --   fmt("console.log('{}', {})", { i(1, ''), rep(1) })
  -- ),
  ps(
    "clv",
		"console.log(${1:'Hi mom!'})"
	),

  -- s("fn", {
  --   c(1, {
		-- 	t("const tmpFunction = _ => "),
		-- 	t("const tmpFunction = () => "),
		-- 	t("function tmpFunction() "),
  --   }),
  --   t("{"),
  --   i(2),
  --   t("}")
  -- }),

  -- Objects
  ps(
    "delete",
		"delete Employee.firstname;"
	),
}
