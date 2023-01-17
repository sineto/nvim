----------------------------------------------------------------------------------------------------
-- Bootstrap lazy.nvim
----------------------------------------------------------------------------------------------------
local fn = vim.fn

local lazypath = fn.stdpath('data') .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
  fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

----------------------------------------------------------------------------------------------------
-- Initialize plugins/specs
----------------------------------------------------------------------------------------------------
require('lazy').setup({ 
  {'nvim-lua/plenary.nvim'},
  require('specs.nvim-ui-enhance.webdevicons'),

  -- Treesitter
  require('specs.treesitter'),

  -- Code completions
  require('specs.nvim-lsp'),        -- language server
  require('specs.nvim-cmp'),        -- code completion

  -- Themes
  require('specs.sonokai'),         -- monokai pro like theme
  -- use(require('specs.sinokai'))

  -- UI
  -- use(require('specs.nvim-ui.neo-tree'))
  require('specs.nvim-ui.nvim-tree'), -- tree viewer
  require('specs.nvim-ui.cokeline'),  -- buffer line
  require('specs.nvim-ui.lualine'),   -- status line
  require('specs.nvim-ui.fzf'),       -- fuzzy finder
  require('specs.nvim-ui.winbar'),
  require('specs.nvim-ui.glance'),    -- lsp locations previewer
  require('specs.nvim-ui.trouble'),   -- lsp errors previwer
  require('specs.nvim-ui.sad'),
  require('specs.nvim-ui.kind'),
  require('specs.nvim-ui.signature'),

  -- UI Enhancement
  require('specs.nvim-ui-enhance.saga'),
  require('specs.nvim-ui-enhance.tmux-navigator'), -- integration with tmux
  require('specs.nvim-ui-enhance.winresizer'),     -- rezise split windows
  require('specs.nvim-ui-enhance.scrollbar'), -- scroll bar
  require('specs.nvim-ui-enhance.neoscroll'),      -- smooth scrolling
  require('specs.nvim-ui-enhance.numb'),           -- jump to number line
  require('specs.nvim-ui-enhance.fidget'),
  require('specs.nvim-ui-enhance.searchbox'),
  require('specs.nvim-ui-enhance.markdown-preview'), -- browser markdown previwer

  -- Editor
  require('specs.nvim-editor.autopairs'),
  require('specs.nvim-editor.indent-line'),
  require('specs.nvim-editor.comment'),
  require('specs.nvim-editor.move'),
  require('specs.nvim-editor.tabout'),
  require('specs.nvim-editor.textobjs'),
  {'tpope/vim-surround'},


  -- Git utils
  require('specs.nvim-git.gitsigns'),
  require('specs.nvim-git.git-conflict'),
  require('specs.nvim-git.diffview'),

  -- -- Utilities
  -- use(require('specs.git-utils'))
  -- use('aquasecurity/vim-tfsec')

  -- use('~/.config/nvim/bundle/git-actions')
})