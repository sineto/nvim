vim.g.vim_dir = vim.fn.expand('~/.config/nvim')

-- Stop loading built in plugins
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Ensure all autocommands are cleared
vim.api.nvim_create_augroup('vimrc', {})

-- Leader bindings
vim.g.mapleader = ',' -- Remap leader key
vim.g.maplocalleader = ',' -- Local leader is <Space>

local ok, reload = pcall(require, 'plenary.reload')
R = ok and reload.reload_module or function(...) return ... end
function reload(name)
  R(name)
  return require(name)
end

local namespace = {
  mappings = {},
  lsp = {},
}

_G.om = om or namespace 

reload('core.globals')
reload('core.opts')
reload('core.filetype')
reload('core.autocmd')
reload('core.maps')
reload('specs')