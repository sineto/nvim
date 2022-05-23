local ft = {}

function ft.setup()
  local u = require('main.utils')
  local cmd = vim.cmd

  -- shortcuts
  -- si = smartindent; ts = tabstop; sts = softtabstop; sw = shiftwidth; sta = smarttab; et = expandtab tw = textwidth
  cmd('autocmd FileType * set si autoindent ts=2 sts=2 sw=2 sta et')

  -- GO
  cmd('autocmd FileType go set si autoindent ts=4 sts=4 sw=4 sta noexpandtab formatoptions=croql')
  u.create_augroup('golang_filetype', {})

  -- Javascript, Typescript
  cmd('autocmd FileType javascript,typescript set si autoindent ts=2 sts=2 sw=2 sta et')
  cmd('autocmd BufRead,BufNewFile tsconfig.json set filetype=jsonc')


  -- Terraform
  cmd('silent! autocmd! filetypedetect BufRead,BufNewFile *.tf')
  cmd('autocmd BufRead,BufNewFile *.hcl set filetype=hcl')
  cmd('autocmd BufRead,BufNewFile .terraformrc,terraform.rc set filetype=hcl')
  cmd('autocmd BufRead,BufNewFile *.tf,*.tfvars set filetype=terraform')
  cmd('autocmd BufRead,BufNewFile *.tfstate,*.tfstate.backup set filetype=json')
  u.create_augroup('terraform_filetype', {
    {'BufEnter *.tf :lua vim.api.nvim_buf_set_option(0, "commentstring", "# %s")'},
    {'BufFilePost *.tf :lua vim.api.nvim_buf_set_option(0, "commentstring", "# %s")'}
  })

  -- MISC
  cmd('au BufNewFile,BufRead * if &ft == "" | set ft=text | endif')
end

return ft
