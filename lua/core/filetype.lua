-- shortcuts
-- si = smartindent; ts = tabstop; sts = softtabstop; sw = shiftwidth; sta = smarttab; et = expandtab tw = textwidth
local autocmd = vim.api.nvim_create_autocmd

-- default
autocmd('FileType', {command = 'set si autoindent ts=2 sts=2 sw=2 sta et'})
autocmd({'BufNewFile', 'BufRead'}, {command = 'if &ft == "" | set ft=text | endif'})


-- Golang
autocmd('FileType', {
  pattern = {'go'},
  command = 'set si autoindent ts=4 sts=4 sw=4 sta noexpandtab formatoptions=croql'
})


-- Javascript, Typescript
autocmd({'BufRead', 'BufNewFile'}, {
  pattern = {'tsconfig.json'},
  command = 'set filetype=jsonc'
})


-- sh, makefile
autocmd('FileType', {
  pattern = {'sh', 'make'},
  command = 'set si autoindent ts=4 sts=4 sw=4 sta noexpandtab'
})

autocmd({'BufRead', 'BufNewFile'}, {
  pattern = {'.env', '.env.*'},
  command = 'set filetype=sh'
})


-- Terraform
-- cmd('silent! autocmd! filetypedetect BufRead,BufNewFile *.tf')
-- vim.filetype.add({
--   extension = {
--     tf = 'terraform'
--   }
-- })

autocmd({'BufRead', 'BufNewFile'}, {
  pattern = {'*.hcl', '.terraformrc', 'terraform.rc'},
  command = 'set filetype=hcl'
})

autocmd({'BufRead', 'BufNewFile'}, {
  pattern = {'*.tfvars'},
  command = 'set filetype=terraform'
})

autocmd({'BufRead', 'BufNewFile'}, {
  pattern = {'*.tfstate', '*.tfstate.backup'},
  command = 'set filetype=json'
})

autocmd({'BufRead', 'BufNewFile'}, {
  pattern = {'*.tpl'},
  command = 'set filetype=sh'
})

autocmd({'BufEnter', 'BufFilePost'}, {
  pattern = {'*.tf'},
  command = 'lua vim.api.nvim_buf_set_option(0, "commentstring", "# %s")'
})


-- Ansible
autocmd({'BufRead', 'BufNewFile'}, {
  pattern = {
    '*/{playbook,roles,tasks,handlers,files,defaults,vars,inventory}/*.{y,ya}ml',
    '*/{playbook,site,main,local,requirements,hosts}.{y,ya}ml',
    '*/{group,host}_vars/*.{y,ya}ml',
  },
  command = 'set filetype=yaml.ansible'
})