local M = {'tami5/lspsaga.nvim'}

M.config = function ()
  require('lspsaga').init_lsp_saga({
    use_saga_diagnostic_sign = false,
    code_action_icon = ''
  })

  local u = require('main.utils')
  local nnoremap = u.nnoremap
  local xnoremap = u.xnoremap

  nnoremap('<leader>ca', '<cmd>lua require("lspsaga.codeaction").code_action()<cr>')
  xnoremap('<leader>ca', ':<C-U>lua require("lspsaga.codeaction").range_code_action()<cr>')
  nnoremap('K', '<cmd>lua require("lspsaga.hover").render_hover_doc()<cr>')
  nnoremap('gs', '<cmd>lua require("lspsaga.signaturehelp").signature_help()<cr>')
  nnoremap('<leader>cc', '<cmd>lua require("lspsaga.diagnostic").show_cursor_diagnostics()<cr>')
  nnoremap('gr', '<cmd>lua require("lspsaga.rename").rename()<cr>')
end

return M