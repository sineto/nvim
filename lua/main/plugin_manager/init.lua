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
  use({'wbthomason/packer.nvim', opt = true})

  use({'nathom/filetype.nvim'})         -- discrease nvim startup purpose

  -- Lsp
  use(require('specs.lsp'))             -- language server

  -- Code completions
  use(require('specs.nvim-cmp'))
  use(require('specs.lspkind'))

  -- Treesitter
  use(require('specs.treesitter'))
  use(require('specs.treesitter.hlargs'))

  -- UI
  use(require('specs.lualine'))         -- status line
  use(require('specs.neotree'))         -- file explorer
  use(require('specs.cokeline'))        -- bufferline
  use(require('specs.fzf'))             -- fuzzy finder
  use(require('specs.gitsigns'))        -- git signs vscode like
  use(require('specs.vimade'))
  use(require('specs.scrollbar.bar'))

  -- Utilities
  use(require('specs.numb'))            -- jump line nicely
  use(require('specs.neoscroll'))       -- smooth scroll
  use(require('specs.tmux_navigator'))  -- navigate between tmux pane and nvim window
  use(require('specs.git_utils'))
  use(require('specs.diffview'))

  -- Themes
  use(require('specs.sonokai'))         -- monokai pro like theme

  -- Editor
  use(require('specs.autopairs'))       -- auto close pairs
  use(require('specs.comment'))         -- code commentary
  use(require('specs.tabout'))          -- jump through pairs
  use('fedepujol/move.nvim')            -- move around lines and blocks
  use('tpope/vim-surround')
  use('kana/vim-textobj-user')
  use('kana/vim-textobj-line')          -- select line
  use('sgur/vim-textobj-parameter')     -- select params

  -- seems searchbox.nvim have conflicts with some plugins
  -- so I move those to be loaded before it
  use(require('specs.searchbox'))       -- nicely search tool

  use('~/.config/nvim/bundle/git_actions')

  if packer_bootstrap then
    require('packer').sync()
  end
end)