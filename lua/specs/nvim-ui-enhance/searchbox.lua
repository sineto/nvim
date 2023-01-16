local M = {'VonHeikemen/searchbox.nvim'}

M.requires = {
  'MunifTanjim/nui.nvim'
}

M.config = function()
  -- SearchBox
  om.nnoremap('<A-f>', ':SearchBoxIncSearch<cr>')
  om.nnoremap('<leader>rpl', ':SearchBoxReplace<cr>')
  om.xnoremap('<leader>rpl', ':SearchBoxReplace visual_mode=true<cr>')
  om.nnoremap('<leader>rn', ':SearchBoxReplace -- <C-r>=expand("<cword>")<cr><cr>')
  om.xnoremap('<leader>rn', ':SearchBoxReplace visual_mode=true -- <C-r>=expand("<cword>")<cr><cr>')
end

return M