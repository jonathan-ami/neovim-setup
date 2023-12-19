local functions = {}

functions.switchTheme = function(themeName,bg)
  vim.cmd('set background=' .. bg)
  vim.cmd('colorscheme ' .. themeName)
end

return functions
