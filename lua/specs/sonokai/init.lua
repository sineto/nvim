local M = {'sainnhe/sonokai'}

M.config = function()
  -- vim.cmd([[
  --   function! s:sonokai_custom() abort
  --     let s:configuration = sonokai#get_configuration()
  --     let l:palette = sonokai#get_palette(s:configuration.style, s:configuration.colors_override)

  --     call sonokai#highlight('NeoTreeNormal', l:palette.fg, l:palette.black)
  --     call sonokai#highlight('NeoTreeNormalNC', l:palette.fg, l:palette.black)
  --     call sonokai#highlight('NeoTreeSignColumn', l:palette.fg, l:palette.black)
  --     call sonokai#highlight('NeoTreeEndOfBuffer', l:palette.black, l:palette.black)
  --   endfunction
    
  --   augroup SonokaiCustom
  --     autocmd!
  --     autocmd ColorScheme sonokai call s:sonokai_custom()
  --   augroup END
  -- ]])

  vim.g.sonokai_style = 'shusia'
  vim.g.sonokai_better_performance = 1

  vim.cmd([[colorscheme sonokai]])
end

return M