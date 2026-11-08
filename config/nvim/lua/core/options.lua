vim.g.mapleader = " "

local opt = vim.opt

opt.termguicolors = true
opt.number = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.cursorline = true
opt.showmatch = true
opt.guicursor = ""
opt.linespace = 2
opt.autoindent = true
opt.smartindent = false
opt.clipboard = "unnamedplus"

vim.filetype.add({
  extension = {
    twig = "twig",
  },
})
