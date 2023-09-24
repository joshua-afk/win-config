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
  s("moment-format-date",
    t("moment(new Date()).format('YYYY-MM-DD')")
  ),
  s("moment-format-time-24",
    t("moment(new Date()).format('HH:mm:ss')")
  ),
  s("moment-format-time-12",
    t("moment(new Date()).format('hh:mm:ss A')")
  ),
  s("moment-format-date-time",
    t("moment(new Date()).format('YYYY-MM-DD HH:mm:ss')")
  ),
}
