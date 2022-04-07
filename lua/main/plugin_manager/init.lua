-- Plugin definition and loading
-- local execute = vim.api.nvim_command
local fn = vim.fn
local cmd = vim.cmd

-- Boostrap Packer
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
local packer_bootstrap
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

-- Rerun PackerCompile everytime pluggins.lua is updated
cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

-- Load Packer
cmd([[packadd packer.nvim]])

-- Initialize pluggins
return require('packer').startup(function(use)
  -- Let Packer manage itself
  use(require('specs.packer'))
  use({'nathom/filetype.nvim'})
  use(require('specs.searchbox'))

  -- Lsp
  use(require('specs.lsp'))

  -- Treesitter
  use(require('specs.treesitter'))
  use(require('specs.treesitter.hlargs'))

  -- UI
  use(require('specs.neotree'))
  use(require('specs.cokeline'))
  use(require('specs.fzf'))
  use(require('specs.tmux_navigator'))

  -- Themes
  use(require('specs.sonokai'))

  use(require('specs.vimade'))
  use(require('specs.gitsigns'))
  use(require('specs.numb'))
  use(require('specs.neoscroll'))

  if packer_bootstrap then
    require('packer').sync()
  end
end)