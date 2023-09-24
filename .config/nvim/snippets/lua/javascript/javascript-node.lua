-------------------------------
-- Contents
--
-- FORMAT
--
-------------------------------

local ls = require 'luasnip'

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local rep = require("luasnip.extras").rep
local fmt = require("luasnip.extras.fmt").fmt

return {
  -- FORMAT
  s('require', fmt("const {} = require('{}')", { i(1, "moment"), rep(1) })),
  s('node-route-test', fmt("const {} = require('{}')", { i(1, "moment"), rep(1) })),
}
