local M = {'onsails/lspkind-nvim'}

M.config = function()
  require('lspkind').init({
    mode = 'symbol_text',
    -- symbol_map = {
    --   Text = "",
    --   Method = "",
    --   Function = "",
    --   Constructor = "⌘",
    --   Field = "ﰠ",
    --   Variable = "",
    --   Class = "ﴯ",
    --   Interface = "",
    --   Module = "",
    --   Property = "ﰠ",
    --   Unit = "塞",
    --   Value = "",
    --   Enum = "",
    --   Keyword = "廓",
    --   Snippet = "",
    --   Color = "",
    --   File = "",
    --   Reference = "",
    --   Folder = "",
    --   EnumMember = "",
    --   Constant = "",
    --   Struct = "פּ",
    --   Event = "",
    --   Operator = "",
    --   TypeParameter = "",
    -- }
  })
end

return M