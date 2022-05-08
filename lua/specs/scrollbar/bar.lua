local M = {'petertriho/nvim-scrollbar'}

M.config = function()
    require('scrollbar').setup({
        marks = {
            Error = {
                highlight = 'GitSignsDelete'
            },
            Warn = {
                highlight = 'GitSignsChange'
            }
        }
    })
end

return M