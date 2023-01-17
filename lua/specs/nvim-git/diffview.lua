local M = {'sindrets/diffview.nvim'}

M.dependencies = {
  'nvim-lua/plenary.nvim',
  -- 'kyazdani42/nvim-web-devicons',
  {'TimUntersberger/neogit', dependencies = 'nvim-lua/plenary.nvim'},
}

M.config =  function()
  local cb = require('diffview.config').diffview_callback

  require('neogit').setup({
    disable_signs = false,
    disable_hint = false,
    disable_context_highlighting = false,
    disable_builtin_notifications = true,
    status = {
      recent_commit_count = 10,
    },
    -- customize displayed signs
    signs = {
      -- { CLOSED, OPENED }
      section = { "", "" },
      item = { "", "" },
      hunk = { "", "" },
    },
    integrations = {
      diffview = true
    },
    sections = {
      recent = {
        folded = false,
      },
    },
  })

  require('diffview').setup({
    diff_binaries = false,    -- Show diffs for binaries
    use_icons = true,        -- dependencies nvim-web-devicons
    file_panel = {
      win_config = {
        position = 'left',
        width = 32,
      }
    },
    key_bindings = {
      disable_defaults = false,                   -- Disable the default key bindings
      -- The `view` bindings are active in the diff buffers, only when the current
      -- tabpage is a Diffview.
      view = {
        ['<tab>']     = cb('select_next_entry'),  -- Open the diff for the next file
        ['<s-tab>']   = cb('select_prev_entry'),  -- Open the diff for the previous file
        ['<leader>e'] = cb('focus_files'),        -- Bring focus to the files panel
        ['<leader>b'] = cb('toggle_files'),       -- Toggle the files panel.
      },
      file_panel = {
        ['q']             = '<cmd>tabc<cr>',
        ['j']             = cb('next_entry'),         -- Bring the cursor to the next file entry
        ['<down>']        = cb('next_entry'),
        ['k']             = cb('prev_entry'),         -- Bring the cursor to the previous file entry.
        ['<up>']          = cb('prev_entry'),
        ['<cr>']          = cb('select_entry'),       -- Open the diff for the selected entry.
        ['o']             = cb('select_entry'),
        ['<2-LeftMouse>'] = cb('select_entry'),
        ['-']             = cb('toggle_stage_entry'), -- Stage / unstage the selected entry.
        ['S']             = cb('stage_all'),          -- Stage all entries.
        ['U']             = cb('unstage_all'),        -- Unstage all entries.
        ['R']             = cb('refresh_files'),      -- Update stats and entries in the file list.
        ['<tab>']         = cb('select_next_entry'),
        ['<s-tab>']       = cb('select_prev_entry'),
        ['<leader>e']     = cb('focus_files'),
        ['<leader>b']     = cb('toggle_files'),
      }
    }
  })
end

return M