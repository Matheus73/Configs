vim.cmd [[
try
  colorscheme monokai
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme monokai_pro
endtry
]]
