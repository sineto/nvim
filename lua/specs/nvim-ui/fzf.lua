local M = {'ibhagwan/fzf-lua'}

M.branch = 'main'

M.dependencies = {
  {'junegunn/fzf', run = './install --bin'},
  -- {'nvim-tree/nvim-web-devicons'},
}

M.cond = function()
  return vim.fn.executable('fzf') == 1
end

M.config = function()
  om.map('n', '<C-p>', '<cmd>lua require("fzf-lua").files()<cr>')
  om.map_leader_keys({
    fr = "<cmd>lua require('fzf-lua').grep_project()<cr>",
    fa = "<cmd>lua require('fzf-lua').live_grep_glob({cmd = 'ag --nogroup --column --color ', prompt = 'Ag> ', fzf_opts = { ['--nth'] = '4' }, actions = {['default'] = require('fzf-lua.actions').file_edit}})<cr>",
    gcop = "<cmd>lua require('fzf-lua').git_branches()<cr>"
  })

end

return M