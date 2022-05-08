local M = {'Darazaki/indent-o-matic'}

M.config = function()
    require('indent-o-matic').setup({
        -- Global settings (optional, used as fallback)
        max_lines = 2048,
        standard_widths = { 2, 4, 8 },
    })
end

return M