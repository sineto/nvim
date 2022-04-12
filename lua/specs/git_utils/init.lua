local M = {'sodapopcan/vim-twiggy'}

M.requires = {
  'tpope/vim-fugitive',
  'junegunn/gv.vim',
  'kdheepak/lazygit.nvim'
}

M.config = function()
  -- see: https://github.com/sodapopcan/vim-twiggy/issues/30
  vim.cmd([[ autocmd VimEnter * if empty(expand('<amatch>'))|call FugitiveDetect(getcwd())|endif ]])
end

return M