local M = {'j-hui/fidget.nvim'}

M.config = function()
  require('fidget').setup({
    text = {
      done = "",
    },
    window = {
      blend = 0,
    },
  })
end

return M