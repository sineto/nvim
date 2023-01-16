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
  
  use({'nvim-lua/plenary.nvim'})

  -- Treesitter
  use(require('specs.treesitter'))

  -- Code completions
  use(require('specs.nvim-lsp'))        -- language server
  use(require('specs.nvim-cmp'))        -- code completion

  -- Themes
  use(require('specs.sonokai'))         -- monokai pro like theme
  -- use(require('specs.sinokai'))

  -- UI
  use(require('specs.nvim-ui.nvim-tree')) -- tree viewer
  -- use(require('specs.nvim-ui.neo-tree'))
  use(require('specs.nvim-ui.cokeline'))  -- buffer line
  use(require('specs.nvim-ui.lualine'))   -- status line
  use(require('specs.nvim-ui.fzf'))       -- fuzzy finder
  use(require('specs.nvim-ui.winbar'))
  use(require('specs.nvim-ui.glance'))    -- lsp locations previewer
  use(require('specs.nvim-ui.trouble'))   -- lsp errors previwer
  use(require('specs.nvim-ui.sad'))
  use(require('specs.nvim-ui.kind'))
  use(require('specs.nvim-ui.signature'))

  -- UI Enhancement
  use(require('specs.nvim-ui-enhance.saga'))
  use(require('specs.nvim-ui-enhance.tmux-navigator')) -- integration with tmux
  use(require('specs.nvim-ui-enhance.winresizer'))     -- rezise split windows
  use(require('specs.nvim-ui-enhance.scrollbar')) -- scroll bar
  use(require('specs.nvim-ui-enhance.neoscroll'))      -- smooth scrolling
  use(require('specs.nvim-ui-enhance.numb'))           -- jump to number line
  use(require('specs.nvim-ui-enhance.fidget'))
  use(require('specs.nvim-ui-enhance.searchbox'))
  use(require('specs.nvim-ui-enhance.markdown-preview')) -- browser markdown previwer

  -- Editor
  use(require('specs.nvim-editor.autopairs'))
  use(require('specs.nvim-editor.indent-line'))
  use(require('specs.nvim-editor.comment'))
  use(require('specs.nvim-editor.tabout'))
  use(require('specs.nvim-editor.textobjs'))
  use('tpope/vim-surround')
  use('fedepujol/move.nvim')            -- move around lines and blocks


  -- Git utils
  use(require('specs.nvim-git.gitsigns'))
  use(require('specs.nvim-git.git-conflict'))
  use(require('specs.nvim-git.diffview'))

  -- -- Utilities
  -- use(require('specs.git-utils'))
  -- use('aquasecurity/vim-tfsec')

  -- use('~/.config/nvim/bundle/git-actions')

  if packer_bootstrap then
    require('packer').sync()
  end
end)