local M = {'ray-x/lsp_signature.nvim'}

M.config = function()
    require('lsp_signature').setup({ fix_pos = true })
end

return M