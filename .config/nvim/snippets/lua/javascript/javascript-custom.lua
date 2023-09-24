local ls = require 'luasnip'

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local rep = require("luasnip.extras").rep
local fmt = require("luasnip.extras.fmt").fmt

return {
  s("get-date-time", {
    t("const currentDateTime = (await sqlConn.request().query('SELECT GETDATE() AS Date')).recordset[0]['Date']"),
    t({ "", "" }),
    t("const sanitizedCurrentDateTime = currentDateTime.toISOString().slice(0, 19).replace('T', ' ')"),
  }),
}
