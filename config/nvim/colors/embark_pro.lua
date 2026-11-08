vim.cmd("hi clear")
vim.g.colors_name = "embark_pro"
local lush = require("lush")
local theme = require("embark_pro.theme")
lush(theme)
