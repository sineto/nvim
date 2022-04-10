local M = {'windwp/nvim-autopairs'}

M.requires = {
  {'windwp/nvim-ts-autotag'}
}

M.config = function()
  require('nvim-ts-autotag').setup()
  require('nvim-autopairs').setup({
    map_cr = true, --  map <CR> on insert mode
    map_complete = true, -- it will auto insert `(` after select function or method item
    check_ts = true,
    fast_wrap = {
      map = '<A-e>',
      chars = { '{', '[', '(', '"', "'" },
      pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], '%s+', ''),
      end_key = '$',
      keys = 'qwertyuiopzxcvbnmasdfghjkl',
      check_comma = true,
      hightlight = 'Search'
    },
  })

  local filetypes = {
    'go'
    -- 'javascript',
    -- 'typescript',
    -- 'javascriptreact',
    -- 'typescriptreact',
  }

  local npairs = require('nvim-autopairs')
  local Rule = require('nvim-autopairs.rule')
  local cond = require('nvim-autopairs.conds')

  npairs.add_rules({
    Rule(' ', ' ', filetypes):with_pair(function (opts)
      local pair = opts.line:sub(opts.col, opts.col+2)
      return vim.tbl_contains({'{}'}, pair)
    end),
    Rule(' ', ' ')
      :with_pair(function (opts)
        local pair = opts.line:sub(opts.col - 1, opts.col)
        return vim.tbl_contains({ '()', '[]', '{}' }, pair)
      end),
    Rule('( ', ' )')
        :with_pair(function() return false end)
        :with_move(function(opts)
            return opts.prev_char:match('.%)') ~= nil
        end)
        :use_key(')'),
    Rule('{ ', ' }')
        :with_pair(function() return false end)
        :with_move(function(opts)
            return opts.prev_char:match('.%}') ~= nil
        end)
        :use_key('}'),
    Rule('[ ', ' ]')
        :with_pair(function() return false end)
        :with_move(function(opts)
            return opts.prev_char:match('.%]') ~= nil
        end)
        :use_key(']'),
    -- Rule('%(.*%)%s*%=>$', ' {  }', { 'typescript', 'typescriptreact', 'javascript' })
    --     :use_regex(true)
    --     :set_end_pair_length(2),

  })

  function _G.confirm()
    return npairs.check_break_line_char()
  end

  require('main.utils').map_opts('i', '<cr>', [[v:lua.confirm()]], {expr = true, noremap = true})
end

return M