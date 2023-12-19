local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
local myfuncs = require('johnnysfunstuff')

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("lazy").setup("plugins")

-- Keybinds
vim.api.nvim_set_keymap('n', '<F5>', ':lua myfuncs.switchTheme("gruvbox","dark")<CR>', {noremap = true, silent = true})
