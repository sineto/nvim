local M = {'lukas-reineke/indent-blankline.nvim'}

M.config = function()
    -- ['|', '¦', '┆', '┊']
    vim.g.indent_blankline_char = ':'
    vim.g.indent_blankline_use_treesitter = true
    require('indent_blankline').setup({})
end

return M