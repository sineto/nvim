local M = {'glepnir/lspsaga.nvim'}

M.config = function ()
  require('lspsaga').setup({
    code_action_icon = ''
  })

  om.nnoremap('<leader>ca', '<cmd>Lspsaga code_action<cr>')
  om.vnoremap('<leader>ca', '<cmd>Lspsaga code_action<cr>')
  om.nnoremap('K', '<cmd>Lspsaga hover_doc<cr>')
  om.nnoremap('<leader>cc', '<cmd>Lspsaga show_cursor_diagnostics<cr>')
  om.nnoremap('<leader>cc', '<cmd>Lspsaga show_line_diagnostics<cr>')
  om.nnoremap('<leader>gr', '<cmd>Lspsaga rename<cr>')
end

return M