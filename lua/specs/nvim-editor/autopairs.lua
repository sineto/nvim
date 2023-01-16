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

  local npairs = require('nvim-autopairs')

  function _G.confirm()
    return npairs.check_break_line_char()
  end

  om.map_opts('i', '<cr>', [[v:lua.confirm()]], {expr = true, noremap = true})
end

return M