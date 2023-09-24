local ls = require 'luasnip'

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local rep = require("luasnip.extras").rep
local fmt = require("luasnip.extras.fmt").fmt

return {
  s("mssql-request-select", {
    t("const { recordset } = await sqlConn.request()"),
    t({ "", "" }),
    t(".input('id', sql.Int, id)"),
    t({ "", "" }),
    t(".input('company_id', sql.Int, sess.company_id)"),
    t({ "", "" }),
    t(".query('SELECT Id, CompanyId, TrainingName, TrainingCode, StartDate, EndDate, StartTime, EndTime, TrainingVenue, TrainingDescription, Active FROM tblCustomTGITrainings WHERE Id = @id AND CompanyId = @company_id')"),
  }),

  s("mssql-request-insert", {
    t("await sqlConn.request()"),
    t({ "", "" }),
    t(".input('employee_id', sql.Int, userId)"),
    t({ "", "" }),
    t(".input('file', sql.VarBinary, file.data)"),
    t({ "", "" }),
    t(".input('file_name', sql.VarChar(250), params.upload_fullpath)"),
    t({ "", "" }),
    t(".query('INSERT INTO tblCustomTGITrainingDocuments (File, FileName) VALUES (@file, @file_name)')"),
  }),

  s("mssql-request-update", {
    t("await sqlConn.request()"),
    t({ "", "" }),
    t(".input('id', sql.Int, ids[id])"),
    t({ "", "" }),
    t(".input('company_id', sql.Int, sess.company_id)"),
    t({ "", "" }),
    t(".input('is_publish', sql.VarChar, value)"),
    t({ "", "" }),
    t(".query('UPDATE tblCustomTGITrainings SET IsPublished = @is_publish WHERE Id = @id AND CompanyId = @company_id')"),
  }),

  s("mssql-request-delete", {
    t("await sqlConn.request()"),
    t({ "", "" }),
    t(".input('id', sql.Int, id)"),
    t({ "", "" }),
    t(".input('employee_id', sql.Int, sess.user_id)"),
    t({ "", "" }),
    t(".query('DELETE FROM tblCustomTGITrainingDocuments WHERE Id = @id AND EmployeeId = ABS(@employee_id)')"),
  }),

  s("mssql-request-like", {
    t("const { recordset } = await sqlConn.request()"),
    t({ "", "" }),
    t(".input('company_id', sql.Int, companyId)"),
    t({ "", "" }),
    t(".input('value', sql.VarChar(250), req.body.value)"),
    t({ "", "" }),
    t(".query(`SELECT [Id] AS id, e.FormalName As value FROM tblEmployees e WHERE e.Id > 1 AND CompanyId = @company_id AND e.Active = 1 AND FormalName LIKE '%' + @value + '%' ORDER BY FormalName`)"),
  }),
}
