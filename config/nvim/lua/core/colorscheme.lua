local c = require("embark_pro.colors")
vim.cmd("colorscheme embark_pro")

local set_hl = vim.api.nvim_set_hl
set_hl(0, "CursorLine", { bg = c.dark_gray })
set_hl(0, "LineNr", { fg = c.gray })
set_hl(0, "CursorLineNr", { bold = true, fg = c.blue })
