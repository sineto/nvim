local M = {'nvim-neo-tree/neo-tree.nvim'}

M.dependencies = {
  'nvim-lua/plenary.nvim',
  -- 'kyazdani42/nvim-web-devicons', -- not strictly required, but recommended
  'MunifTanjim/nui.nvim'
}

M.config = function()
  require('neo-tree').setup({
    enable_git_status = true,
    git_status_async = true,
    enable_diagnostics = true,
    sources = {
      'git_status',
      -- 'filesystem',
    },
    window = {
      width = 32,
    },
    source_selector = {
      winbar = true,
      -- separator_active = ' ',
    },
    default_component_configs = {
      icon = {
        folder_empty = '',
      },
      diagnostics = {
        highlights = {
          hint = 'DiagnosticHint',
          info = 'DiagnosticInfo',
          warn = 'DiagnosticWarn',
          error = 'DiagnosticError',
        },
      },
      git_status = {
        symbols = {
          added = '',
          deleted = '',
          modified = '',
          renamed = '',
          untracked = '',
          ignored = '',
          unstaged = '',
          staged = '',
          conflict = '',
        },
      },
    },
  })

  -- om.nnoremap('<C-G>', '<cmd>Neotree toggle reveal<cr>')
  -- om.inoremap('<C-G>', '<cmd>Neotree toggle reveal<cr>')
  om.nnoremap('<C-G>', '<cmd>Neotree toggle source=git_status reveal=true position=left<cr>')
  om.inoremap('<C-G>', '<cmd>Neotree toggle source=git_status reveal=true position=left<cr>')
  om.map_leader_keys({
    ng = '<cmd>Neotree toggle source=git_status reveal=true position=left<cr>'
  })     
end

return M