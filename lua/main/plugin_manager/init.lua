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

  use(require('specs.lsp'))

  -- Treesitter
  use(require('specs.treesitter'))

  -- UI
  use(require('specs.neotree'))
  use(require('specs.cokeline'))
  use(require('specs.fzf'))
  use(require('specs.tmux_navigator'))
  use(require('specs.searchbox'))

  -- Themes
  use(require('specs.sonokai'))

  if packer_bootstrap then
    require('packer').sync()
  end
end)