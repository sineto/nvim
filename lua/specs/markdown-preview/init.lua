local M = {'iamcco/markdown-preview.nvim'}

M.run = 'cd app && npm install'

M.setup = function()
    vim.g.mkdp_filetypes = { "markdown" }
end

M.ft = {'markdown'} 

M.config = function()
end

return M