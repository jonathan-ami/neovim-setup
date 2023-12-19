local functions = {}

functions.switchTheme = function(themeName,bg)
  local theme = themes[themeName]
  if theme then
    vim.cmd('set background=' .. bg)
    vim.cmd('colorscheme ' .. themeName)
  end
end

return functions
