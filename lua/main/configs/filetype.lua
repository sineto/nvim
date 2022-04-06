local ft = {}

function ft.setup()
  local u = require('main.utils')
  local cmd = vim.cmd

  -- shortcuts
  -- si = smartindent; ts = tabstop; sts = softtabstop; sw = shiftwidth; sta = smarttab; et = expandtab tw = textwidth

  -- GO
  cmd('autocmd FileType go set si autoindent ts=4 sts=4 sw=4 sta noexpandtab formatoptions=croql')

  u.create_augroup('golang_filetype', {})

  -- MISC
  cmd('au BufNewFile,BufRead * if &ft == "" | set ft=text | endif')
end

return ft
