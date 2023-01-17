local M = {'iamcco/markdown-preview.nvim'}

M.build = 'cd app && npm install'

M.init = function()
    vim.g.mkdp_filetypes = {'markdown'}
end

M.ft = {'markdown'} 

M.config = function()
end

return M