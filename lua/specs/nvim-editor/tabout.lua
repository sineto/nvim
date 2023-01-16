local M = {'abecodes/tabout.nvim'}

-- M.after = 'nvim-comp'

M.after = 'nvim-autopairs'
M.wants = 'nvim-treesitter'

M.config = function()
  require('tabout').setup({
    tabkey = "<Tab>", -- key to trigger tabout, set to an empty string to disable
    backwards_tabkey = "<S-Tab>", -- key to trigger backwards tabout, set to an empty string to disable
    completion = true, -- We use tab for completion so set this to true
  })
end

return M