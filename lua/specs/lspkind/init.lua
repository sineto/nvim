local M = {'onsails/lspkind-nvim'}

M.config = function()
	local resolve_name = function(icon, name)
		return string.format('%s (%s)', icon, name)
	end

	require('lspkind').init({
		mode = 'symbol_text',
		-- symbol_map = {
		-- 	Event = resolve_name('', 'event'),
		-- 	Reference = resolve_name('', 'reference'),
		-- 	Struct = resolve_name('', 'struct'),
		-- 	Class = resolve_name('', 'class'),
		-- 	Constructor = resolve_name('', 'constructor'),
		-- 	Method = resolve_name('', 'method'),
		-- 	Field = resolve_name('', 'field'),
		-- 	Property = resolve_name('', 'property'),
		-- 	Constant = resolve_name('', 'constant'),
		-- 	Variable = resolve_name('', 'variable'),
		-- 	Function = resolve_name('', 'function'),
		-- 	Interface = resolve_name('', 'interface'),
		-- 	Enum = resolve_name('', 'enum'),
		-- 	EnumMember = resolve_name('', 'enum member'),
		-- 	Module = resolve_name('', 'module'),
		-- 	Unit = resolve_name('', 'unit'),
		-- 	Value = resolve_name('', 'value'),
		-- 	Keyword = resolve_name('', 'keyword'),
		-- 	Operator = resolve_name('', 'operator'),
		-- 	TypeParameter = resolve_name('', 'type parameter'),
		-- 	Snippet = resolve_name('', 'snippet'),
		-- 	Color = resolve_name('', 'color'),
		-- 	File = resolve_name('', 'file'),
		-- 	Folder = resolve_name('', 'folder'),
		-- 	Text = resolve_name('', 'text'),
		-- },
		symbol_map = {
			Text = "",
			Method = "",
			Function = "",
			Constructor = "⌘",
			Field = "ﰠ",
			Variable = "",
			Class = "ﴯ",
			Interface = "",
			Module = "",
			Property = "ﰠ",
			Unit = "塞",
			Value = "",
			Enum = "",
			Keyword = "廓",
			Snippet = "",
			Color = "",
			File = "",
			Reference = "",
			Folder = "",
			EnumMember = "",
			Constant = "",
			Struct = "פּ",
			Event = "",
			Operator = "",
			TypeParameter = "",

			-- vscode icons
			-- Text = "",
			-- Method = "",
			-- Function = "",
			-- Constructor = "",
			-- Field = "",
			-- Variable = "",
			-- Class = "",
			-- Interface = "",
			-- Module = "",
			-- Property = "",
			-- Unit = "",
			-- Value = "",
			-- Enum = "",
			-- Keyword = "",
			-- Snippet = "",
			-- Color = "",
			-- File = "",
			-- Reference = "",
			-- Folder = "",
			-- EnumMember = "",
			-- Constant = "",
			-- Struct = "",
			-- Event = "",
			-- Operator = "",
			-- TypeParameter = "",
		}
	})
end

return M