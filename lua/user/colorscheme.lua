vim.cmd [[
try
  colorscheme PaperColor
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=light
endtry
]]
