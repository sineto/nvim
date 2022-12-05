-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/snio/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/snio/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/snio/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/snio/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/snio/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["diffview.nvim"] = {
    config = { "\27LJ\2\nò\6\0\0\t\0)\0a6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\0\0'\3\3\0B\1\2\0029\1\4\0015\3\5\0005\4\a\0005\5\6\0=\5\b\4=\4\t\0035\4\n\0005\5\f\0\18\6\0\0'\b\v\0B\6\2\2=\6\r\5\18\6\0\0'\b\14\0B\6\2\2=\6\15\5\18\6\0\0'\b\16\0B\6\2\2=\6\17\5\18\6\0\0'\b\18\0B\6\2\2=\6\19\5=\5\20\0045\5\22\0\18\6\0\0'\b\21\0B\6\2\2=\6\23\5\18\6\0\0'\b\21\0B\6\2\2=\6\24\5\18\6\0\0'\b\25\0B\6\2\2=\6\26\5\18\6\0\0'\b\25\0B\6\2\2=\6\27\5\18\6\0\0'\b\28\0B\6\2\2=\6\29\5\18\6\0\0'\b\28\0B\6\2\2=\6\30\5\18\6\0\0'\b\28\0B\6\2\2=\6\31\5\18\6\0\0'\b \0B\6\2\2=\6!\5\18\6\0\0'\b\"\0B\6\2\2=\6#\5\18\6\0\0'\b$\0B\6\2\2=\6%\5\18\6\0\0'\b&\0B\6\2\2=\6'\5\18\6\0\0'\b\v\0B\6\2\2=\6\r\5\18\6\0\0'\b\14\0B\6\2\2=\6\15\5\18\6\0\0'\b\16\0B\6\2\2=\6\17\5\18\6\0\0'\b\18\0B\6\2\2=\6\19\5=\5\t\4=\4(\3B\1\2\1K\0\1\0\17key_bindings\6R\18refresh_files\6U\16unstage_all\6S\14stage_all\6-\23toggle_stage_entry\18<2-LeftMouse>\6o\t<cr>\17select_entry\t<up>\6k\15prev_entry\v<down>\6j\1\0\0\15next_entry\tview\14<leader>b\17toggle_files\14<leader>e\16focus_files\f<s-tab>\22select_prev_entry\n<tab>\1\0\0\22select_next_entry\1\0\1\21disable_defaults\1\15file_panel\15win_config\1\0\0\1\0\1\nwidth\3\25\1\0\2\14use_icons\2\18diff_binaries\1\nsetup\rdiffview\22diffview_callback\20diffview.config\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["fidget.nvim"] = {
    config = { "\27LJ\2\nn\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\vwindow\1\0\1\nblend\3\0\ttext\1\0\0\1\0\1\tdone\bÔÅò\nsetup\vfidget\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["filetype.nvim"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/filetype.nvim",
    url = "https://github.com/nathom/filetype.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  fzf = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["fzf.vim"] = {
    cond = { "\27LJ\2\nJ\0\0\3\0\4\1\v6\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\b\0\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\bfzf\15executable\afn\bvim\2\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/opt/fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  ["git-actions"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/git-actions",
    url = "/home/snio/.config/nvim/bundle/git-actions"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nó\4\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\4\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\ttext\bÔÉó\vlinehl\21GitSignsChangeLn\14topdelete\1\0\4\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\ttext\bÔÉò\vlinehl\21GitSignsDeleteLn\vdelete\1\0\4\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\ttext\bÔÉó\vlinehl\21GitSignsDeleteLn\vchange\1\0\4\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\ttext\b‚îÉ\vlinehl\21GitSignsChangeLn\badd\1\0\0\1\0\4\ahl\16GitSignsAdd\nnumhl\18GitSignsAddNr\ttext\b‚îÉ\vlinehl\18GitSignsAddLn\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["gv.vim"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/gv.vim",
    url = "https://github.com/junegunn/gv.vim"
  },
  ["hlargs.nvim"] = {
    config = { "\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vhlargs\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/hlargs.nvim",
    url = "https://github.com/m-demare/hlargs.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n†\1\0\0\3\0\b\0\0156\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\4\0006\0\5\0'\2\6\0B\0\2\0029\0\a\0004\2\0\0B\0\2\1K\0\1\0\nsetup\21indent_blankline\frequire$indent_blankline_use_treesitter\6:\26indent_blankline_char\6g\bvim\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lazygit.nvim"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/lazygit.nvim",
    url = "https://github.com/kdheepak/lazygit.nvim"
  },
  ["lsp-inlayhints.nvim"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/lsp-inlayhints.nvim",
    url = "https://github.com/lvimuser/lsp-inlayhints.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\2\nK\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\ffix_pos\2\nsetup\18lsp_signature\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    config = { "\27LJ\2\n5\0\2\a\0\3\0\0066\2\0\0009\2\1\2'\4\2\0\18\5\0\0\18\6\1\0D\2\4\0\f%s (%s)\vformat\vstringå\3\1\0\5\0\a\0\n3\0\0\0006\1\1\0'\3\2\0B\1\2\0029\1\3\0015\3\4\0005\4\5\0=\4\6\3B\1\2\1K\0\1\0\15symbol_map\1\0\25\rConstant\bÔ£ø\tEnum\bÔÖù\vStruct\bÔ≠Ñ\nValue\bÔ¢ü\nEvent\bÔÉß\tUnit\bÔ•¨\rProperty\bÔ∞†\rOperator\bÔöî\vModule\bÔ£í\18TypeParameter\5\14Interface\bÔÉ®\nClass\bÔ¥Ø\rVariable\bÔúõ\nField\bÔ∞†\16Constructor\b‚åò\15EnumMember\bÔÖù\rFunction\bÔûî\vFolder\bÔÅª\vMethod\bÔö¶\14Reference\bÔúÜ\tText\bÔÉâ\tFile\bÔúò\nColor\bÔ£ó\fSnippet\bÔô∞\fKeyword\bÔ®ã\1\0\1\tmode\16symbol_text\tinit\flspkind\frequire\0\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\nÖ\5\0\0\a\0\18\0$6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0029\1\5\0009\2\6\0\18\3\1\0'\5\a\0'\6\b\0B\3\3\1\18\3\2\0'\5\a\0'\6\t\0B\3\3\1\18\3\1\0'\5\n\0'\6\v\0B\3\3\1\18\3\1\0'\5\f\0'\6\r\0B\3\3\1\18\3\1\0'\5\14\0'\6\15\0B\3\3\1\18\3\1\0'\5\16\0'\6\17\0B\3\3\1K\0\1\0004<cmd>lua require(\"lspsaga.rename\").rename()<cr>\agrI<cmd>lua require(\"lspsaga.diagnostic\").show_cursor_diagnostics()<cr>\15<leader>ccC<cmd>lua require(\"lspsaga.signaturehelp\").signature_help()<cr>\ags=<cmd>lua require(\"lspsaga.hover\").render_hover_doc()<cr>\6KD:<C-U>lua require(\"lspsaga.codeaction\").range_code_action()<cr>=<cmd>lua require(\"lspsaga.codeaction\").code_action()<cr>\15<leader>ca\rxnoremap\rnnoremap\15core.utils\1\0\2\21code_action_icon\5\29use_saga_diagnostic_sign\1\18init_lsp_saga\flspsaga\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/tami5/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nÜ\1\0\0\3\1\b\0\16-\0\0\0006\1\0\0009\1\1\0019\1\2\1B\1\1\0029\1\3\0018\0\1\0\6\0\4\0X\1\4Ä\6\0\5\0X\1\2Ä\a\0\6\0X\1\1ÄL\0\2\0'\1\a\0L\1\2\0\1¿\5\14--SHELL--\16--COMMAND--\15--NORMAL--\tmode\18nvim_get_mode\bapi\bvimK\0\0\4\0\5\0\t'\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0B\1\2\2'\2\4\0&\0\2\0L\0\2\0\6|\24nvim_win_get_number\bapi\bvim\6W8\0\0\2\0\4\0\6'\0\0\0006\1\1\0009\1\2\0019\1\3\1&\0\1\0L\0\2\0\18gitsigns_head\6b\bvim\tÓú• |\0\0\3\0\b\0\0146\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\bÄ5\1\4\0009\2\3\0=\2\3\0019\2\5\0=\2\6\0019\2\a\0=\2\a\1L\1\2\0K\0\1\0\fremoved\rmodified\fchanged\1\0\0\nadded\25gitsigns_status_dict\6b\bvimi\0\0\6\0\6\0\r6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3'\2\4\0\18\3\0\0'\4\5\0\18\5\1\0&\2\5\2L\2\2\0\v, Col \bLn \24nvim_win_get_cursor\bapi\bvim\vunpack7\0\0\3\0\3\0\0056\0\0\0009\0\1\0009\0\2\0)\2\0\0D\0\2\0\24nvim_buf_line_count\bapi\bvimŸ\n\1\0\15\0006\0Y6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0025\1\3\0005\2\4\0005\3\5\0=\3\6\0025\3\a\0=\3\b\0026\3\t\0=\3\n\0025\3\v\0005\4\f\0=\4\r\0035\4\14\0=\4\15\0035\4\19\0005\5\17\0009\6\16\0:\6\1\6=\6\18\5=\5\20\0045\5\22\0009\6\21\0:\6\1\6=\6\18\5=\5\23\4=\4\24\0035\4\25\0=\4\b\0033\4\26\0007\4\27\0003\4\28\0003\5\29\0003\6\30\0003\a\31\0003\b \0006\t\0\0'\v!\0B\t\2\0029\t\"\t5\v$\0005\f#\0=\f%\v5\f&\0004\r\3\0>\5\1\r=\r'\f4\r\3\0>\3\1\r=\r(\f4\r\3\0006\14\27\0>\14\1\r=\r)\f5\r*\0=\r+\f5\r,\0=\r-\f5\r.\0=\r/\f=\f\15\v5\f0\0004\r\3\0>\5\1\r=\r'\f4\r\3\0>\3\1\r=\r(\f4\r\3\0006\14\27\0>\14\1\r=\r)\f5\r1\0=\r+\f5\r2\0=\r-\f4\r\0\0=\r/\f=\f3\v4\f\0\0=\f4\v4\f\0\0=\f5\vB\t\2\0012\0\0ÄK\0\1\0\15extensions\ftabline\22inactive_sections\1\2\0\0\rlocation\1\3\0\0\rfiletype\rencoding\1\0\0\14lualine_z\1\2\0\0\rprogress\14lualine_y\1\2\0\0\rlocation\14lualine_x\1\3\0\0\rfiletype\rencoding\14lualine_c\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\1\0\3\ntheme\fsonokai\25component_separators\5\23section_separators\5\nsetup\flualine\0\0\0\0\0\vmode_m\0\1\0\2\nerror\tÔôò \twarn\tÔÅ± \22diagnostics_color\twarn\1\0\0\vorange\nerror\1\0\0\afg\1\0\0\bred\rsections\1\3\0\0\nerror\twarn\fsources\1\2\0\0\20nvim_diagnostic\1\2\1\0\16diagnostics\19always_visible\2\vsource\16diff_source\fsymbols\1\0\3\nadded\6+\fremoved\6-\rmodified\6~\15diff_color\1\0\3\nadded\fDiffAdd\fremoved\15DiffDelete\rmodified\15DiffChange\1\2\1\0\tdiff\fcolored\2\1\0\"\6S\vS-LINE\aic\vINSERT\tÔøΩs\fV-BLOCK\bÔøΩ\fS-BLOCK\6c\16--COMMAND--\aVs\vV-LINE\6s\vSELECT\6V\vV-LINE\avs\vVISUAL\ano\14O-PENDING\bniV\15--NORMAL--\bniR\15--NORMAL--\bniI\15--NORMAL--\nnoÔøΩ\14O-PENDING\bnoV\14O-PENDING\bnov\14O-PENDING\bRvx\14V-REPLACE\6v\vVISUAL\6t\rTERMINAL\6i\vINSERT\6R\fREPLACE\6r\fREPLACE\6!\14--SHELL--\ant\15--NORMAL--\ar?\fCONFIRM\arm\tMORE\ace\aEX\acv\aEX\6n\15--NORMAL--\bRvc\14V-REPLACE\aRv\14V-REPLACE\aRx\fREPLACE\aRc\fREPLACE\aix\vINSERT\vcolors\15core.utils\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/snio/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    config = { "\27LJ\2\nh\0\1\5\1\6\0\14-\1\0\0008\1\0\0019\1\0\0015\3\4\0006\4\1\0009\4\2\0049\4\3\4=\4\3\0036\4\1\0009\4\2\0049\4\5\4=\4\5\3B\1\2\1K\0\1\0\0¿\17capabilities\1\0\0\14on_attach\blsp\aom\nsetup∞\1\0\1\a\0\t\0\0239\1\0\0\15\0\1\0X\2\4Ä9\1\0\0009\1\1\1\14\0\1\0X\1\1ÄK\0\1\0009\1\2\0006\2\3\0009\2\4\0029\2\5\0029\4\0\0009\4\1\4B\2\2\0026\3\6\0'\5\a\0B\3\2\0029\3\b\3\18\5\2\0\18\6\1\0B\3\3\1K\0\1\0\14on_attach\19lsp-inlayhints\frequire\21get_client_by_id\blsp\bvim\bbuf\14client_id\tdataÉ\3\1\2\a\1\15\0!9\2\0\0+\3\1\0=\3\1\0029\2\0\0+\3\1\0=\3\2\0029\2\0\0+\3\1\0=\3\3\0029\2\0\0009\2\4\2\15\0\2\0X\3\5Ä-\2\0\0009\2\5\2\18\4\0\0\18\5\1\0B\2\3\0016\2\6\0009\2\a\0029\2\b\2'\4\t\0004\5\0\0B\2\3\0016\2\6\0009\2\a\0029\2\n\2'\4\v\0005\5\f\0003\6\r\0=\6\14\5B\2\3\1K\0\1\0\0\0\rcallback\0\1\0\1\ngroup\25LspAttach_inlayhints\14LspAttach\24nvim_create_autocmd\25LspAttach_inlayhints\24nvim_create_augroup\bapi\bvim\14on_attach\22inlayHintProvider$documentRangeFormattingProvider\31documentFormattingProvider\24document_formatting\24server_capabilitiesÛ\b\1\0\6\3\28\0/4\0\0\0004\1\0\0003\2\0\0-\3\1\0\a\3\1\0X\3\14Ä5\3\3\0005\4\2\0=\4\4\3\18\0\3\0005\3\b\0005\4\6\0005\5\5\0=\5\a\4=\4\t\0035\4\v\0005\5\n\0=\5\a\4=\4\f\3\18\1\3\0-\3\1\0\a\3\r\0X\3\1Ä5\0\14\0-\3\1\0\a\3\15\0X\3\6Ä5\3\19\0005\4\17\0005\5\16\0=\5\18\4=\4\15\3\18\1\3\0-\3\2\0-\4\1\0008\3\4\0039\3\20\0035\5\21\0=\0\22\5=\2\23\5=\1\24\5B\3\2\0016\3\25\0009\3\26\3'\5\27\0B\3\2\1K\0\1\0\2¿\a¿\0¿\29do User LspAttachBuffers\bcmd\bvim\rsettings\14on_attach\17init_options\1\0\0\nsetup\1\0\0\nhints\1\0\0\1\0\a\24assignVariableTypes\2\23rangeVariableTypes\2\19parameterNames\2\27functionTypeParameters\2\19constantValues\2\26compositeLiteralTypes\2\27compositeLiteralFields\2\ngopls\1\0\1\venable\1\vdenols\15javascript\1\0\0\1\0\a:includeInlayParameterNameHintsWhenArgumentMatchesName\1#includeInlayParameterNameHints\ball%includeInlayEnumMemberValueHints\2,includeInlayFunctionLikeReturnTypeHints\2-includeInlayPropertyDeclarationTypeHints\2\"includeInlayVariableTypeHints\2+includeInlayFunctionParameterTypeHints\2\15typescript\1\0\0\15inlayHints\1\0\0\1\0\a:includeInlayParameterNameHintsWhenArgumentMatchesName\1#includeInlayParameterNameHints\ball%includeInlayEnumMemberValueHints\2,includeInlayFunctionLikeReturnTypeHints\2-includeInlayPropertyDeclarationTypeHints\2\"includeInlayVariableTypeHints\2+includeInlayFunctionParameterTypeHints\2\16preferences\1\0\0\1\0\1$importModuleSpecifierPreference\21project-relative\rtsserver\0°\5\1\0\v\0\17\0,6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0026\3\4\0009\3\5\0035\4\a\0=\4\6\0034\3\0\0006\4\b\0009\4\t\4\18\6\3\0003\a\n\0B\4\3\0016\4\v\0006\6\4\0009\6\5\0069\6\6\6B\4\2\4H\a\3Ä3\t\f\0<\t\a\0032\a\0ÄF\a\3\3R\a˚\1279\4\r\0015\6\15\0006\a\14\0006\t\4\0009\t\5\t9\t\6\tB\a\2\2=\a\14\6B\4\2\0019\4\16\1\18\6\3\0B\4\2\0012\0\0ÄK\0\1\0\19setup_handlers\1\0\1\27automatic_installation\2\21ensure_installed\nsetup\0\npairs\0\vinsert\ntable\1\0\14\14ansiblels\28ansible-language-server\16terraformls\17terraform-ls\ngopls\ngopls\vjsonls\rjson-lsp\16tailwindcss tailwindcss-language-server\ncssls\fcss-lsp\vdenols\tdeno\rtsserver\31typescript-language-server\vyamlls\25yaml-language-server\npylsp\22python-lsp-server\rdockerls\31dockerfile-language-server\vbashls\25bash-language-server\veslint\15eslint-lsp\vtflint\vtflint\fservers\blsp\aom\19lsp-inlayhints\20mason-lspconfig\14lspconfig\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/snio/.local/share/nvim/site/pack/packer/opt/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    after = { "mason-lspconfig.nvim", "null-ls.nvim" },
    config = { "\27LJ\2\nØ\t\0\2\a\1\21\0/6\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0B\2\4\0019\2\5\0009\2\6\2\15\0\2\0X\3\4Ä6\2\0\0009\2\a\2'\4\b\0B\2\2\0019\2\5\0009\2\t\2\15\0\2\0X\3\6Ä6\2\0\0009\2\1\0029\2\n\2'\4\v\0+\5\1\0B\2\3\1-\2\0\0009\2\f\2\18\4\1\0004\5\t\0005\6\r\0>\6\1\0055\6\14\0>\6\2\0055\6\15\0>\6\3\0055\6\16\0>\6\4\0055\6\17\0>\6\5\0055\6\18\0>\6\6\0055\6\19\0>\6\a\0055\6\20\0>\6\b\5B\2\3\1K\0\1\0\0¿\1\4\0\0\6n\14<space>ccO<cmd>lua vim.diagnostic.open_float(nil, {focus=false, scope=\"cursor\"})<CR>\1\4\0\0\6n\r<space>f*<cmd>lua vim.lsp.buf.formatting()<CR>\1\4\0\0\6n\14<space>ca+<cmd>lua vim.lsp.buf.code_action()<CR>\1\4\0\0\6n\14<space>rn&<cmd>lua vim.lsp.buf.rename()<CR>\1\4\0\0\6n\r<space>D/<cmd>lua vim.lsp.buf.type_definition()<CR>\1\4\0\0\6n\agi.<cmd>lua vim.lsp.buf.implementation()<CR>\1\4\0\0\6n\agd*<cmd>lua vim.lsp.buf.definition()<CR>\1\4\0\0\6n\agD+<cmd>lua vim.lsp.buf.declaration()<CR>\16bufmap_keys˘\1        augroup lsp_document_highlight\n          autocmd! * <buffer>\n          autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()\n          autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()\n        augroup END\n      \14nvim_exec\22documentHighlightõ\1        augroup LspFormatting\n          autocmd! * <buffer>\n          autocmd BufWritePre <buffer> lua vim.lsp.buf.format()\n        augroup END\n      \bcmd\31documentFormattingProvider\24server_capabilities\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvimÊ\a\1\0\f\0.\0d6\0\0\0004\1\0\0=\1\1\0006\0\2\0'\2\3\0B\0\2\0025\1\4\0006\2\5\0\18\4\1\0B\2\2\4H\5\fÄ'\a\6\0\18\b\5\0&\a\b\a6\b\a\0009\b\b\b9\b\t\b\18\n\a\0005\v\n\0=\6\v\v=\a\f\v=\a\r\vB\b\3\1F\5\3\3R\5Ú\1276\2\2\0'\4\14\0B\2\2\0029\2\15\2B\2\1\0016\2\2\0'\4\16\0B\2\2\0029\2\15\0025\4\17\0006\5\a\0009\5\18\0059\5\19\0059\5\20\5=\5\21\0045\5\23\0005\6\22\0=\6\24\5=\5\25\4B\2\2\0016\2\a\0009\2\1\0029\2\26\0029\2\27\2B\2\1\0026\3\0\0009\3\1\0036\4\2\0'\6\29\0B\4\2\0029\4\30\4\18\6\2\0B\4\2\2=\4\28\0036\3\0\0009\3\1\0039\3\28\0039\3\31\0039\3 \0039\3!\3+\4\2\0=\4\"\0036\3\0\0009\3\1\0039\3\28\0039\3\31\0039\3 \0039\3!\0035\4%\0005\5$\0=\5&\4=\4#\0036\3\0\0009\3\1\0039\3\28\0039\3\31\0035\4+\0005\5*\0006\6\a\0009\6(\0069\b\31\0029\b'\b9\b#\b9\b&\b5\t)\0B\6\3\2=\6&\5=\5#\4=\4'\0036\3\0\0009\3\1\0033\4-\0=\4,\0032\0\0ÄK\0\1\0\0\14on_attach\1\0\0\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\16list_extend\15codeAction\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\25default_capabilities\17cmp_nvim_lsp\17capabilities\29make_client_capabilities\rprotocol\aui\nicons\1\0\0\1\0\3\20package_pending\bÔÇ©\24package_uninstalled\bÔÑå\22package_installed\bÔÅò\14log_level\nDEBUG\vlevels\blog\1\0\1\30max_concurrent_installers\3\n\nmason\nsetup\19lsp-inlayhints\nnumhl\vtexthl\ttext\1\0\0\16sign_define\afn\bvim\19DiagnosticSign\npairs\1\0\4\tHint\tÔÇ£ \nError\tÔôò \tInfo\tÔüª \tWarn\tÔÅ± \15core.utils\frequire\blsp\aom\0" },
    loaded = true,
    only_config = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["move.nvim"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/move.nvim",
    url = "https://github.com/fedepujol/move.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\nÏ\1\0\1\b\0\v\0\0309\1\0\0\18\3\1\0009\1\1\1B\1\2\0029\2\2\1\6\2\3\0X\2\5Ä\18\4\1\0009\2\4\1B\2\2\2\15\0\2\0X\3\nÄ\18\4\1\0009\2\5\1B\2\2\2\15\0\2\0X\3\5Ä9\2\6\0009\2\a\2\18\4\0\0B\2\2\1X\2\aÄ6\2\b\0009\2\t\2\18\4\0\0\18\a\1\0009\5\n\1B\5\2\0A\2\1\1K\0\1\0\18get_parent_id\15focus_node\rrenderer\16toggle_node\rcommands\16is_expanded\17has_children\14directory\ttype\rget_node\ttree—\2\0\1\b\0\14\0*9\1\0\0\18\3\1\0009\1\1\1B\1\2\0029\2\2\1\6\2\3\0X\2\5Ä\18\4\1\0009\2\4\1B\2\2\2\15\0\2\0X\3\29Ä\18\4\1\0009\2\5\1B\2\2\2\14\0\2\0X\2\16Ä9\2\2\1\a\2\3\0X\2\bÄ6\2\6\0'\4\a\0B\2\2\0029\2\b\2\18\4\0\0\18\5\1\0B\2\3\1X\2\rÄ9\2\t\0009\2\n\2\18\4\0\0B\2\2\1X\2\bÄ6\2\v\0009\2\f\2\18\4\0\0\18\a\1\0009\5\r\1B\5\2\2:\5\1\5B\2\3\1K\0\1\0\18get_child_ids\15focus_node\rrenderer\16toggle_node\rcommands\21toggle_directory neo-tree.sources.filesystem\frequire\16is_expanded\17has_children\14directory\ttype\rget_node\ttree›\3\1\0\n\0\27\0(3\0\0\0003\1\1\0006\2\2\0'\4\3\0B\2\2\0029\2\4\0025\4\f\0005\5\5\0005\6\6\0=\0\a\6=\1\b\6=\0\t\6=\1\n\6=\6\v\5=\5\r\0045\5\17\0005\6\14\0005\a\15\0=\a\16\6=\6\18\5=\5\19\4B\2\2\0016\2\2\0'\4\20\0B\2\2\0029\3\21\0029\4\22\0029\5\23\2\18\6\4\0'\b\24\0'\t\25\0B\6\3\1\18\6\5\0'\b\24\0'\t\25\0B\6\3\1\18\6\3\0005\b\26\0B\6\2\1K\0\1\0\1\0\1\6b\31<cmd>NeoTreeShowToggle<cr>\31<cmd>NeoTreeShowToggle<cr>\n<C-b>\rinoremap\rnnoremap\20map_leader_keys\15core.utils\15filesystem\19filtered_items\1\0\0\15never_show\1\6\0\0\t.git\19.tool-versions\n.idea\15.terraform\17node_modules\1\0\2\20hide_gitignored\1\fvisible\2\vwindow\1\0\0\rmappings\f<Right>\v<Left>\6l\6h\1\0\0\1\0\1\nwidth\3 \nsetup\rneo-tree\frequire\0\0\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\nK\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\16hide_cursor\1\nsetup\14neoscroll\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["null-ls.nvim"] = {
    after = { "mason-lspconfig.nvim" },
    config = { "\27LJ\2\né\4\0\0\6\0\28\0B6\0\0\0'\2\1\0B\0\2\0024\1\r\0009\2\2\0009\2\3\0029\2\4\2>\2\1\0019\2\2\0009\2\3\0029\2\5\2>\2\2\0019\2\2\0009\2\6\0029\2\a\2>\2\3\0019\2\2\0009\2\6\0029\2\b\2>\2\4\0019\2\2\0009\2\6\0029\2\t\2>\2\5\0019\2\2\0009\2\6\0029\2\n\2>\2\6\0019\2\2\0009\2\6\0029\2\v\2>\2\a\0019\2\2\0009\2\6\0029\2\f\2>\2\b\0019\2\2\0009\2\6\0029\2\r\0029\2\14\0025\4\16\0005\5\15\0=\5\17\4B\2\2\2>\2\t\0019\2\2\0009\2\18\0029\2\19\2>\2\n\0019\2\2\0009\2\18\0029\2\20\2>\2\v\0019\2\2\0009\2\18\0029\2\21\2>\2\f\0019\2\22\0005\4\23\0=\1\24\0046\5\25\0009\5\26\0059\5\27\5=\5\27\4B\2\2\1K\0\1\0\14on_attach\blsp\aom\fsources\1\0\0\nsetup\16ansiblelint\18golangci_lint\vpylint\16diagnostics\14filetypes\1\0\0\1\5\0\0\14terraform\atf\bhcl\vtfvars\twith\18terraform_fmt\fgolines\14goimports\ngofmt\rautopep8\rdeno_fmt\nshfmt\15formatting\veslint\16refactoring\17code_actions\rbuiltins\fnull-ls\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/snio/.local/share/nvim/site/pack/packer/opt/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["numb.nvim"] = {
    config = { "\27LJ\2\n2\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\tnumb\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/numb.nvim",
    url = "https://github.com/nacro90/numb.nvim"
  },
  ["nvim-autopairs"] = {
    after = { "tabout.nvim" },
    config = { "\27LJ\2\n]\0\1\6\0\6\1\f9\1\0\0\18\3\1\0009\1\1\0019\4\2\0009\5\2\0\22\5\0\5B\1\4\0026\2\3\0009\2\4\0025\4\5\0\18\5\1\0D\2\3\0\1\2\0\0\a{}\17tbl_contains\bvim\bcol\bsub\tline\4c\0\1\6\0\6\1\f9\1\0\0\18\3\1\0009\1\1\0019\4\2\0\23\4\0\0049\5\2\0B\1\4\0026\2\3\0009\2\4\0025\4\5\0\18\5\1\0D\2\3\0\1\4\0\0\a()\a[]\a{}\17tbl_contains\bvim\bcol\bsub\tline\2\15\0\0\1\0\0\0\2+\0\1\0L\0\2\0G\0\1\5\0\3\0\v9\1\0\0\18\3\1\0009\1\1\1'\4\2\0B\1\3\2\v\1\0\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\b.%)\nmatch\14prev_char\15\0\0\1\0\0\0\2+\0\1\0L\0\2\0G\0\1\5\0\3\0\v9\1\0\0\18\3\1\0009\1\1\1'\4\2\0B\1\3\2\v\1\0\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\b.%}\nmatch\14prev_char\15\0\0\1\0\0\0\2+\0\1\0L\0\2\0G\0\1\5\0\3\0\v9\1\0\0\18\3\1\0009\1\1\1'\4\2\0B\1\3\2\v\1\0\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\b.%]\nmatch\14prev_char+\0\0\2\1\1\0\3-\0\0\0009\0\0\0D\0\1\0\1¿\26check_break_line_charú\a\1\0\f\0001\1w6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0005\2\4\0005\3\5\0005\4\6\0=\4\a\0036\4\b\0009\4\t\4'\6\n\0'\a\v\0'\b\f\0B\4\4\2=\4\r\3=\3\14\2B\0\2\0015\0\15\0006\1\0\0'\3\3\0B\1\2\0026\2\0\0'\4\16\0B\2\2\0026\3\0\0'\5\17\0B\3\2\0029\4\18\0014\6\6\0\18\a\2\0'\t\19\0'\n\19\0\18\v\0\0B\a\4\2\18\t\a\0009\a\20\a3\n\21\0B\a\3\2>\a\1\6\18\a\2\0'\t\19\0'\n\19\0B\a\3\2\18\t\a\0009\a\20\a3\n\22\0B\a\3\2>\a\2\6\18\a\2\0'\t\23\0'\n\24\0B\a\3\2\18\t\a\0009\a\20\a3\n\25\0B\a\3\2\18\t\a\0009\a\26\a3\n\27\0B\a\3\2\18\t\a\0009\a\28\a'\n\29\0B\a\3\2>\a\3\6\18\a\2\0'\t\30\0'\n\31\0B\a\3\2\18\t\a\0009\a\20\a3\n \0B\a\3\2\18\t\a\0009\a\26\a3\n!\0B\a\3\2\18\t\a\0009\a\28\a'\n\"\0B\a\3\2>\a\4\6\18\a\2\0'\t#\0'\n$\0B\a\3\2\18\t\a\0009\a\20\a3\n%\0B\a\3\2\18\t\a\0009\a\26\a3\n&\0B\a\3\2\18\t\a\0009\a\28\a'\n'\0B\a\3\0?\a\0\0B\4\2\0016\4(\0003\5*\0=\5)\0046\4\0\0'\6+\0B\4\2\0029\4,\4'\6-\0'\a.\0'\b/\0005\t0\0B\4\5\0012\0\0ÄK\0\1\0\1\0\2\texpr\2\fnoremap\2\20v:lua.confirm()\t<cr>\6i\rmap_opts\15core.utils\0\fconfirm\a_G\6]\0\0\a ]\a[ \6}\0\0\a }\a{ \6)\fuse_key\0\14with_move\0\a )\a( \0\0\14with_pair\6 \14add_rules\25nvim-autopairs.conds\24nvim-autopairs.rule\1\2\0\0\ago\14fast_wrap\fpattern\5\b%s+\25 [%'%\"%)%>%]%)%}%,] \tgsub\vstring\nchars\1\6\0\0\6{\6[\6(\6\"\6'\1\0\5\15hightlight\vSearch\16check_comma\2\tkeys\31qwertyuiopzxcvbnmasdfghjkl\fend_key\6$\bmap\n<A-e>\1\0\3\rcheck_ts\2\17map_complete\2\vmap_cr\2\19nvim-autopairs\nsetup\20nvim-ts-autotag\frequire\vÄÄ¿ô\4\0" },
    loaded = true,
    only_config = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim˙\1\0\1\5\1\n\1 -\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\22Ä6\1\2\0009\1\3\0019\1\4\1)\3\1\0B\1\2\2\t\1\0\0X\1\5Ä6\1\5\0'\3\6\0'\4\a\0B\1\3\1X\1\nÄ6\1\b\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\t\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\rcomplete\21has_words_before\5!<Plug>(vsnip-expand-or-jump)\ffeedkey\20vsnip#available\afn\bvim\21select_next_item\fvisible\2Æ\1\0\0\4\1\b\1\21-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0B\0\1\1X\0\vÄ6\0\2\0009\0\3\0009\0\4\0)\2ˇˇB\0\2\2\t\0\0\0X\0\4Ä6\0\5\0'\2\6\0'\3\a\0B\0\3\1K\0\1\0\0¿\5\28<Plug>(vsnip-jump-prev)\ffeedkey\19vsnip#jumpable\afn\bvim\21select_prev_item\fvisible\2√\a\1\0\v\0006\0j6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\2'\3\6\0=\3\5\0029\2\a\0005\4\v\0005\5\t\0003\6\b\0=\6\n\5=\5\f\0049\5\r\0009\5\14\0054\a\3\0005\b\15\0>\b\1\a5\b\16\0>\b\2\a4\b\3\0005\t\17\0>\t\1\b5\t\18\0>\t\2\bB\5\3\2=\5\14\0045\5\21\0009\6\19\0015\b\20\0B\6\2\2=\6\22\5=\5\23\0045\5\27\0009\6\24\0009\b\24\0009\b\25\bB\b\1\0025\t\26\0B\6\3\2=\6\28\0059\6\r\0009\6\29\6=\6\30\0059\6\24\0005\b \0009\t\24\0009\t\31\tB\t\1\2=\t!\b9\t\24\0009\t\"\tB\t\1\2=\t#\bB\6\2\2=\6$\0059\6\24\0009\6%\0065\b&\0B\6\2\2=\6'\0059\6\24\0003\b(\0005\t)\0B\6\3\2=\6*\0059\6\24\0003\b+\0005\t,\0B\6\3\2=\6-\5=\5\24\4B\2\2\0015\2.\0006\3\3\0009\3/\0039\0030\3\18\4\3\0'\6!\0'\a1\0'\b2\0\18\t\2\0B\4\5\1\18\4\3\0'\0063\0'\a1\0'\b2\0\18\t\2\0B\4\5\1\18\4\3\0'\6!\0'\a4\0'\b5\0\18\t\2\0B\4\5\1\18\4\3\0'\0063\0'\a4\0'\b5\0\18\t\2\0B\4\5\0012\0\0ÄK\0\1\0Bvsnip#available(1) ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'\n<C-l>\6s:vsnip#expandable() ? '<Plug>(vsnip-expand)' : '<C-j>'\n<C-j>\20nvim_set_keymap\bapi\1\0\1\texpr\2\n<C-p>\1\3\0\0\6i\6s\0\n<C-n>\1\3\0\0\6i\6s\0\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\n<C-y>\fdisable\14<C-Space>\1\0\0\1\3\0\0\6i\6c\rcomplete\fmapping\15formatting\vformat\1\0\0\1\0\2\tmode\16symbol_text\14with_text\2\15cmp_format\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup%/home/snio/.config/nvim/snippets\22vsnip_snippet_dir\6g\bvim\flspkind\bcmp\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-cokeline"] = {
    config = { "\27LJ\2\n\\\0\1\5\2\4\0\r9\1\0\0\15\0\1\0X\2\5Ä-\1\0\0009\1\1\1:\1\1\1\14\0\1\0X\2\4Ä-\1\1\0'\3\2\0'\4\3\0B\1\3\2L\1\2\0\0¿\2¿\afg\fComment\vyellow\15is_focused*\0\1\3\0\3\0\5'\1\0\0009\2\1\0009\2\2\2&\1\2\1L\1\2\0\ticon\fdevicon\6 !\0\1\2\0\2\0\0039\1\0\0009\1\1\1L\1\2\0\ncolor\fdevicon \0\1\3\0\2\0\0049\1\0\0'\2\1\0&\1\2\1L\1\2\0\a: \nindex\29\0\1\2\0\1\0\0029\1\0\0L\1\2\0\18unique_prefix\"\0\1\3\0\2\0\0049\1\0\0'\2\1\0&\1\2\1L\1\2\0\6 \rfilename5\0\1\2\0\3\0\a9\1\0\0\15\0\1\0X\2\2Ä'\1\1\0L\1\2\0'\1\2\0L\1\2\0\5\t‚óè \16is_modified7\0\1\2\1\2\0\a9\1\0\0\15\0\1\0X\2\3Ä-\1\0\0009\1\1\1:\1\1\1L\1\2\0\0¿\vorange\15is_focused“\a\1\0\14\0003\0r6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0026\1\0\0'\3\1\0B\1\2\0029\1\3\0016\2\0\0'\4\4\0B\2\2\0029\2\5\2\18\3\1\0'\5\6\0'\6\a\0B\3\3\1\18\3\1\0'\5\b\0'\6\t\0B\3\3\1\18\3\1\0'\5\n\0'\6\v\0B\3\3\1\18\3\1\0'\5\f\0'\6\r\0B\3\3\1\18\3\1\0'\5\14\0'\6\15\0B\3\3\1\18\3\1\0'\5\16\0'\6\17\0B\3\3\1)\3\1\0)\4\t\0)\5\1\0M\3\rÄ\18\a\1\0'\t\18\0\18\v\t\0009\t\19\t\18\f\6\0B\t\3\2'\n\20\0\18\f\n\0009\n\19\n\18\r\6\0B\n\3\0A\a\1\1O\3Û\1276\3\0\0'\5\21\0B\3\2\0029\3\22\0035\5\28\0005\6\24\0003\a\23\0=\a\25\6\18\a\2\0'\t\26\0'\n\27\0B\a\3\2=\a\27\6=\6\29\0055\6\30\0004\a\3\0005\b\31\0006\t \0=\t\25\b\18\t\2\0'\v!\0'\f\27\0B\t\3\2=\t\27\b>\b\1\a=\a\"\6=\6#\0054\6\b\0005\a%\0003\b$\0=\b&\a3\b'\0=\b\25\a>\a\1\0065\a)\0003\b(\0=\b&\a>\a\2\0065\a+\0003\b*\0=\b&\a>\a\3\0065\a-\0003\b,\0=\b&\a>\a\4\0065\a/\0003\b.\0=\b&\a3\b0\0=\b\25\a>\a\5\0065\a1\0>\a\6\0065\a2\0>\a\a\6=\6\"\5B\3\2\0012\0\0ÄK\0\1\0\1\0\1\ttext\6 \1\0\2\ttext\bÔôï delete_buffer_on_left_click\2\0\1\0\0\0\1\0\0\0\1\0\1\nstyle\vitalic\0\1\0\0\0\0\ttext\1\0\0\0\fsidebar\15components\18NeoTreeNormal\vyellow\1\0\2\nstyle\tbold\ttext\14  NeoTree\1\0\1\rfiletype\rneo-tree\15default_hl\1\0\0\abg\16ColorColumn\afg\1\0\0\0\nsetup\rcokeline\30<Plug>(cokeline-focus-%s)\vformat\15<Leader>%s\17<cmd>%bd<cr>\f<A-S-w>\16<cmd>bd<cr>\n<A-w> <Plug>(cokeline-focus-next)\n<A-s> <Plug>(cokeline-focus-prev)\n<A-a>!<Plug>(cokeline-switch-next)\f<C-A-l>!<Plug>(cokeline-switch-prev)\f<C-A-h>\fget_hex\19cokeline/utils\rnnoremap\vcolors\15core.utils\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/nvim-cokeline",
    url = "https://github.com/noib3/nvim-cokeline"
  },
  ["nvim-comment"] = {
    config = { "\27LJ\2\n∫\1\0\0\a\0\t\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0029\1\5\0009\2\6\0\18\3\1\0'\5\a\0'\6\b\0B\3\3\1\18\3\2\0'\5\a\0'\6\b\0B\3\3\1K\0\1\0\23:CommentToggle<cr>\n<C-_>\rvnoremap\rnnoremap\15core.utils\1\0\1\18comment_empty\1\nsetup\17nvim_comment\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/nvim-comment",
    url = "https://github.com/terrortylor/nvim-comment"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-scrollbar"] = {
    config = { "\27LJ\2\n¢\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\3=\3\t\2B\0\2\1K\0\1\0\nmarks\1\0\0\tWarn\1\0\1\14highlight\19GitSignsChange\nError\1\0\0\1\0\1\14highlight\19GitSignsDelete\nsetup\14scrollbar\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/nvim-scrollbar",
    url = "https://github.com/petertriho/nvim-scrollbar"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-treesitter-textobjects" },
    config = { "\27LJ\2\nñ\4\0\0\6\0\22\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\17\0005\4\14\0005\5\15\0=\5\16\4=\4\18\3=\3\19\0025\3\20\0=\3\21\2B\0\2\1K\0\1\0\fendwise\1\0\1\venable\2\16textobjects\vselect\1\0\0\fkeymaps\1\0\4\aic\17@class.inner\aif\20@function.inner\aaf\20@function.outer\aac\17@class.outer\1\0\2\14lookahead\2\venable\2\fautotag\1\0\1\venable\2\26context_commentstring\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\3\venable\2&additional_vim_regex_highlighting\1\21use_languagetree\2\21ensure_installed\1\0\0\1\15\0\0\ago\15typescript\15javascript\btsx\vpython\tbash\bhcl\thtml\bcss\tscss\bvue\blua\tjson\tyaml\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    only_config = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-endwise"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/nvim-treesitter-endwise",
    url = "https://github.com/RRethy/nvim-treesitter-endwise"
  },
  ["nvim-treesitter-textobjects"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/snio/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\nÌ\14\0\0\a\0R\0é\0015\0\0\0006\1\1\0'\3\2\0B\1\2\0029\1\3\0015\3P\0005\4\a\0005\5\4\0009\6\5\0=\6\6\5=\5\b\0045\5\t\0009\6\n\0=\6\6\5=\5\v\0045\5\f\0009\6\r\0=\6\6\5=\5\14\0045\5\15\0009\6\n\0=\6\6\5=\5\16\0045\5\17\0009\6\5\0=\6\6\5=\5\18\0045\5\19\0009\6\20\0=\6\6\5=\5\21\0045\5\22\0009\6\20\0=\6\6\5=\5\23\0045\5\24\0009\6\20\0=\6\6\5=\5\25\0045\5\26\0009\6\27\0=\6\6\5=\5\28\0045\5\29\0009\6\27\0=\6\6\5=\5\30\0045\5\31\0009\6\27\0=\6\6\5=\5 \0045\5!\0009\6\n\0=\6\6\5=\5\"\0045\5#\0009\6\n\0=\6\6\5=\5$\0045\5%\0009\6&\0=\6\6\5=\5'\0045\5(\0009\6&\0=\6\6\5=\5)\0045\5*\0009\6+\0=\6\6\5=\5,\0045\5-\0009\6+\0=\6\6\5=\5.\0045\5/\0009\6\n\0=\6\6\5=\0050\0045\0051\0009\6&\0=\6\6\5=\0052\0045\0053\0009\6\5\0=\6\6\5=\0054\0045\0055\0009\6\5\0=\6\6\5=\0056\0045\0057\0009\0068\0=\6\6\5=\0059\0045\5:\0009\6\5\0=\6\6\5=\5;\0045\5<\0009\6\n\0=\6\6\5=\5=\0045\5>\0009\6+\0=\6\6\5=\5?\0045\5@\0009\6+\0=\6\6\5=\5A\0045\5B\0009\6+\0=\6\6\5=\5C\0045\5D\0009\6+\0=\6\6\5=\5E\0045\5F\0009\6\5\0=\6\6\5=\5G\0045\5H\0009\6\r\0=\6\6\5=\5I\0045\5J\0009\6\20\0=\6\6\5=\5K\0045\5L\0009\6\20\0=\6\6\5=\5M\0045\5N\0009\6\20\0=\6\6\5=\5O\4=\4Q\3B\1\2\1K\0\1\0\roverride\1\0\0\ftfstate\1\0\2\ticon\bÓòã\tname\ftfstate\vtfvars\1\0\2\ticon\bÓòî\tname\vtfvars\atf\1\0\2\ticon\bÓòî\tname\14terraform\tjson\1\0\2\ticon\bÔ¨•\tname\tjson\15.gitignore\1\0\2\ticon\bÓúÇ\tname\14gitignore\bmdx\1\0\2\ticon\bÔíä\tname\bmdx\rmarkdown\1\0\2\ticon\bÔíä\tname\rmarkdown\amd\1\0\2\ticon\bÔíä\tname\amd\ash\1\0\2\ticon\bÓûï\tname\ash\blua\1\0\2\ticon\bÓò†\tname\blua\brpm\1\0\2\ticon\bÔåñ\tname\brpm\bdeb\tcyan\1\0\2\ticon\bÔåÜ\tname\bdeb\axz\1\0\2\ticon\bÔáÜ\tname\axz\bzip\1\0\2\ticon\bÔáÜ\tname\bzip\tlock\1\0\2\ticon\bÔ†Ω\tname\tlock\ttoml\1\0\2\ticon\bÔÄì\tname\ttoml\apy\1\0\2\ticon\bÓòÜ\tname\apy\bvue\ngreen\1\0\2\ticon\bÔµÇ\tname\bvue\aru\1\0\2\ticon\bÔêª\tname\aru\arb\bred\1\0\2\ticon\bÔêª\tname\arb\15dockerfile\1\0\2\ticon\bÔåà\tname\15Dockerfile\15Dockerfile\1\0\2\ticon\bÔåà\tname\15Dockerfile\bout\1\0\2\ticon\bÓòí\tname\bout\bmp4\1\0\2\ticon\bÔÖÑ\tname\bmp4\bmp3\nwhite\1\0\2\ticon\bÔ¢Ö\tname\bmp3\tjpeg\1\0\2\ticon\bÔùé\tname\tjpeg\bjpg\1\0\2\ticon\bÔùé\tname\bjpg\bpng\vpurple\1\0\2\ticon\bÔùé\tname\bpng\akt\1\0\2\ticon\tÛ±àô\tname\akt\ats\1\0\2\ticon\bÔØ§\tname\ats\ajs\vyellow\1\0\2\ticon\bÔ†ù\tname\ajs\bcss\tblue\1\0\2\ticon\bÓùâ\tname\bcss\thtml\1\0\0\ncolor\vorange\1\0\2\ticon\bÔÑª\tname\thtml\nsetup\22nvim-web-devicons\frequire\1\0\21\15grey_dark2\f#221F22\vpurple\f#AB9DF2\fpurple2\f#C678DD\tblue\f#78DCE8\ngreen\f#A9DC76\vyellow\f#FFD866\vorange\f#FC9867\tpink\f#FF6188\15grey_dark1\f#19181A\16white_dark5\f#747474\16white_dark4\f#ABB2BF\16white_dark3\f#939293\16white_dark2\f#727072\16white_dark1\f#5B595C\bred\f#E06C75\ngrey3\f#565357\nblack\f#2D2A2E\ngrey2\f#403E41\nwhite\f#FCFCFA\ngrey1\f#383539\tcyan\f#18FF9E\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/snio/.local/share/nvim/site/pack/packer/opt/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["refactoring.nvim"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/refactoring.nvim",
    url = "https://github.com/ThePrimeagen/refactoring.nvim"
  },
  ["searchbox.nvim"] = {
    config = { "\27LJ\2\nÅ\3\0\0\a\0\f\0\0266\0\0\0'\2\1\0B\0\2\0029\1\2\0009\2\3\0\18\3\1\0'\5\4\0'\6\5\0B\3\3\1\18\3\1\0'\5\6\0'\6\a\0B\3\3\1\18\3\2\0'\5\6\0'\6\b\0B\3\3\1\18\3\1\0'\5\t\0'\6\n\0B\3\3\1\18\3\2\0'\5\t\0'\6\v\0B\3\3\1K\0\1\0J:SearchBoxReplace visual_mode=true -- <C-r>=expand(\"<cword>\")<cr><cr>9:SearchBoxReplace -- <C-r>=expand(\"<cword>\")<cr><cr>\15<leader>rn+:SearchBoxReplace visual_mode=true<cr>\26:SearchBoxReplace<cr>\16<leader>rpl\28:SearchBoxIncSearch<cr>\n<C-f>\rxnoremap\rnnoremap\15core.utils\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/searchbox.nvim",
    url = "https://github.com/VonHeikemen/searchbox.nvim"
  },
  sonokai = {
    config = { "\27LJ\2\nâ\1\0\0\3\0\a\0\r6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0006\0\0\0009\0\5\0'\2\6\0B\0\2\1K\0\1\0\24colorscheme sonokai\bcmd\31sonokai_better_performance\vshusia\18sonokai_style\6g\bvim\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/sonokai",
    url = "https://github.com/sainnhe/sonokai"
  },
  ["tabout.nvim"] = {
    config = { "\27LJ\2\nm\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\15completion\2\vtabkey\n<Tab>\21backwards_tabkey\f<S-Tab>\nsetup\vtabout\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/snio/.local/share/nvim/site/pack/packer/opt/tabout.nvim",
    url = "https://github.com/abecodes/tabout.nvim",
    wants = { "nvim-treesitter" }
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n’\2\0\0\6\0\14\0\0256\0\0\0'\2\1\0B\0\2\0029\1\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\0025\4\6\0005\5\5\0=\5\a\4B\2\2\1\18\2\1\0'\4\b\0'\5\t\0B\2\3\1\18\2\1\0'\4\n\0'\5\v\0B\2\3\1\18\2\1\0'\4\f\0'\5\r\0B\2\3\1K\0\1\0*<cmd>Trouble document_diagnostics<cr>\15<leader>xd+<cmd>Trouble workspace_diagnostics<cr>\15<leader>xw\27<cmd>TroubleToggle<cr>\15<leader>xx\nsigns\1\0\0\1\0\4\16information\bÔüª\fwarning\bÔÅ±\nerror\bÔôò\thint\bÔÇ£\nsetup\ftrouble\rnnoremap\15core.utils\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-textobj-line"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/vim-textobj-line",
    url = "https://github.com/kana/vim-textobj-line"
  },
  ["vim-textobj-parameter"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/vim-textobj-parameter",
    url = "https://github.com/sgur/vim-textobj-parameter"
  },
  ["vim-textobj-user"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/vim-textobj-user",
    url = "https://github.com/kana/vim-textobj-user"
  },
  ["vim-tfsec"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/vim-tfsec",
    url = "https://github.com/aquasecurity/vim-tfsec"
  },
  ["vim-tmux-navigator"] = {
    config = { "\27LJ\2\nD\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\1\0=\1\2\0K\0\1\0'tmux_navigator_disable_when_zoomed\6g\bvim\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  },
  ["vim-twiggy"] = {
    config = { "\27LJ\2\ny\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0Z autocmd VimEnter * if empty(expand('<amatch>'))|call FugitiveDetect(getcwd())|endif \bcmd\bvim\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/vim-twiggy",
    url = "https://github.com/sodapopcan/vim-twiggy"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: fzf.vim
time([[Setup for fzf.vim]], true)
try_loadstring("\27LJ\2\ná\2\0\0\5\0\14\0\0276\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0'\2\a\0'\3\b\0'\4\t\0B\0\4\0016\0\4\0'\2\5\0B\0\2\0029\0\6\0'\2\a\0'\3\n\0'\4\v\0B\0\4\0016\0\4\0'\2\5\0B\0\2\0029\0\f\0005\2\r\0B\0\2\1K\0\1\0\1\0\2\afa\16<cmd>Ag<cr>\afr\16<cmd>Rg<cr>\20map_leader_keys\21<cmd>Buffers<cr>\f<C-A-b>\19<cmd>Files<cr>\n<C-p>\6n\bmap\15core.utils\frequire\1\0\1\aup\t~45%\15fzf_layout\6g\bvim\0", "setup", "fzf.vim")
time([[Setup for fzf.vim]], false)
-- Setup for: markdown-preview.nvim
time([[Setup for markdown-preview.nvim]], true)
try_loadstring("\27LJ\2\n=\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\2\0\0\rmarkdown\19mkdp_filetypes\6g\bvim\0", "setup", "markdown-preview.nvim")
time([[Setup for markdown-preview.nvim]], false)
-- Config for: numb.nvim
time([[Config for numb.nvim]], true)
try_loadstring("\27LJ\2\n2\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\tnumb\frequire\0", "config", "numb.nvim")
time([[Config for numb.nvim]], false)
-- Config for: sonokai
time([[Config for sonokai]], true)
try_loadstring("\27LJ\2\nâ\1\0\0\3\0\a\0\r6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0006\0\0\0009\0\5\0'\2\6\0B\0\2\1K\0\1\0\24colorscheme sonokai\bcmd\31sonokai_better_performance\vshusia\18sonokai_style\6g\bvim\0", "config", "sonokai")
time([[Config for sonokai]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
try_loadstring("\27LJ\2\nK\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\16hide_cursor\1\nsetup\14neoscroll\frequire\0", "config", "neoscroll.nvim")
time([[Config for neoscroll.nvim]], false)
-- Config for: diffview.nvim
time([[Config for diffview.nvim]], true)
try_loadstring("\27LJ\2\nò\6\0\0\t\0)\0a6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\0\0'\3\3\0B\1\2\0029\1\4\0015\3\5\0005\4\a\0005\5\6\0=\5\b\4=\4\t\0035\4\n\0005\5\f\0\18\6\0\0'\b\v\0B\6\2\2=\6\r\5\18\6\0\0'\b\14\0B\6\2\2=\6\15\5\18\6\0\0'\b\16\0B\6\2\2=\6\17\5\18\6\0\0'\b\18\0B\6\2\2=\6\19\5=\5\20\0045\5\22\0\18\6\0\0'\b\21\0B\6\2\2=\6\23\5\18\6\0\0'\b\21\0B\6\2\2=\6\24\5\18\6\0\0'\b\25\0B\6\2\2=\6\26\5\18\6\0\0'\b\25\0B\6\2\2=\6\27\5\18\6\0\0'\b\28\0B\6\2\2=\6\29\5\18\6\0\0'\b\28\0B\6\2\2=\6\30\5\18\6\0\0'\b\28\0B\6\2\2=\6\31\5\18\6\0\0'\b \0B\6\2\2=\6!\5\18\6\0\0'\b\"\0B\6\2\2=\6#\5\18\6\0\0'\b$\0B\6\2\2=\6%\5\18\6\0\0'\b&\0B\6\2\2=\6'\5\18\6\0\0'\b\v\0B\6\2\2=\6\r\5\18\6\0\0'\b\14\0B\6\2\2=\6\15\5\18\6\0\0'\b\16\0B\6\2\2=\6\17\5\18\6\0\0'\b\18\0B\6\2\2=\6\19\5=\5\t\4=\4(\3B\1\2\1K\0\1\0\17key_bindings\6R\18refresh_files\6U\16unstage_all\6S\14stage_all\6-\23toggle_stage_entry\18<2-LeftMouse>\6o\t<cr>\17select_entry\t<up>\6k\15prev_entry\v<down>\6j\1\0\0\15next_entry\tview\14<leader>b\17toggle_files\14<leader>e\16focus_files\f<s-tab>\22select_prev_entry\n<tab>\1\0\0\22select_next_entry\1\0\1\21disable_defaults\1\15file_panel\15win_config\1\0\0\1\0\1\nwidth\3\25\1\0\2\14use_icons\2\18diff_binaries\1\nsetup\rdiffview\22diffview_callback\20diffview.config\frequire\0", "config", "diffview.nvim")
time([[Config for diffview.nvim]], false)
-- Config for: hlargs.nvim
time([[Config for hlargs.nvim]], true)
try_loadstring("\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vhlargs\frequire\0", "config", "hlargs.nvim")
time([[Config for hlargs.nvim]], false)
-- Config for: fidget.nvim
time([[Config for fidget.nvim]], true)
try_loadstring("\27LJ\2\nn\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\vwindow\1\0\1\nblend\3\0\ttext\1\0\0\1\0\1\tdone\bÔÅò\nsetup\vfidget\frequire\0", "config", "fidget.nvim")
time([[Config for fidget.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nñ\4\0\0\6\0\22\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\17\0005\4\14\0005\5\15\0=\5\16\4=\4\18\3=\3\19\0025\3\20\0=\3\21\2B\0\2\1K\0\1\0\fendwise\1\0\1\venable\2\16textobjects\vselect\1\0\0\fkeymaps\1\0\4\aic\17@class.inner\aif\20@function.inner\aaf\20@function.outer\aac\17@class.outer\1\0\2\14lookahead\2\venable\2\fautotag\1\0\1\venable\2\26context_commentstring\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\3\venable\2&additional_vim_regex_highlighting\1\21use_languagetree\2\21ensure_installed\1\0\0\1\15\0\0\ago\15typescript\15javascript\btsx\vpython\tbash\bhcl\thtml\bcss\tscss\bvue\blua\tjson\tyaml\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n†\1\0\0\3\0\b\0\0156\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\4\0006\0\5\0'\2\6\0B\0\2\0029\0\a\0004\2\0\0B\0\2\1K\0\1\0\nsetup\21indent_blankline\frequire$indent_blankline_use_treesitter\6:\26indent_blankline_char\6g\bvim\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: searchbox.nvim
time([[Config for searchbox.nvim]], true)
try_loadstring("\27LJ\2\nÅ\3\0\0\a\0\f\0\0266\0\0\0'\2\1\0B\0\2\0029\1\2\0009\2\3\0\18\3\1\0'\5\4\0'\6\5\0B\3\3\1\18\3\1\0'\5\6\0'\6\a\0B\3\3\1\18\3\2\0'\5\6\0'\6\b\0B\3\3\1\18\3\1\0'\5\t\0'\6\n\0B\3\3\1\18\3\2\0'\5\t\0'\6\v\0B\3\3\1K\0\1\0J:SearchBoxReplace visual_mode=true -- <C-r>=expand(\"<cword>\")<cr><cr>9:SearchBoxReplace -- <C-r>=expand(\"<cword>\")<cr><cr>\15<leader>rn+:SearchBoxReplace visual_mode=true<cr>\26:SearchBoxReplace<cr>\16<leader>rpl\28:SearchBoxIncSearch<cr>\n<C-f>\rxnoremap\rnnoremap\15core.utils\frequire\0", "config", "searchbox.nvim")
time([[Config for searchbox.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nÜ\1\0\0\3\1\b\0\16-\0\0\0006\1\0\0009\1\1\0019\1\2\1B\1\1\0029\1\3\0018\0\1\0\6\0\4\0X\1\4Ä\6\0\5\0X\1\2Ä\a\0\6\0X\1\1ÄL\0\2\0'\1\a\0L\1\2\0\1¿\5\14--SHELL--\16--COMMAND--\15--NORMAL--\tmode\18nvim_get_mode\bapi\bvimK\0\0\4\0\5\0\t'\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0B\1\2\2'\2\4\0&\0\2\0L\0\2\0\6|\24nvim_win_get_number\bapi\bvim\6W8\0\0\2\0\4\0\6'\0\0\0006\1\1\0009\1\2\0019\1\3\1&\0\1\0L\0\2\0\18gitsigns_head\6b\bvim\tÓú• |\0\0\3\0\b\0\0146\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\bÄ5\1\4\0009\2\3\0=\2\3\0019\2\5\0=\2\6\0019\2\a\0=\2\a\1L\1\2\0K\0\1\0\fremoved\rmodified\fchanged\1\0\0\nadded\25gitsigns_status_dict\6b\bvimi\0\0\6\0\6\0\r6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3'\2\4\0\18\3\0\0'\4\5\0\18\5\1\0&\2\5\2L\2\2\0\v, Col \bLn \24nvim_win_get_cursor\bapi\bvim\vunpack7\0\0\3\0\3\0\0056\0\0\0009\0\1\0009\0\2\0)\2\0\0D\0\2\0\24nvim_buf_line_count\bapi\bvimŸ\n\1\0\15\0006\0Y6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0025\1\3\0005\2\4\0005\3\5\0=\3\6\0025\3\a\0=\3\b\0026\3\t\0=\3\n\0025\3\v\0005\4\f\0=\4\r\0035\4\14\0=\4\15\0035\4\19\0005\5\17\0009\6\16\0:\6\1\6=\6\18\5=\5\20\0045\5\22\0009\6\21\0:\6\1\6=\6\18\5=\5\23\4=\4\24\0035\4\25\0=\4\b\0033\4\26\0007\4\27\0003\4\28\0003\5\29\0003\6\30\0003\a\31\0003\b \0006\t\0\0'\v!\0B\t\2\0029\t\"\t5\v$\0005\f#\0=\f%\v5\f&\0004\r\3\0>\5\1\r=\r'\f4\r\3\0>\3\1\r=\r(\f4\r\3\0006\14\27\0>\14\1\r=\r)\f5\r*\0=\r+\f5\r,\0=\r-\f5\r.\0=\r/\f=\f\15\v5\f0\0004\r\3\0>\5\1\r=\r'\f4\r\3\0>\3\1\r=\r(\f4\r\3\0006\14\27\0>\14\1\r=\r)\f5\r1\0=\r+\f5\r2\0=\r-\f4\r\0\0=\r/\f=\f3\v4\f\0\0=\f4\v4\f\0\0=\f5\vB\t\2\0012\0\0ÄK\0\1\0\15extensions\ftabline\22inactive_sections\1\2\0\0\rlocation\1\3\0\0\rfiletype\rencoding\1\0\0\14lualine_z\1\2\0\0\rprogress\14lualine_y\1\2\0\0\rlocation\14lualine_x\1\3\0\0\rfiletype\rencoding\14lualine_c\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\1\0\3\ntheme\fsonokai\25component_separators\5\23section_separators\5\nsetup\flualine\0\0\0\0\0\vmode_m\0\1\0\2\nerror\tÔôò \twarn\tÔÅ± \22diagnostics_color\twarn\1\0\0\vorange\nerror\1\0\0\afg\1\0\0\bred\rsections\1\3\0\0\nerror\twarn\fsources\1\2\0\0\20nvim_diagnostic\1\2\1\0\16diagnostics\19always_visible\2\vsource\16diff_source\fsymbols\1\0\3\nadded\6+\fremoved\6-\rmodified\6~\15diff_color\1\0\3\nadded\fDiffAdd\fremoved\15DiffDelete\rmodified\15DiffChange\1\2\1\0\tdiff\fcolored\2\1\0\"\6S\vS-LINE\aic\vINSERT\tÔøΩs\fV-BLOCK\bÔøΩ\fS-BLOCK\6c\16--COMMAND--\aVs\vV-LINE\6s\vSELECT\6V\vV-LINE\avs\vVISUAL\ano\14O-PENDING\bniV\15--NORMAL--\bniR\15--NORMAL--\bniI\15--NORMAL--\nnoÔøΩ\14O-PENDING\bnoV\14O-PENDING\bnov\14O-PENDING\bRvx\14V-REPLACE\6v\vVISUAL\6t\rTERMINAL\6i\vINSERT\6R\fREPLACE\6r\fREPLACE\6!\14--SHELL--\ant\15--NORMAL--\ar?\fCONFIRM\arm\tMORE\ace\aEX\acv\aEX\6n\15--NORMAL--\bRvc\14V-REPLACE\aRv\14V-REPLACE\aRx\fREPLACE\aRc\fREPLACE\aix\vINSERT\vcolors\15core.utils\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: vim-twiggy
time([[Config for vim-twiggy]], true)
try_loadstring("\27LJ\2\ny\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0Z autocmd VimEnter * if empty(expand('<amatch>'))|call FugitiveDetect(getcwd())|endif \bcmd\bvim\0", "config", "vim-twiggy")
time([[Config for vim-twiggy]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n]\0\1\6\0\6\1\f9\1\0\0\18\3\1\0009\1\1\0019\4\2\0009\5\2\0\22\5\0\5B\1\4\0026\2\3\0009\2\4\0025\4\5\0\18\5\1\0D\2\3\0\1\2\0\0\a{}\17tbl_contains\bvim\bcol\bsub\tline\4c\0\1\6\0\6\1\f9\1\0\0\18\3\1\0009\1\1\0019\4\2\0\23\4\0\0049\5\2\0B\1\4\0026\2\3\0009\2\4\0025\4\5\0\18\5\1\0D\2\3\0\1\4\0\0\a()\a[]\a{}\17tbl_contains\bvim\bcol\bsub\tline\2\15\0\0\1\0\0\0\2+\0\1\0L\0\2\0G\0\1\5\0\3\0\v9\1\0\0\18\3\1\0009\1\1\1'\4\2\0B\1\3\2\v\1\0\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\b.%)\nmatch\14prev_char\15\0\0\1\0\0\0\2+\0\1\0L\0\2\0G\0\1\5\0\3\0\v9\1\0\0\18\3\1\0009\1\1\1'\4\2\0B\1\3\2\v\1\0\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\b.%}\nmatch\14prev_char\15\0\0\1\0\0\0\2+\0\1\0L\0\2\0G\0\1\5\0\3\0\v9\1\0\0\18\3\1\0009\1\1\1'\4\2\0B\1\3\2\v\1\0\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\b.%]\nmatch\14prev_char+\0\0\2\1\1\0\3-\0\0\0009\0\0\0D\0\1\0\1¿\26check_break_line_charú\a\1\0\f\0001\1w6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0005\2\4\0005\3\5\0005\4\6\0=\4\a\0036\4\b\0009\4\t\4'\6\n\0'\a\v\0'\b\f\0B\4\4\2=\4\r\3=\3\14\2B\0\2\0015\0\15\0006\1\0\0'\3\3\0B\1\2\0026\2\0\0'\4\16\0B\2\2\0026\3\0\0'\5\17\0B\3\2\0029\4\18\0014\6\6\0\18\a\2\0'\t\19\0'\n\19\0\18\v\0\0B\a\4\2\18\t\a\0009\a\20\a3\n\21\0B\a\3\2>\a\1\6\18\a\2\0'\t\19\0'\n\19\0B\a\3\2\18\t\a\0009\a\20\a3\n\22\0B\a\3\2>\a\2\6\18\a\2\0'\t\23\0'\n\24\0B\a\3\2\18\t\a\0009\a\20\a3\n\25\0B\a\3\2\18\t\a\0009\a\26\a3\n\27\0B\a\3\2\18\t\a\0009\a\28\a'\n\29\0B\a\3\2>\a\3\6\18\a\2\0'\t\30\0'\n\31\0B\a\3\2\18\t\a\0009\a\20\a3\n \0B\a\3\2\18\t\a\0009\a\26\a3\n!\0B\a\3\2\18\t\a\0009\a\28\a'\n\"\0B\a\3\2>\a\4\6\18\a\2\0'\t#\0'\n$\0B\a\3\2\18\t\a\0009\a\20\a3\n%\0B\a\3\2\18\t\a\0009\a\26\a3\n&\0B\a\3\2\18\t\a\0009\a\28\a'\n'\0B\a\3\0?\a\0\0B\4\2\0016\4(\0003\5*\0=\5)\0046\4\0\0'\6+\0B\4\2\0029\4,\4'\6-\0'\a.\0'\b/\0005\t0\0B\4\5\0012\0\0ÄK\0\1\0\1\0\2\texpr\2\fnoremap\2\20v:lua.confirm()\t<cr>\6i\rmap_opts\15core.utils\0\fconfirm\a_G\6]\0\0\a ]\a[ \6}\0\0\a }\a{ \6)\fuse_key\0\14with_move\0\a )\a( \0\0\14with_pair\6 \14add_rules\25nvim-autopairs.conds\24nvim-autopairs.rule\1\2\0\0\ago\14fast_wrap\fpattern\5\b%s+\25 [%'%\"%)%>%]%)%}%,] \tgsub\vstring\nchars\1\6\0\0\6{\6[\6(\6\"\6'\1\0\5\15hightlight\vSearch\16check_comma\2\tkeys\31qwertyuiopzxcvbnmasdfghjkl\fend_key\6$\bmap\n<A-e>\1\0\3\rcheck_ts\2\17map_complete\2\vmap_cr\2\19nvim-autopairs\nsetup\20nvim-ts-autotag\frequire\vÄÄ¿ô\4\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
try_loadstring("\27LJ\2\nÖ\5\0\0\a\0\18\0$6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0029\1\5\0009\2\6\0\18\3\1\0'\5\a\0'\6\b\0B\3\3\1\18\3\2\0'\5\a\0'\6\t\0B\3\3\1\18\3\1\0'\5\n\0'\6\v\0B\3\3\1\18\3\1\0'\5\f\0'\6\r\0B\3\3\1\18\3\1\0'\5\14\0'\6\15\0B\3\3\1\18\3\1\0'\5\16\0'\6\17\0B\3\3\1K\0\1\0004<cmd>lua require(\"lspsaga.rename\").rename()<cr>\agrI<cmd>lua require(\"lspsaga.diagnostic\").show_cursor_diagnostics()<cr>\15<leader>ccC<cmd>lua require(\"lspsaga.signaturehelp\").signature_help()<cr>\ags=<cmd>lua require(\"lspsaga.hover\").render_hover_doc()<cr>\6KD:<C-U>lua require(\"lspsaga.codeaction\").range_code_action()<cr>=<cmd>lua require(\"lspsaga.codeaction\").code_action()<cr>\15<leader>ca\rxnoremap\rnnoremap\15core.utils\1\0\2\21code_action_icon\5\29use_saga_diagnostic_sign\1\18init_lsp_saga\flspsaga\frequire\0", "config", "lspsaga.nvim")
time([[Config for lspsaga.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nó\4\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\4\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\ttext\bÔÉó\vlinehl\21GitSignsChangeLn\14topdelete\1\0\4\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\ttext\bÔÉò\vlinehl\21GitSignsDeleteLn\vdelete\1\0\4\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\ttext\bÔÉó\vlinehl\21GitSignsDeleteLn\vchange\1\0\4\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\ttext\b‚îÉ\vlinehl\21GitSignsChangeLn\badd\1\0\0\1\0\4\ahl\16GitSignsAdd\nnumhl\18GitSignsAddNr\ttext\b‚îÉ\vlinehl\18GitSignsAddLn\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-comment
time([[Config for nvim-comment]], true)
try_loadstring("\27LJ\2\n∫\1\0\0\a\0\t\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0029\1\5\0009\2\6\0\18\3\1\0'\5\a\0'\6\b\0B\3\3\1\18\3\2\0'\5\a\0'\6\b\0B\3\3\1K\0\1\0\23:CommentToggle<cr>\n<C-_>\rvnoremap\rnnoremap\15core.utils\1\0\1\18comment_empty\1\nsetup\17nvim_comment\frequire\0", "config", "nvim-comment")
time([[Config for nvim-comment]], false)
-- Config for: lsp_signature.nvim
time([[Config for lsp_signature.nvim]], true)
try_loadstring("\27LJ\2\nK\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\ffix_pos\2\nsetup\18lsp_signature\frequire\0", "config", "lsp_signature.nvim")
time([[Config for lsp_signature.nvim]], false)
-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
try_loadstring("\27LJ\2\nØ\t\0\2\a\1\21\0/6\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0B\2\4\0019\2\5\0009\2\6\2\15\0\2\0X\3\4Ä6\2\0\0009\2\a\2'\4\b\0B\2\2\0019\2\5\0009\2\t\2\15\0\2\0X\3\6Ä6\2\0\0009\2\1\0029\2\n\2'\4\v\0+\5\1\0B\2\3\1-\2\0\0009\2\f\2\18\4\1\0004\5\t\0005\6\r\0>\6\1\0055\6\14\0>\6\2\0055\6\15\0>\6\3\0055\6\16\0>\6\4\0055\6\17\0>\6\5\0055\6\18\0>\6\6\0055\6\19\0>\6\a\0055\6\20\0>\6\b\5B\2\3\1K\0\1\0\0¿\1\4\0\0\6n\14<space>ccO<cmd>lua vim.diagnostic.open_float(nil, {focus=false, scope=\"cursor\"})<CR>\1\4\0\0\6n\r<space>f*<cmd>lua vim.lsp.buf.formatting()<CR>\1\4\0\0\6n\14<space>ca+<cmd>lua vim.lsp.buf.code_action()<CR>\1\4\0\0\6n\14<space>rn&<cmd>lua vim.lsp.buf.rename()<CR>\1\4\0\0\6n\r<space>D/<cmd>lua vim.lsp.buf.type_definition()<CR>\1\4\0\0\6n\agi.<cmd>lua vim.lsp.buf.implementation()<CR>\1\4\0\0\6n\agd*<cmd>lua vim.lsp.buf.definition()<CR>\1\4\0\0\6n\agD+<cmd>lua vim.lsp.buf.declaration()<CR>\16bufmap_keys˘\1        augroup lsp_document_highlight\n          autocmd! * <buffer>\n          autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()\n          autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()\n        augroup END\n      \14nvim_exec\22documentHighlightõ\1        augroup LspFormatting\n          autocmd! * <buffer>\n          autocmd BufWritePre <buffer> lua vim.lsp.buf.format()\n        augroup END\n      \bcmd\31documentFormattingProvider\24server_capabilities\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvimÊ\a\1\0\f\0.\0d6\0\0\0004\1\0\0=\1\1\0006\0\2\0'\2\3\0B\0\2\0025\1\4\0006\2\5\0\18\4\1\0B\2\2\4H\5\fÄ'\a\6\0\18\b\5\0&\a\b\a6\b\a\0009\b\b\b9\b\t\b\18\n\a\0005\v\n\0=\6\v\v=\a\f\v=\a\r\vB\b\3\1F\5\3\3R\5Ú\1276\2\2\0'\4\14\0B\2\2\0029\2\15\2B\2\1\0016\2\2\0'\4\16\0B\2\2\0029\2\15\0025\4\17\0006\5\a\0009\5\18\0059\5\19\0059\5\20\5=\5\21\0045\5\23\0005\6\22\0=\6\24\5=\5\25\4B\2\2\0016\2\a\0009\2\1\0029\2\26\0029\2\27\2B\2\1\0026\3\0\0009\3\1\0036\4\2\0'\6\29\0B\4\2\0029\4\30\4\18\6\2\0B\4\2\2=\4\28\0036\3\0\0009\3\1\0039\3\28\0039\3\31\0039\3 \0039\3!\3+\4\2\0=\4\"\0036\3\0\0009\3\1\0039\3\28\0039\3\31\0039\3 \0039\3!\0035\4%\0005\5$\0=\5&\4=\4#\0036\3\0\0009\3\1\0039\3\28\0039\3\31\0035\4+\0005\5*\0006\6\a\0009\6(\0069\b\31\0029\b'\b9\b#\b9\b&\b5\t)\0B\6\3\2=\6&\5=\5#\4=\4'\0036\3\0\0009\3\1\0033\4-\0=\4,\0032\0\0ÄK\0\1\0\0\14on_attach\1\0\0\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\16list_extend\15codeAction\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\25default_capabilities\17cmp_nvim_lsp\17capabilities\29make_client_capabilities\rprotocol\aui\nicons\1\0\0\1\0\3\20package_pending\bÔÇ©\24package_uninstalled\bÔÑå\22package_installed\bÔÅò\14log_level\nDEBUG\vlevels\blog\1\0\1\30max_concurrent_installers\3\n\nmason\nsetup\19lsp-inlayhints\nnumhl\vtexthl\ttext\1\0\0\16sign_define\afn\bvim\19DiagnosticSign\npairs\1\0\4\tHint\tÔÇ£ \nError\tÔôò \tInfo\tÔüª \tWarn\tÔÅ± \15core.utils\frequire\blsp\aom\0", "config", "mason.nvim")
time([[Config for mason.nvim]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\nÌ\14\0\0\a\0R\0é\0015\0\0\0006\1\1\0'\3\2\0B\1\2\0029\1\3\0015\3P\0005\4\a\0005\5\4\0009\6\5\0=\6\6\5=\5\b\0045\5\t\0009\6\n\0=\6\6\5=\5\v\0045\5\f\0009\6\r\0=\6\6\5=\5\14\0045\5\15\0009\6\n\0=\6\6\5=\5\16\0045\5\17\0009\6\5\0=\6\6\5=\5\18\0045\5\19\0009\6\20\0=\6\6\5=\5\21\0045\5\22\0009\6\20\0=\6\6\5=\5\23\0045\5\24\0009\6\20\0=\6\6\5=\5\25\0045\5\26\0009\6\27\0=\6\6\5=\5\28\0045\5\29\0009\6\27\0=\6\6\5=\5\30\0045\5\31\0009\6\27\0=\6\6\5=\5 \0045\5!\0009\6\n\0=\6\6\5=\5\"\0045\5#\0009\6\n\0=\6\6\5=\5$\0045\5%\0009\6&\0=\6\6\5=\5'\0045\5(\0009\6&\0=\6\6\5=\5)\0045\5*\0009\6+\0=\6\6\5=\5,\0045\5-\0009\6+\0=\6\6\5=\5.\0045\5/\0009\6\n\0=\6\6\5=\0050\0045\0051\0009\6&\0=\6\6\5=\0052\0045\0053\0009\6\5\0=\6\6\5=\0054\0045\0055\0009\6\5\0=\6\6\5=\0056\0045\0057\0009\0068\0=\6\6\5=\0059\0045\5:\0009\6\5\0=\6\6\5=\5;\0045\5<\0009\6\n\0=\6\6\5=\5=\0045\5>\0009\6+\0=\6\6\5=\5?\0045\5@\0009\6+\0=\6\6\5=\5A\0045\5B\0009\6+\0=\6\6\5=\5C\0045\5D\0009\6+\0=\6\6\5=\5E\0045\5F\0009\6\5\0=\6\6\5=\5G\0045\5H\0009\6\r\0=\6\6\5=\5I\0045\5J\0009\6\20\0=\6\6\5=\5K\0045\5L\0009\6\20\0=\6\6\5=\5M\0045\5N\0009\6\20\0=\6\6\5=\5O\4=\4Q\3B\1\2\1K\0\1\0\roverride\1\0\0\ftfstate\1\0\2\ticon\bÓòã\tname\ftfstate\vtfvars\1\0\2\ticon\bÓòî\tname\vtfvars\atf\1\0\2\ticon\bÓòî\tname\14terraform\tjson\1\0\2\ticon\bÔ¨•\tname\tjson\15.gitignore\1\0\2\ticon\bÓúÇ\tname\14gitignore\bmdx\1\0\2\ticon\bÔíä\tname\bmdx\rmarkdown\1\0\2\ticon\bÔíä\tname\rmarkdown\amd\1\0\2\ticon\bÔíä\tname\amd\ash\1\0\2\ticon\bÓûï\tname\ash\blua\1\0\2\ticon\bÓò†\tname\blua\brpm\1\0\2\ticon\bÔåñ\tname\brpm\bdeb\tcyan\1\0\2\ticon\bÔåÜ\tname\bdeb\axz\1\0\2\ticon\bÔáÜ\tname\axz\bzip\1\0\2\ticon\bÔáÜ\tname\bzip\tlock\1\0\2\ticon\bÔ†Ω\tname\tlock\ttoml\1\0\2\ticon\bÔÄì\tname\ttoml\apy\1\0\2\ticon\bÓòÜ\tname\apy\bvue\ngreen\1\0\2\ticon\bÔµÇ\tname\bvue\aru\1\0\2\ticon\bÔêª\tname\aru\arb\bred\1\0\2\ticon\bÔêª\tname\arb\15dockerfile\1\0\2\ticon\bÔåà\tname\15Dockerfile\15Dockerfile\1\0\2\ticon\bÔåà\tname\15Dockerfile\bout\1\0\2\ticon\bÓòí\tname\bout\bmp4\1\0\2\ticon\bÔÖÑ\tname\bmp4\bmp3\nwhite\1\0\2\ticon\bÔ¢Ö\tname\bmp3\tjpeg\1\0\2\ticon\bÔùé\tname\tjpeg\bjpg\1\0\2\ticon\bÔùé\tname\bjpg\bpng\vpurple\1\0\2\ticon\bÔùé\tname\bpng\akt\1\0\2\ticon\tÛ±àô\tname\akt\ats\1\0\2\ticon\bÔØ§\tname\ats\ajs\vyellow\1\0\2\ticon\bÔ†ù\tname\ajs\bcss\tblue\1\0\2\ticon\bÓùâ\tname\bcss\thtml\1\0\0\ncolor\vorange\1\0\2\ticon\bÔÑª\tname\thtml\nsetup\22nvim-web-devicons\frequire\1\0\21\15grey_dark2\f#221F22\vpurple\f#AB9DF2\fpurple2\f#C678DD\tblue\f#78DCE8\ngreen\f#A9DC76\vyellow\f#FFD866\vorange\f#FC9867\tpink\f#FF6188\15grey_dark1\f#19181A\16white_dark5\f#747474\16white_dark4\f#ABB2BF\16white_dark3\f#939293\16white_dark2\f#727072\16white_dark1\f#5B595C\bred\f#E06C75\ngrey3\f#565357\nblack\f#2D2A2E\ngrey2\f#403E41\nwhite\f#FCFCFA\ngrey1\f#383539\tcyan\f#18FF9E\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: vim-tmux-navigator
time([[Config for vim-tmux-navigator]], true)
try_loadstring("\27LJ\2\nD\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\1\0=\1\2\0K\0\1\0'tmux_navigator_disable_when_zoomed\6g\bvim\0", "config", "vim-tmux-navigator")
time([[Config for vim-tmux-navigator]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n’\2\0\0\6\0\14\0\0256\0\0\0'\2\1\0B\0\2\0029\1\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\0025\4\6\0005\5\5\0=\5\a\4B\2\2\1\18\2\1\0'\4\b\0'\5\t\0B\2\3\1\18\2\1\0'\4\n\0'\5\v\0B\2\3\1\18\2\1\0'\4\f\0'\5\r\0B\2\3\1K\0\1\0*<cmd>Trouble document_diagnostics<cr>\15<leader>xd+<cmd>Trouble workspace_diagnostics<cr>\15<leader>xw\27<cmd>TroubleToggle<cr>\15<leader>xx\nsigns\1\0\0\1\0\4\16information\bÔüª\fwarning\bÔÅ±\nerror\bÔôò\thint\bÔÇ£\nsetup\ftrouble\rnnoremap\15core.utils\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim˙\1\0\1\5\1\n\1 -\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\22Ä6\1\2\0009\1\3\0019\1\4\1)\3\1\0B\1\2\2\t\1\0\0X\1\5Ä6\1\5\0'\3\6\0'\4\a\0B\1\3\1X\1\nÄ6\1\b\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\t\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\rcomplete\21has_words_before\5!<Plug>(vsnip-expand-or-jump)\ffeedkey\20vsnip#available\afn\bvim\21select_next_item\fvisible\2Æ\1\0\0\4\1\b\1\21-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0B\0\1\1X\0\vÄ6\0\2\0009\0\3\0009\0\4\0)\2ˇˇB\0\2\2\t\0\0\0X\0\4Ä6\0\5\0'\2\6\0'\3\a\0B\0\3\1K\0\1\0\0¿\5\28<Plug>(vsnip-jump-prev)\ffeedkey\19vsnip#jumpable\afn\bvim\21select_prev_item\fvisible\2√\a\1\0\v\0006\0j6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\2'\3\6\0=\3\5\0029\2\a\0005\4\v\0005\5\t\0003\6\b\0=\6\n\5=\5\f\0049\5\r\0009\5\14\0054\a\3\0005\b\15\0>\b\1\a5\b\16\0>\b\2\a4\b\3\0005\t\17\0>\t\1\b5\t\18\0>\t\2\bB\5\3\2=\5\14\0045\5\21\0009\6\19\0015\b\20\0B\6\2\2=\6\22\5=\5\23\0045\5\27\0009\6\24\0009\b\24\0009\b\25\bB\b\1\0025\t\26\0B\6\3\2=\6\28\0059\6\r\0009\6\29\6=\6\30\0059\6\24\0005\b \0009\t\24\0009\t\31\tB\t\1\2=\t!\b9\t\24\0009\t\"\tB\t\1\2=\t#\bB\6\2\2=\6$\0059\6\24\0009\6%\0065\b&\0B\6\2\2=\6'\0059\6\24\0003\b(\0005\t)\0B\6\3\2=\6*\0059\6\24\0003\b+\0005\t,\0B\6\3\2=\6-\5=\5\24\4B\2\2\0015\2.\0006\3\3\0009\3/\0039\0030\3\18\4\3\0'\6!\0'\a1\0'\b2\0\18\t\2\0B\4\5\1\18\4\3\0'\0063\0'\a1\0'\b2\0\18\t\2\0B\4\5\1\18\4\3\0'\6!\0'\a4\0'\b5\0\18\t\2\0B\4\5\1\18\4\3\0'\0063\0'\a4\0'\b5\0\18\t\2\0B\4\5\0012\0\0ÄK\0\1\0Bvsnip#available(1) ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'\n<C-l>\6s:vsnip#expandable() ? '<Plug>(vsnip-expand)' : '<C-j>'\n<C-j>\20nvim_set_keymap\bapi\1\0\1\texpr\2\n<C-p>\1\3\0\0\6i\6s\0\n<C-n>\1\3\0\0\6i\6s\0\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\n<C-y>\fdisable\14<C-Space>\1\0\0\1\3\0\0\6i\6c\rcomplete\fmapping\15formatting\vformat\1\0\0\1\0\2\tmode\16symbol_text\14with_text\2\15cmp_format\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup%/home/snio/.config/nvim/snippets\22vsnip_snippet_dir\6g\bvim\flspkind\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-scrollbar
time([[Config for nvim-scrollbar]], true)
try_loadstring("\27LJ\2\n¢\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\3=\3\t\2B\0\2\1K\0\1\0\nmarks\1\0\0\tWarn\1\0\1\14highlight\19GitSignsChange\nError\1\0\0\1\0\1\14highlight\19GitSignsDelete\nsetup\14scrollbar\frequire\0", "config", "nvim-scrollbar")
time([[Config for nvim-scrollbar]], false)
-- Config for: lspkind-nvim
time([[Config for lspkind-nvim]], true)
try_loadstring("\27LJ\2\n5\0\2\a\0\3\0\0066\2\0\0009\2\1\2'\4\2\0\18\5\0\0\18\6\1\0D\2\4\0\f%s (%s)\vformat\vstringå\3\1\0\5\0\a\0\n3\0\0\0006\1\1\0'\3\2\0B\1\2\0029\1\3\0015\3\4\0005\4\5\0=\4\6\3B\1\2\1K\0\1\0\15symbol_map\1\0\25\rConstant\bÔ£ø\tEnum\bÔÖù\vStruct\bÔ≠Ñ\nValue\bÔ¢ü\nEvent\bÔÉß\tUnit\bÔ•¨\rProperty\bÔ∞†\rOperator\bÔöî\vModule\bÔ£í\18TypeParameter\5\14Interface\bÔÉ®\nClass\bÔ¥Ø\rVariable\bÔúõ\nField\bÔ∞†\16Constructor\b‚åò\15EnumMember\bÔÖù\rFunction\bÔûî\vFolder\bÔÅª\vMethod\bÔö¶\14Reference\bÔúÜ\tText\bÔÉâ\tFile\bÔúò\nColor\bÔ£ó\fSnippet\bÔô∞\fKeyword\bÔ®ã\1\0\1\tmode\16symbol_text\tinit\flspkind\frequire\0\0", "config", "lspkind-nvim")
time([[Config for lspkind-nvim]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\nÏ\1\0\1\b\0\v\0\0309\1\0\0\18\3\1\0009\1\1\1B\1\2\0029\2\2\1\6\2\3\0X\2\5Ä\18\4\1\0009\2\4\1B\2\2\2\15\0\2\0X\3\nÄ\18\4\1\0009\2\5\1B\2\2\2\15\0\2\0X\3\5Ä9\2\6\0009\2\a\2\18\4\0\0B\2\2\1X\2\aÄ6\2\b\0009\2\t\2\18\4\0\0\18\a\1\0009\5\n\1B\5\2\0A\2\1\1K\0\1\0\18get_parent_id\15focus_node\rrenderer\16toggle_node\rcommands\16is_expanded\17has_children\14directory\ttype\rget_node\ttree—\2\0\1\b\0\14\0*9\1\0\0\18\3\1\0009\1\1\1B\1\2\0029\2\2\1\6\2\3\0X\2\5Ä\18\4\1\0009\2\4\1B\2\2\2\15\0\2\0X\3\29Ä\18\4\1\0009\2\5\1B\2\2\2\14\0\2\0X\2\16Ä9\2\2\1\a\2\3\0X\2\bÄ6\2\6\0'\4\a\0B\2\2\0029\2\b\2\18\4\0\0\18\5\1\0B\2\3\1X\2\rÄ9\2\t\0009\2\n\2\18\4\0\0B\2\2\1X\2\bÄ6\2\v\0009\2\f\2\18\4\0\0\18\a\1\0009\5\r\1B\5\2\2:\5\1\5B\2\3\1K\0\1\0\18get_child_ids\15focus_node\rrenderer\16toggle_node\rcommands\21toggle_directory neo-tree.sources.filesystem\frequire\16is_expanded\17has_children\14directory\ttype\rget_node\ttree›\3\1\0\n\0\27\0(3\0\0\0003\1\1\0006\2\2\0'\4\3\0B\2\2\0029\2\4\0025\4\f\0005\5\5\0005\6\6\0=\0\a\6=\1\b\6=\0\t\6=\1\n\6=\6\v\5=\5\r\0045\5\17\0005\6\14\0005\a\15\0=\a\16\6=\6\18\5=\5\19\4B\2\2\0016\2\2\0'\4\20\0B\2\2\0029\3\21\0029\4\22\0029\5\23\2\18\6\4\0'\b\24\0'\t\25\0B\6\3\1\18\6\5\0'\b\24\0'\t\25\0B\6\3\1\18\6\3\0005\b\26\0B\6\2\1K\0\1\0\1\0\1\6b\31<cmd>NeoTreeShowToggle<cr>\31<cmd>NeoTreeShowToggle<cr>\n<C-b>\rinoremap\rnnoremap\20map_leader_keys\15core.utils\15filesystem\19filtered_items\1\0\0\15never_show\1\6\0\0\t.git\19.tool-versions\n.idea\15.terraform\17node_modules\1\0\2\20hide_gitignored\1\fvisible\2\vwindow\1\0\0\rmappings\f<Right>\v<Left>\6l\6h\1\0\0\1\0\1\nwidth\3 \nsetup\rneo-tree\frequire\0\0\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: nvim-cokeline
time([[Config for nvim-cokeline]], true)
try_loadstring("\27LJ\2\n\\\0\1\5\2\4\0\r9\1\0\0\15\0\1\0X\2\5Ä-\1\0\0009\1\1\1:\1\1\1\14\0\1\0X\2\4Ä-\1\1\0'\3\2\0'\4\3\0B\1\3\2L\1\2\0\0¿\2¿\afg\fComment\vyellow\15is_focused*\0\1\3\0\3\0\5'\1\0\0009\2\1\0009\2\2\2&\1\2\1L\1\2\0\ticon\fdevicon\6 !\0\1\2\0\2\0\0039\1\0\0009\1\1\1L\1\2\0\ncolor\fdevicon \0\1\3\0\2\0\0049\1\0\0'\2\1\0&\1\2\1L\1\2\0\a: \nindex\29\0\1\2\0\1\0\0029\1\0\0L\1\2\0\18unique_prefix\"\0\1\3\0\2\0\0049\1\0\0'\2\1\0&\1\2\1L\1\2\0\6 \rfilename5\0\1\2\0\3\0\a9\1\0\0\15\0\1\0X\2\2Ä'\1\1\0L\1\2\0'\1\2\0L\1\2\0\5\t‚óè \16is_modified7\0\1\2\1\2\0\a9\1\0\0\15\0\1\0X\2\3Ä-\1\0\0009\1\1\1:\1\1\1L\1\2\0\0¿\vorange\15is_focused“\a\1\0\14\0003\0r6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0026\1\0\0'\3\1\0B\1\2\0029\1\3\0016\2\0\0'\4\4\0B\2\2\0029\2\5\2\18\3\1\0'\5\6\0'\6\a\0B\3\3\1\18\3\1\0'\5\b\0'\6\t\0B\3\3\1\18\3\1\0'\5\n\0'\6\v\0B\3\3\1\18\3\1\0'\5\f\0'\6\r\0B\3\3\1\18\3\1\0'\5\14\0'\6\15\0B\3\3\1\18\3\1\0'\5\16\0'\6\17\0B\3\3\1)\3\1\0)\4\t\0)\5\1\0M\3\rÄ\18\a\1\0'\t\18\0\18\v\t\0009\t\19\t\18\f\6\0B\t\3\2'\n\20\0\18\f\n\0009\n\19\n\18\r\6\0B\n\3\0A\a\1\1O\3Û\1276\3\0\0'\5\21\0B\3\2\0029\3\22\0035\5\28\0005\6\24\0003\a\23\0=\a\25\6\18\a\2\0'\t\26\0'\n\27\0B\a\3\2=\a\27\6=\6\29\0055\6\30\0004\a\3\0005\b\31\0006\t \0=\t\25\b\18\t\2\0'\v!\0'\f\27\0B\t\3\2=\t\27\b>\b\1\a=\a\"\6=\6#\0054\6\b\0005\a%\0003\b$\0=\b&\a3\b'\0=\b\25\a>\a\1\0065\a)\0003\b(\0=\b&\a>\a\2\0065\a+\0003\b*\0=\b&\a>\a\3\0065\a-\0003\b,\0=\b&\a>\a\4\0065\a/\0003\b.\0=\b&\a3\b0\0=\b\25\a>\a\5\0065\a1\0>\a\6\0065\a2\0>\a\a\6=\6\"\5B\3\2\0012\0\0ÄK\0\1\0\1\0\1\ttext\6 \1\0\2\ttext\bÔôï delete_buffer_on_left_click\2\0\1\0\0\0\1\0\0\0\1\0\1\nstyle\vitalic\0\1\0\0\0\0\ttext\1\0\0\0\fsidebar\15components\18NeoTreeNormal\vyellow\1\0\2\nstyle\tbold\ttext\14  NeoTree\1\0\1\rfiletype\rneo-tree\15default_hl\1\0\0\abg\16ColorColumn\afg\1\0\0\0\nsetup\rcokeline\30<Plug>(cokeline-focus-%s)\vformat\15<Leader>%s\17<cmd>%bd<cr>\f<A-S-w>\16<cmd>bd<cr>\n<A-w> <Plug>(cokeline-focus-next)\n<A-s> <Plug>(cokeline-focus-prev)\n<A-a>!<Plug>(cokeline-switch-next)\f<C-A-l>!<Plug>(cokeline-switch-prev)\f<C-A-h>\fget_hex\19cokeline/utils\rnnoremap\vcolors\15core.utils\frequire\0", "config", "nvim-cokeline")
time([[Config for nvim-cokeline]], false)
-- Conditional loads
time([[Conditional loading of fzf.vim]], true)
  require("packer.load")({"fzf.vim"}, {}, _G.packer_plugins)
time([[Conditional loading of fzf.vim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-treesitter-textobjects ]]

-- Config for: nvim-treesitter-textobjects
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "nvim-treesitter-textobjects")

vim.cmd [[ packadd null-ls.nvim ]]

-- Config for: null-ls.nvim
try_loadstring("\27LJ\2\né\4\0\0\6\0\28\0B6\0\0\0'\2\1\0B\0\2\0024\1\r\0009\2\2\0009\2\3\0029\2\4\2>\2\1\0019\2\2\0009\2\3\0029\2\5\2>\2\2\0019\2\2\0009\2\6\0029\2\a\2>\2\3\0019\2\2\0009\2\6\0029\2\b\2>\2\4\0019\2\2\0009\2\6\0029\2\t\2>\2\5\0019\2\2\0009\2\6\0029\2\n\2>\2\6\0019\2\2\0009\2\6\0029\2\v\2>\2\a\0019\2\2\0009\2\6\0029\2\f\2>\2\b\0019\2\2\0009\2\6\0029\2\r\0029\2\14\0025\4\16\0005\5\15\0=\5\17\4B\2\2\2>\2\t\0019\2\2\0009\2\18\0029\2\19\2>\2\n\0019\2\2\0009\2\18\0029\2\20\2>\2\v\0019\2\2\0009\2\18\0029\2\21\2>\2\f\0019\2\22\0005\4\23\0=\1\24\0046\5\25\0009\5\26\0059\5\27\5=\5\27\4B\2\2\1K\0\1\0\14on_attach\blsp\aom\fsources\1\0\0\nsetup\16ansiblelint\18golangci_lint\vpylint\16diagnostics\14filetypes\1\0\0\1\5\0\0\14terraform\atf\bhcl\vtfvars\twith\18terraform_fmt\fgolines\14goimports\ngofmt\rautopep8\rdeno_fmt\nshfmt\15formatting\veslint\16refactoring\17code_actions\rbuiltins\fnull-ls\frequire\0", "config", "null-ls.nvim")

vim.cmd [[ packadd lsp-inlayhints.nvim ]]
vim.cmd [[ packadd nvim-lspconfig ]]
vim.cmd [[ packadd mason-lspconfig.nvim ]]

-- Config for: mason-lspconfig.nvim
try_loadstring("\27LJ\2\nh\0\1\5\1\6\0\14-\1\0\0008\1\0\0019\1\0\0015\3\4\0006\4\1\0009\4\2\0049\4\3\4=\4\3\0036\4\1\0009\4\2\0049\4\5\4=\4\5\3B\1\2\1K\0\1\0\0¿\17capabilities\1\0\0\14on_attach\blsp\aom\nsetup∞\1\0\1\a\0\t\0\0239\1\0\0\15\0\1\0X\2\4Ä9\1\0\0009\1\1\1\14\0\1\0X\1\1ÄK\0\1\0009\1\2\0006\2\3\0009\2\4\0029\2\5\0029\4\0\0009\4\1\4B\2\2\0026\3\6\0'\5\a\0B\3\2\0029\3\b\3\18\5\2\0\18\6\1\0B\3\3\1K\0\1\0\14on_attach\19lsp-inlayhints\frequire\21get_client_by_id\blsp\bvim\bbuf\14client_id\tdataÉ\3\1\2\a\1\15\0!9\2\0\0+\3\1\0=\3\1\0029\2\0\0+\3\1\0=\3\2\0029\2\0\0+\3\1\0=\3\3\0029\2\0\0009\2\4\2\15\0\2\0X\3\5Ä-\2\0\0009\2\5\2\18\4\0\0\18\5\1\0B\2\3\0016\2\6\0009\2\a\0029\2\b\2'\4\t\0004\5\0\0B\2\3\0016\2\6\0009\2\a\0029\2\n\2'\4\v\0005\5\f\0003\6\r\0=\6\14\5B\2\3\1K\0\1\0\0\0\rcallback\0\1\0\1\ngroup\25LspAttach_inlayhints\14LspAttach\24nvim_create_autocmd\25LspAttach_inlayhints\24nvim_create_augroup\bapi\bvim\14on_attach\22inlayHintProvider$documentRangeFormattingProvider\31documentFormattingProvider\24document_formatting\24server_capabilitiesÛ\b\1\0\6\3\28\0/4\0\0\0004\1\0\0003\2\0\0-\3\1\0\a\3\1\0X\3\14Ä5\3\3\0005\4\2\0=\4\4\3\18\0\3\0005\3\b\0005\4\6\0005\5\5\0=\5\a\4=\4\t\0035\4\v\0005\5\n\0=\5\a\4=\4\f\3\18\1\3\0-\3\1\0\a\3\r\0X\3\1Ä5\0\14\0-\3\1\0\a\3\15\0X\3\6Ä5\3\19\0005\4\17\0005\5\16\0=\5\18\4=\4\15\3\18\1\3\0-\3\2\0-\4\1\0008\3\4\0039\3\20\0035\5\21\0=\0\22\5=\2\23\5=\1\24\5B\3\2\0016\3\25\0009\3\26\3'\5\27\0B\3\2\1K\0\1\0\2¿\a¿\0¿\29do User LspAttachBuffers\bcmd\bvim\rsettings\14on_attach\17init_options\1\0\0\nsetup\1\0\0\nhints\1\0\0\1\0\a\24assignVariableTypes\2\23rangeVariableTypes\2\19parameterNames\2\27functionTypeParameters\2\19constantValues\2\26compositeLiteralTypes\2\27compositeLiteralFields\2\ngopls\1\0\1\venable\1\vdenols\15javascript\1\0\0\1\0\a:includeInlayParameterNameHintsWhenArgumentMatchesName\1#includeInlayParameterNameHints\ball%includeInlayEnumMemberValueHints\2,includeInlayFunctionLikeReturnTypeHints\2-includeInlayPropertyDeclarationTypeHints\2\"includeInlayVariableTypeHints\2+includeInlayFunctionParameterTypeHints\2\15typescript\1\0\0\15inlayHints\1\0\0\1\0\a:includeInlayParameterNameHintsWhenArgumentMatchesName\1#includeInlayParameterNameHints\ball%includeInlayEnumMemberValueHints\2,includeInlayFunctionLikeReturnTypeHints\2-includeInlayPropertyDeclarationTypeHints\2\"includeInlayVariableTypeHints\2+includeInlayFunctionParameterTypeHints\2\16preferences\1\0\0\1\0\1$importModuleSpecifierPreference\21project-relative\rtsserver\0°\5\1\0\v\0\17\0,6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0026\3\4\0009\3\5\0035\4\a\0=\4\6\0034\3\0\0006\4\b\0009\4\t\4\18\6\3\0003\a\n\0B\4\3\0016\4\v\0006\6\4\0009\6\5\0069\6\6\6B\4\2\4H\a\3Ä3\t\f\0<\t\a\0032\a\0ÄF\a\3\3R\a˚\1279\4\r\0015\6\15\0006\a\14\0006\t\4\0009\t\5\t9\t\6\tB\a\2\2=\a\14\6B\4\2\0019\4\16\1\18\6\3\0B\4\2\0012\0\0ÄK\0\1\0\19setup_handlers\1\0\1\27automatic_installation\2\21ensure_installed\nsetup\0\npairs\0\vinsert\ntable\1\0\14\14ansiblels\28ansible-language-server\16terraformls\17terraform-ls\ngopls\ngopls\vjsonls\rjson-lsp\16tailwindcss tailwindcss-language-server\ncssls\fcss-lsp\vdenols\tdeno\rtsserver\31typescript-language-server\vyamlls\25yaml-language-server\npylsp\22python-lsp-server\rdockerls\31dockerfile-language-server\vbashls\25bash-language-server\veslint\15eslint-lsp\vtflint\vtflint\fservers\blsp\aom\19lsp-inlayhints\20mason-lspconfig\14lspconfig\frequire\0", "config", "mason-lspconfig.nvim")

vim.cmd [[ packadd tabout.nvim ]]

-- Config for: tabout.nvim
try_loadstring("\27LJ\2\nm\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\15completion\2\vtabkey\n<Tab>\21backwards_tabkey\f<S-Tab>\nsetup\vtabout\frequire\0", "config", "tabout.nvim")

time([[Sequenced loading]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
