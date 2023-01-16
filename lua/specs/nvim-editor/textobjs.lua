local M = {'chrisgrieser/nvim-various-textobjs'}

M.requires = {
  'echasnovski/mini.ai',
  'kana/vim-textobj-user',
  'sgur/vim-textobj-parameter',
  'kana/vim-textobj-line'
}

M.config = function()
  require('various-textobjs').setup({ useDefaultKeymaps = true })
end

return M