local aucmd = {}

function aucmd.setup()
  local cmd = vim.cmd

  cmd([[
    " remember cursor position {{{
    augroup RememberCursorPosition
      autocmd!
      autocmd BufReadPost *
        \ if line("'\"") > 1 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif
    augroup END
    " }}}
  ]])
end

return aucmd