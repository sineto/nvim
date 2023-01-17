local M = {'sodapopcan/vim-twiggy'}

M.dependencies = {
  'tpope/vim-fugitive',
  'junegunn/gv.vim',
  'kdheepak/lazygit.nvim',
  {'akinsho/git-conflict.nvim', tag = '*'}
}

M.config = function()
  require('git-conflict').setup()

  -- see: https://github.com/sodapopcan/vim-twiggy/issues/30
  vim.cmd([[ autocmd VimEnter * if empty(expand('<amatch>'))|call FugitiveDetect(getcwd())|endif ]])
end

return M