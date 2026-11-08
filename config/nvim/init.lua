vim.cmd([[
  filetype plugin indent on
  syntax on
]])

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("core.options")
require("lazy").setup("plugins", {
  lockfile = vim.fn.stdpath("state") .. "/lazy-lock.json",
})
require("core.keymaps")
require("core.colorscheme")
