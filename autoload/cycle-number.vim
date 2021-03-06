function! CycleNumbering() abort
  if exists('+relativenumber')
    execute {
      \ '00': 'set relativenumber   | set number',
      \ '01': 'set norelativenumber | set number',
      \ '10': 'set norelativenumber | set nonumber',
      \ '11': 'set norelativenumber | set number' }[&number . &relativenumber]
  else
    " No relative numbering, just toggle numbers on and off
    set number!<cr>
  endif
endfunction
command! -bang -nargs=* CycleNumbering call CycleNumbering(<bang> <args>)