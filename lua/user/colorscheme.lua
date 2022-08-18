vim.cmd [[
try
  colorscheme pencil
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
