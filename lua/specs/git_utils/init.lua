local M = {'sodapopcan/vim-twiggy'}

M.requires = {
  'tpope/vim-fugitive',
  'junegunn/gv.vim'
}

M.config = function()
  -- see: https://github.com/sodapopcan/vim-twiggy/issues/30
  vim.cmd([[ autocmd VimEnter * if empty(expand('<amatch>'))|call FugitiveDetect(getcwd())|endif ]])

  require('main.utils').map_leader_keys({
    gcop = '<cmd>Twiggy<cr>',
  })
end

return M