local o = vim.o   -- global options
local bo = vim.bo  -- buffer options
local wo = vim.wo  -- window options
local cmd = vim.cmd

cmd([[
  "" setting runtime path
  set runtimepath+=~/.config/nvim/autoload
  runtime autoload/**/*.vim
]])

cmd([[
  filetype on
  filetype indent on
  filetype plugin on

  syntax on
  syntax enable
]])

-- Visual
o.termguicolors   = true  -- use true colors
o.cmdheight       = 1
o.pumheight       = 9     -- number of items show in pop up menu
o.showtabline     = 2     -- always show tabline
o.laststatus      = 2
o.title           = true
o.background      = 'dark'
o.shortmess       = 'atc'
wo.signcolumn     = 'yes'
wo.cursorline     = true
wo.number         = true
wo.relativenumber = true

-- Behavior
o.mouse           = 'a'
o.showmatch       = true
o.hlsearch        = true
o.ignorecase      = true  -- ignore case when using lowercase in search
o.smartcase       = true  -- but don't ignore it when using upper case
o.smarttab        = true
o.inccommand      = 'nosplit'
o.splitbelow      = true
o.splitright      = true
o.lazyredraw      = true
o.scrolloff       = 12    -- Minimum offset in lines to screen borders
o.sidescrolloff   = 8

bo.autoindent      = true
bo.smartindent     = true
bo.expandtab       = true
bo.tabstop         = 2
bo.softtabstop     = 2
bo.shiftwidth      = 2

o.wrap            = true
o.linebreak       = true
o.textwidth       = 120
o.list            = true
o.listchars       = 'tab:│ ,nbsp:␣,trail:·,extends:>,precedes:<'

-- Editor
o.fileencoding    = 'utf-8'
o.ruler           = true
o.hidden          = true    -- allow buffer switching without saving
o.autoread        = true    -- refresh buffer if file has been changed externally
o.foldenable      = false
o.updatetime      = 250
o.wildmode = 'list:longest'
o.completeopt = 'menu,menuone,noinsert,noselect'
o.clipboard = 'unnamed,unnamedplus'