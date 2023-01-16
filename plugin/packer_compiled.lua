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
  ["barbecue.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vupdate\16barbecue.ui\frequireÀ\2\1\0\b\0\14\0\0226\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0005\2\a\0005\3\n\0006\4\4\0009\4\5\0049\4\b\4'\6\t\0004\a\0\0B\4\3\2=\4\v\0033\4\f\0=\4\r\3B\0\3\1K\0\1\0\rcallback\0\ngroup\1\0\0\28barbecue#create_autocmd\24nvim_create_augroup\1\b\0\0\16WinScrolled\16BufWinEnter\15CursorHold\16InsertLeave\17BufWritePost\16TextChanged\17TextChangedI\24nvim_create_autocmd\bapi\bvim\1\0\2\19create_autocmd\1\17attach_navic\1\nsetup\rbarbecue\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/barbecue.nvim",
    url = "https://github.com/utilyre/barbecue.nvim"
  },
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
    config = { "\27LJ\2\nÉ\t\0\0\t\0;\0w6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\0\0'\3\3\0B\1\2\0029\1\4\0015\3\5\0005\4\6\0=\4\a\0035\4\t\0005\5\b\0=\5\n\0045\5\v\0=\5\f\0045\5\r\0=\5\14\4=\4\15\0035\4\16\0=\4\17\0035\4\19\0005\5\18\0=\5\20\4=\4\21\3B\1\2\0016\1\0\0'\3\22\0B\1\2\0029\1\4\0015\3\23\0005\4\25\0005\5\24\0=\5\26\4=\4\27\0035\4\28\0005\5\30\0\18\6\0\0'\b\29\0B\6\2\2=\6\31\5\18\6\0\0'\b \0B\6\2\2=\6!\5\18\6\0\0'\b\"\0B\6\2\2=\6#\5\18\6\0\0'\b$\0B\6\2\2=\6%\5=\5&\0045\5'\0\18\6\0\0'\b(\0B\6\2\2=\6)\5\18\6\0\0'\b(\0B\6\2\2=\6*\5\18\6\0\0'\b+\0B\6\2\2=\6,\5\18\6\0\0'\b+\0B\6\2\2=\6-\5\18\6\0\0'\b.\0B\6\2\2=\6/\5\18\6\0\0'\b.\0B\6\2\2=\0060\5\18\6\0\0'\b.\0B\6\2\2=\0061\5\18\6\0\0'\b2\0B\6\2\2=\0063\5\18\6\0\0'\b4\0B\6\2\2=\0065\5\18\6\0\0'\b6\0B\6\2\2=\0067\5\18\6\0\0'\b8\0B\6\2\2=\0069\5\18\6\0\0'\b\29\0B\6\2\2=\6\31\5\18\6\0\0'\b \0B\6\2\2=\6!\5\18\6\0\0'\b\"\0B\6\2\2=\6#\5\18\6\0\0'\b$\0B\6\2\2=\6%\5=\5\27\4=\4:\3B\1\2\1K\0\1\0\17key_bindings\6R\18refresh_files\6U\16unstage_all\6S\14stage_all\6-\23toggle_stage_entry\18<2-LeftMouse>\6o\t<cr>\17select_entry\t<up>\6k\15prev_entry\v<down>\6j\15next_entry\1\0\1\6q\18<cmd>tabc<cr>\tview\14<leader>b\17toggle_files\14<leader>e\16focus_files\f<s-tab>\22select_prev_entry\n<tab>\1\0\0\22select_next_entry\1\0\1\21disable_defaults\1\15file_panel\15win_config\1\0\0\1\0\2\rposition\tleft\nwidth\3 \1\0\2\18diff_binaries\1\14use_icons\2\rdiffview\rsections\vrecent\1\0\0\1\0\1\vfolded\1\17integrations\1\0\1\rdiffview\2\nsigns\thunk\1\3\0\0\5\5\titem\1\3\0\0\bÔÉö\bÔÉó\fsection\1\0\0\1\3\0\0\bÔë†\bÔëº\vstatus\1\0\1\24recent_commit_count\3\n\1\0\4\"disable_builtin_notifications\2!disable_context_highlighting\1\17disable_hint\1\18disable_signs\1\nsetup\vneogit\22diffview_callback\20diffview.config\frequire\0" },
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
  ["fzf-lua"] = {
    cond = { "\27LJ\2\nJ\0\0\3\0\4\1\v6\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\b\0\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\bfzf\15executable\afn\bvim\2\0" },
    config = { "\27LJ\2\n±\3\0\0\5\0\a\0\v6\0\0\0009\0\1\0'\2\2\0'\3\3\0'\4\4\0B\0\4\0016\0\0\0009\0\5\0005\2\6\0B\0\2\1K\0\1\0\1\0\3\afr3<cmd>lua require('fzf-lua').grep_project()<cr>\tgcop3<cmd>lua require('fzf-lua').git_branches()<cr>\afaŒ\1<cmd>lua require('fzf-lua').live_grep_glob({cmd = 'ag --nogroup --column --color ', prompt = 'Ag> ', fzf_opts = { ['--nth'] = '4' }, actions = {['default'] = require('fzf-lua.actions').file_edit}})<cr>\20map_leader_keys,<cmd>lua require(\"fzf-lua\").files()<cr>\n<C-p>\6n\bmap\aom\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/opt/fzf-lua",
    url = "https://github.com/ibhagwan/fzf-lua"
  },
  ["git-conflict.nvim"] = {
    config = { "\27LJ\2\nR\0\0\3\0\4\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\bpqf\nsetup\17git-conflict\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/git-conflict.nvim",
    url = "https://github.com/akinsho/git-conflict.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nó\4\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\4\ttext\bÔÉó\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\14topdelete\1\0\4\ttext\bÔÉò\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\vdelete\1\0\4\ttext\bÔÉó\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\vchange\1\0\4\ttext\b‚îÉ\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\badd\1\0\0\1\0\4\ttext\b‚îÉ\ahl\16GitSignsAdd\nnumhl\18GitSignsAddNr\vlinehl\18GitSignsAddLn\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["glance.nvim"] = {
    config = { "\27LJ\2\nÕ\2\0\0\5\0\15\0#6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0B\0\4\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\t\0'\4\n\0B\0\4\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\v\0'\4\f\0B\0\4\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\r\0'\4\14\0B\0\4\1K\0\1\0$<cmd>Glance implementations<cr>\15<leader>gi%<cmd>Glance type_definitions<cr>\agt\31<cmd>Glance references<cr>\agr <cmd>Glance definitions<cr>\15<leader>gd\6n\bset\vkeymap\bvim\nsetup\vglance\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/glance.nvim",
    url = "https://github.com/dnlhc/glance.nvim"
  },
  ["guihua.lua"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/guihua.lua",
    url = "https://github.com/ray-x/guihua.lua"
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
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\2\nK\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\ffix_pos\2\nsetup\18lsp_signature\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    config = { "\27LJ\2\nL\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tmode\16symbol_text\tinit\flspkind\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\nû\3\0\0\4\0\16\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0'\2\6\0'\3\a\0B\0\3\0016\0\4\0009\0\b\0'\2\6\0'\3\a\0B\0\3\0016\0\4\0009\0\5\0'\2\t\0'\3\n\0B\0\3\0016\0\4\0009\0\5\0'\2\v\0'\3\f\0B\0\3\0016\0\4\0009\0\5\0'\2\v\0'\3\r\0B\0\3\0016\0\4\0009\0\5\0'\2\14\0'\3\15\0B\0\3\1K\0\1\0\28<cmd>Lspsaga rename<cr>\15<leader>gr+<cmd>Lspsaga show_line_diagnostics<cr>-<cmd>Lspsaga show_cursor_diagnostics<cr>\15<leader>cc\31<cmd>Lspsaga hover_doc<cr>\6K\rvnoremap!<cmd>Lspsaga code_action<cr>\15<leader>ca\rnnoremap\aom\1\0\1\21code_action_icon\5\nsetup\flspsaga\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nÜ\1\0\0\3\1\b\0\16-\0\0\0006\1\0\0009\1\1\0019\1\2\1B\1\1\0029\1\3\0018\0\1\0\6\0\4\0X\1\4Ä\6\0\5\0X\1\2Ä\a\0\6\0X\1\1ÄL\0\2\0'\1\a\0L\1\2\0\1¿\5\14--SHELL--\16--COMMAND--\15--NORMAL--\tmode\18nvim_get_mode\bapi\bvimK\0\0\4\0\5\0\t'\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0B\1\2\2'\2\4\0&\0\2\0L\0\2\0\6|\24nvim_win_get_number\bapi\bvim\6W|\0\0\3\0\b\0\0146\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\bÄ5\1\4\0009\2\3\0=\2\3\0019\2\5\0=\2\6\0019\2\a\0=\2\a\1L\1\2\0K\0\1\0\fremoved\rmodified\fchanged\1\0\0\nadded\25gitsigns_status_dict\6b\bvimi\0\0\6\0\6\0\r6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3'\2\4\0\18\3\0\0'\4\5\0\18\5\1\0&\2\5\2L\2\2\0\v, Col \bLn \24nvim_win_get_cursor\bapi\bvim\vunpack7\0\0\3\0\3\0\0056\0\0\0009\0\1\0009\0\2\0)\2\0\0D\0\2\0\24nvim_buf_line_count\bapi\bvim¢\v\1\0\15\0;\0[6\0\0\0009\0\1\0B\0\1\0025\1\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\0035\4\a\0=\4\b\0036\4\t\0=\4\n\0035\4\v\0005\5\f\0=\5\r\0045\5\14\0=\5\15\0045\5\19\0005\6\17\0009\a\16\0:\a\1\a=\a\18\6=\6\20\0055\6\22\0009\a\21\0:\a\1\a=\a\18\6=\6\23\5=\5\24\0045\5\25\0=\5\b\0043\5\26\0007\5\27\0003\5\28\0003\6\29\0003\a\30\0003\b\31\0006\t \0'\v!\0B\t\2\0029\t\"\t5\v(\0005\f#\0005\r%\0005\14$\0=\14&\r=\r'\f=\f)\v5\f*\0004\r\3\0>\2\1\r=\r+\f4\r\3\0>\4\1\r=\r,\f4\r\3\0006\14\27\0>\14\1\r=\r-\f5\r.\0=\r/\f5\r0\0=\r1\f5\r2\0=\r3\f=\f\15\v5\f4\0004\r\3\0>\2\1\r=\r+\f4\r\3\0>\4\1\r=\r,\f4\r\3\0006\14\27\0>\14\1\r=\r-\f5\r5\0=\r/\f5\r6\0=\r1\f4\r\0\0=\r3\f=\f7\v4\f\0\0=\f8\v5\f9\0=\f:\vB\t\2\0012\0\0ÄK\0\1\0\15extensions\1\2\0\0\bfzf\ftabline\22inactive_sections\1\2\0\0\rlocation\1\3\0\0\rfiletype\rencoding\1\0\0\14lualine_z\1\2\0\0\rprogress\14lualine_y\1\2\0\0\rlocation\14lualine_x\1\3\0\0\rfiletype\rencoding\14lualine_c\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\23disabled_filetypes\15statusline\1\0\0\1\2\0\0\rNvimTree\1\0\3\ntheme\fsonokai\25component_separators\5\23section_separators\5\nsetup\flualine\frequire\0\0\0\0\vmode_m\0\1\0\2\twarn\tÔÅ± \nerror\tÔôò \22diagnostics_color\twarn\1\0\0\vorange\nerror\1\0\0\afg\1\0\0\bred\rsections\1\3\0\0\nerror\twarn\fsources\1\2\0\0\20nvim_diagnostic\1\2\1\0\16diagnostics\19always_visible\2\vsource\16diff_source\fsymbols\1\0\3\rmodified\6~\fremoved\6-\nadded\6+\15diff_color\1\0\3\rmodified\15DiffChange\fremoved\15DiffDelete\nadded\fDiffAdd\1\2\1\0\tdiff\fcolored\2\1\2\1\0\vbranch\ticon\bÓú•\1\0\"\6n\15--NORMAL--\ar?\fCONFIRM\6r\fREPLACE\arm\tMORE\ace\aEX\6i\vINSERT\acv\aEX\6R\fREPLACE\bRvx\14V-REPLACE\bRvc\14V-REPLACE\ant\15--NORMAL--\aRv\14V-REPLACE\aRx\fREPLACE\aRc\fREPLACE\bnov\14O-PENDING\aix\vINSERT\6S\vS-LINE\tÔøΩs\fV-BLOCK\bÔøΩ\fS-BLOCK\aVs\vV-LINE\6V\vV-LINE\avs\vVISUAL\bniV\15--NORMAL--\bniR\15--NORMAL--\bniI\15--NORMAL--\nnoÔøΩ\14O-PENDING\bnoV\14O-PENDING\6c\16--COMMAND--\ano\14O-PENDING\6t\rTERMINAL\aic\vINSERT\6s\vSELECT\6v\vVISUAL\6!\14--SHELL--\vcolors\aom\0" },
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
    config = { "\27LJ\2\nh\0\1\5\1\6\0\14-\1\0\0008\1\0\0019\1\0\0015\3\4\0006\4\1\0009\4\2\0049\4\3\4=\4\3\0036\4\1\0009\4\2\0049\4\5\4=\4\5\3B\1\2\1K\0\1\0\0¿\17capabilities\1\0\0\14on_attach\blsp\aom\nsetupí\1\0\2\4\0\4\0\n9\2\0\0+\3\1\0=\3\1\0029\2\0\0+\3\1\0=\3\2\0029\2\0\0+\3\1\0=\3\3\2K\0\1\0$documentRangeFormattingProvider\31documentFormattingProvider\24document_formatting\24server_capabilitiesÒ\b\1\0\6\2\28\0/4\0\0\0004\1\0\0003\2\0\0-\3\0\0\a\3\1\0X\3\14Ä5\3\3\0005\4\2\0=\4\4\3\18\0\3\0005\3\b\0005\4\6\0005\5\5\0=\5\a\4=\4\t\0035\4\v\0005\5\n\0=\5\a\4=\4\f\3\18\1\3\0-\3\0\0\a\3\r\0X\3\1Ä5\0\14\0-\3\0\0\a\3\15\0X\3\6Ä5\3\19\0005\4\17\0005\5\16\0=\5\18\4=\4\15\3\18\1\3\0-\3\1\0-\4\0\0008\3\4\0039\3\20\0035\5\21\0=\0\22\5=\2\23\5=\1\24\5B\3\2\0016\3\25\0009\3\26\3'\5\27\0B\3\2\1K\0\1\0\6¿\0¿\29do User LspAttachBuffers\bcmd\bvim\rsettings\14on_attach\17init_options\1\0\0\nsetup\1\0\0\nhints\1\0\0\1\0\a\23rangeVariableTypes\2\19parameterNames\2\27functionTypeParameters\2\19constantValues\2\26compositeLiteralTypes\2\27compositeLiteralFields\2\24assignVariableTypes\2\ngopls\1\0\1\venable\1\vdenols\15javascript\1\0\0\1\0\a#includeInlayParameterNameHints\ball%includeInlayEnumMemberValueHints\2,includeInlayFunctionLikeReturnTypeHints\2-includeInlayPropertyDeclarationTypeHints\2\"includeInlayVariableTypeHints\2+includeInlayFunctionParameterTypeHints\2:includeInlayParameterNameHintsWhenArgumentMatchesName\1\15typescript\1\0\0\15inlayHints\1\0\0\1\0\a#includeInlayParameterNameHints\ball%includeInlayEnumMemberValueHints\2,includeInlayFunctionLikeReturnTypeHints\2-includeInlayPropertyDeclarationTypeHints\2\"includeInlayVariableTypeHints\2+includeInlayFunctionParameterTypeHints\2:includeInlayParameterNameHintsWhenArgumentMatchesName\1\16preferences\1\0\0\1\0\1$importModuleSpecifierPreference\21project-relative\rtsserver\0N\0\1\v\0\3\0\r4\1\0\0006\2\0\0\18\4\0\0B\2\2\4H\5\5Ä6\a\1\0009\a\2\a\18\t\1\0\18\n\5\0B\a\3\1F\5\3\3R\5˘\127L\1\2\0\vinsert\ntable\npairsË\4\1\0\n\0\17\0+6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\0025\3\6\0=\3\5\0024\2\0\0006\3\a\0009\3\b\3\18\5\2\0003\6\t\0B\3\3\0016\3\n\0006\5\3\0009\5\4\0059\5\5\5B\3\2\4H\6\3Ä3\b\v\0<\b\6\0022\6\0ÄF\6\3\3R\6˚\1273\3\f\0007\3\r\0009\3\14\0015\5\15\0006\6\r\0006\b\3\0009\b\4\b9\b\5\bB\6\2\2=\6\r\5B\3\2\0019\3\16\1\18\5\2\0B\3\2\0012\0\0ÄK\0\1\0\19setup_handlers\1\0\1\27automatic_installation\2\nsetup\21ensure_installed\0\0\npairs\0\vinsert\ntable\1\0\f\vbashls\25bash-language-server\ngopls\ngopls\rdockerls\31dockerfile-language-server\veslint\15eslint-lsp\14ansiblels\28ansible-language-server\rtsserver\31typescript-language-server\ncssls\fcss-lsp\16tailwindcss tailwindcss-language-server\vjsonls\rjson-lsp\vyamlls\25yaml-language-server\vdenols\tdeno\npylsp\22python-lsp-server\fservers\blsp\aom\20mason-lspconfig\14lspconfig\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    config = { "\27LJ\2\nÍ\1\0\0\5\0\r\0\0166\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0006\3\4\0009\3\5\0039\3\6\0039\3\a\3=\3\b\0025\3\n\0005\4\t\0=\4\v\3=\3\f\2B\0\2\1K\0\1\0\aui\nicons\1\0\0\1\0\3\24package_uninstalled\bÔÑå\22package_installed\bÔÅò\20package_pending\bÔÇ©\14log_level\nDEBUG\vlevels\blog\bvim\1\0\1\30max_concurrent_installers\3\n\nsetup\nmason\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["mini.ai"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/mini.ai",
    url = "https://github.com/echasnovski/mini.ai"
  },
  ["move.nvim"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/move.nvim",
    url = "https://github.com/fedepujol/move.nvim"
  },
  neogit = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/neogit",
    url = "https://github.com/TimUntersberger/neogit"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\nå\4\0\0\5\0\"\00016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0029\0\5\0005\2\b\0005\3\6\0005\4\a\0>\4\2\3=\3\t\0025\3\n\0005\4\v\0>\4\2\3=\3\f\0025\3\r\0005\4\14\0>\4\2\3=\3\15\0025\3\16\0005\4\17\0>\4\2\3=\3\18\0025\3\19\0005\4\20\0>\4\2\3=\3\21\0025\3\22\0005\4\23\0>\4\2\3=\3\24\0025\3\25\0005\4\26\0>\4\2\3=\3\27\0025\3\28\0005\4\29\0>\4\2\3=\3\30\0025\3\31\0005\4 \0>\4\2\3=\3!\2B\0\2\1K\0\1\0\azb\1\2\0\0\b250\1\2\0\0\azb\azz\1\2\0\0\b250\1\2\0\0\azz\azt\1\2\0\0\b250\1\2\0\0\azt\n<C-e>\1\4\0\0\t0.10\nfalse\b100\1\2\0\0\vscroll\n<C-y>\1\4\0\0\n-0.10\nfalse\b100\1\2\0\0\vscroll\n<C-d>\1\4\0\0\18vim.wo.scroll\ttrue\b250\1\2\0\0\vscroll\n<C-u>\1\4\0\0\19-vim.wo.scroll\ttrue\b250\1\2\0\0\vscroll\n<C-f>\1\2\0\0\5\1\2\0\0\5\n<C-b>\1\0\0\1\2\0\0\5\1\2\0\0\5\17set_mappings\21neoscroll.config\1\0\1\16hide_cursor\1\nsetup\14neoscroll\frequire\0" },
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
    config = { "\27LJ\2\nÆ\3\0\0\6\0\23\00096\0\0\0'\2\1\0B\0\2\0024\1\f\0009\2\2\0009\2\3\0029\2\4\2>\2\1\0019\2\2\0009\2\3\0029\2\5\2>\2\2\0019\2\2\0009\2\6\0029\2\a\2>\2\3\0019\2\2\0009\2\6\0029\2\b\2>\2\4\0019\2\2\0009\2\6\0029\2\t\2>\2\5\0019\2\2\0009\2\6\0029\2\n\2>\2\6\0019\2\2\0009\2\6\0029\2\v\2>\2\a\0019\2\2\0009\2\6\0029\2\f\2>\2\b\0019\2\2\0009\2\r\0029\2\14\2>\2\t\0019\2\2\0009\2\r\0029\2\15\2>\2\n\0019\2\2\0009\2\r\0029\2\16\2>\2\v\0019\2\17\0005\4\18\0=\1\19\0046\5\20\0009\5\21\0059\5\22\5=\5\22\4B\2\2\1K\0\1\0\14on_attach\blsp\aom\fsources\1\0\0\nsetup\16ansiblelint\18golangci_lint\vpylint\16diagnostics\fgolines\14goimports\ngofmt\rautopep8\rdeno_fmt\nshfmt\15formatting\veslint\16refactoring\17code_actions\rbuiltins\fnull-ls\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
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
    config = { "\27LJ\2\n+\0\0\2\1\1\0\3-\0\0\0009\0\0\0D\0\1\0\0¿\26check_break_line_charŒ\3\1\0\t\0\24\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0005\2\4\0005\3\5\0005\4\6\0=\4\a\0036\4\b\0009\4\t\4'\6\n\0'\a\v\0'\b\f\0B\4\4\2=\4\r\3=\3\14\2B\0\2\0016\0\0\0'\2\3\0B\0\2\0026\1\15\0003\2\17\0=\2\16\0016\1\18\0009\1\19\1'\3\20\0'\4\21\0'\5\22\0005\6\23\0B\1\5\0012\0\0ÄK\0\1\0\1\0\2\texpr\2\fnoremap\2\20v:lua.confirm()\t<cr>\6i\rmap_opts\aom\0\fconfirm\a_G\14fast_wrap\fpattern\5\b%s+\25 [%'%\"%)%>%]%)%}%,] \tgsub\vstring\nchars\1\6\0\0\6{\6[\6(\6\"\6'\1\0\5\16check_comma\2\15hightlight\vSearch\tkeys\31qwertyuiopzxcvbnmasdfghjkl\fend_key\6$\bmap\n<A-e>\1\0\3\rcheck_ts\2\17map_complete\2\vmap_cr\2\19nvim-autopairs\nsetup\20nvim-ts-autotag\frequire\0" },
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
    config = { "\27LJ\2\n\\\0\1\5\2\4\0\r9\1\0\0\15\0\1\0X\2\5Ä-\1\0\0009\1\1\1:\1\1\1\14\0\1\0X\2\4Ä-\1\1\0'\3\2\0'\4\3\0B\1\3\2L\1\2\0\0¿\1¿\afg\fComment\vyellow\15is_focused&\0\1\4\0\3\0\5'\1\0\0009\2\1\0'\3\2\0&\1\3\1L\1\2\0\a: \nindex\6 \29\0\1\2\0\1\0\0029\1\0\0L\1\2\0\18unique_prefix\"\0\1\3\0\2\0\0049\1\0\0'\2\1\0&\1\2\1L\1\2\0\6 \rfilename5\0\1\2\0\3\0\a9\1\0\0\15\0\1\0X\2\2Ä'\1\1\0L\1\2\0'\1\2\0L\1\2\0\5\t‚óè \16is_modified7\0\1\2\1\2\0\a9\1\0\0\15\0\1\0X\2\3Ä-\1\0\0009\1\1\1:\1\1\1L\1\2\0\0¿\vorange\15is_focused≤\a\1\0\r\0000\0m6\0\0\0009\0\1\0B\0\1\0026\1\2\0'\3\3\0B\1\2\0029\1\4\0016\2\0\0009\2\5\2'\4\6\0'\5\a\0B\2\3\0016\2\0\0009\2\5\2'\4\b\0'\5\t\0B\2\3\0016\2\0\0009\2\5\2'\4\n\0'\5\v\0B\2\3\0016\2\0\0009\2\5\2'\4\f\0'\5\r\0B\2\3\0016\2\0\0009\2\5\2'\4\14\0'\5\15\0B\2\3\0016\2\0\0009\2\5\2'\4\16\0'\5\17\0B\2\3\1)\2\1\0)\3\t\0)\4\1\0M\2\14Ä6\6\0\0009\6\5\6'\b\18\0\18\n\b\0009\b\19\b\18\v\5\0B\b\3\2'\t\20\0\18\v\t\0009\t\19\t\18\f\5\0B\t\3\0A\6\1\1O\2Ú\1276\2\2\0'\4\21\0B\2\2\0029\2\22\0025\4\28\0005\5\24\0003\6\23\0=\6\25\5\18\6\1\0'\b\26\0'\t\27\0B\6\3\2=\6\27\5=\5\29\0045\5\30\0004\6\3\0005\a\31\0006\b \0=\b\25\a\18\b\1\0'\n!\0'\v\27\0B\b\3\2=\b\27\a>\a\1\6=\6\"\5=\5#\0044\5\a\0005\6%\0003\a$\0=\a&\6>\6\1\0055\6(\0003\a'\0=\a&\6>\6\2\0055\6*\0003\a)\0=\a&\6>\6\3\0055\6,\0003\a+\0=\a&\0063\a-\0=\a\25\6>\6\4\0055\6.\0>\6\5\0055\6/\0>\6\6\5=\5\"\4B\2\2\0012\0\0ÄK\0\1\0\1\0\1\ttext\6 \1\0\2\ttext\bÔôï delete_buffer_on_left_click\2\0\1\0\0\0\1\0\0\0\1\0\1\nstyle\vitalic\0\ttext\1\0\0\0\fsidebar\15components\18NeoTreeNormal\vyellow\1\0\2\ttext\15  EXPLORER\nstyle\tbold\1\0\1\rfiletype\rNvimTree\15default_hl\1\0\0\abg\16ColorColumn\afg\1\0\0\0\nsetup\rcokeline\30<Plug>(cokeline-focus-%s)\vformat\15<Leader>%s\17<cmd>%bd<cr>\f<A-S-w>\16<cmd>bd<cr>\n<A-w> <Plug>(cokeline-focus-next)\n<A-s> <Plug>(cokeline-focus-prev)\n<A-a>!<Plug>(cokeline-switch-next)\f<C-A-l>!<Plug>(cokeline-switch-prev)\f<C-A-h>\rnnoremap\fget_hex\19cokeline/utils\frequire\vcolors\aom\0" },
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
    config = { "\27LJ\2\nç\n\0\2\a\0\26\0:6\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0B\2\4\0019\2\5\0009\2\6\2\15\0\2\0X\3\4Ä6\2\0\0009\2\a\2'\4\b\0B\2\2\0019\2\5\0009\2\t\2\15\0\2\0X\3\6Ä6\2\0\0009\2\1\0029\2\n\2'\4\v\0+\5\1\0B\2\3\0019\2\5\0009\2\f\2\15\0\2\0X\3\aÄ6\2\r\0'\4\14\0B\2\2\0029\2\15\2\18\4\0\0\18\5\1\0B\2\3\0016\2\16\0009\2\17\2\18\4\1\0004\5\t\0005\6\18\0>\6\1\0055\6\19\0>\6\2\0055\6\20\0>\6\3\0055\6\21\0>\6\4\0055\6\22\0>\6\5\0055\6\23\0>\6\6\0055\6\24\0>\6\a\0055\6\25\0>\6\b\5B\2\3\1K\0\1\0\1\4\0\0\6n\14<space>ccO<cmd>lua vim.diagnostic.open_float(nil, {focus=false, scope=\"cursor\"})<CR>\1\4\0\0\6n\r<space>f*<cmd>lua vim.lsp.buf.formatting()<CR>\1\4\0\0\6n\14<space>ca+<cmd>lua vim.lsp.buf.code_action()<CR>\1\4\0\0\6n\14<space>rn&<cmd>lua vim.lsp.buf.rename()<CR>\1\4\0\0\6n\r<space>D/<cmd>lua vim.lsp.buf.type_definition()<CR>\1\4\0\0\6n\agi.<cmd>lua vim.lsp.buf.implementation()<CR>\1\4\0\0\6n\agd*<cmd>lua vim.lsp.buf.definition()<CR>\1\4\0\0\6n\agD+<cmd>lua vim.lsp.buf.declaration()<CR>\16bufmap_keys\aom\vattach\15nvim-navic\frequire\27documentSymbolProvider˘\1        augroup lsp_document_highlight\n          autocmd! * <buffer>\n          autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()\n          autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()\n        augroup END\n      \14nvim_exec\22documentHighlightõ\1        augroup LspFormatting\n          autocmd! * <buffer>\n          autocmd BufWritePre <buffer> lua vim.lsp.buf.format()\n        augroup END\n      \bcmd\31documentFormattingProvider\24server_capabilities\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvimí\6\1\0\v\0$\0N6\0\0\0009\0\1\0009\0\2\0005\2\3\0B\0\2\0015\0\4\0006\1\5\0\18\3\0\0B\1\2\4H\4\fÄ'\6\6\0\18\a\4\0&\6\a\0066\a\0\0009\a\a\a9\a\b\a\18\t\6\0005\n\t\0=\5\n\n=\6\v\n=\6\f\nB\a\3\1F\4\3\3R\4Ú\1276\1\0\0009\1\r\0019\1\14\0019\1\15\1B\1\1\0026\2\16\0009\2\r\0026\3\18\0'\5\19\0B\3\2\0029\3\20\3\18\5\1\0B\3\2\2=\3\17\0026\2\16\0009\2\r\0029\2\17\0029\2\21\0029\2\22\0029\2\23\2+\3\2\0=\3\24\0026\2\16\0009\2\r\0029\2\17\0029\2\21\0029\2\22\0029\2\23\0025\3\27\0005\4\26\0=\4\28\3=\3\25\0026\2\16\0009\2\r\0029\2\17\0029\2\21\0025\3!\0005\4 \0006\5\0\0009\5\30\0059\a\21\0019\a\29\a9\a\25\a9\a\28\a5\b\31\0B\5\3\2=\5\28\4=\4\25\3=\3\29\0026\2\16\0009\2\r\0023\3#\0=\3\"\2K\0\1\0\0\14on_attach\1\0\0\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\16list_extend\15codeAction\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\25default_capabilities\17cmp_nvim_lsp\frequire\17capabilities\aom\29make_client_capabilities\rprotocol\blsp\nnumhl\vtexthl\ttext\1\0\0\16sign_define\afn\19DiagnosticSign\npairs\1\0\4\tHint\tÔÇ£ \tWarn\tÔÅ± \tInfo\tÔüª \nError\tÔôò \1\0\3\nsigns\2\14underline\2\17virtual_text\1\vconfig\15diagnostic\bvim\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-navic"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/nvim-navic",
    url = "https://github.com/smiteshp/nvim-navic"
  },
  ["nvim-pqf.git"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/nvim-pqf.git",
    url = "https://gitlab.com/yorickpeterse/nvim-pqf"
  },
  ["nvim-scrollbar"] = {
    config = { "\27LJ\2\n¢\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\3=\3\t\2B\0\2\1K\0\1\0\nmarks\1\0\0\tWarn\1\0\1\14highlight\19GitSignsChange\nError\1\0\0\1\0\1\14highlight\19GitSignsDelete\nsetup\14scrollbar\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/nvim-scrollbar",
    url = "https://github.com/petertriho/nvim-scrollbar"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n≈\2\0\0\5\0\20\0\0266\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\0025\3\t\0005\4\b\0=\4\n\3=\3\v\0025\3\f\0=\3\r\2B\0\2\0016\0\14\0009\0\15\0'\2\16\0'\3\17\0B\0\3\0016\0\14\0009\0\18\0005\2\19\0B\0\2\1K\0\1\0\1\0\1\6b\28<cmd>NvimTreeToggle<cr>\20map_leader_keys\28<cmd>NvimTreeToggle<cr>\n<C-n>\rnnoremap\aom\23ignore_ft_on_setup\1\2\0\0\14gitcommit\ffilters\vcustom\1\0\0\1\2\0\0\v^.git$\rrenderer\1\0\0\19indent_markers\1\0\0\1\0\1\venable\2\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n¢\4\0\0\6\0\22\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\17\0005\4\14\0005\5\15\0=\5\16\4=\4\18\3=\3\19\0025\3\20\0=\3\21\2B\0\2\1K\0\1\0\fendwise\1\0\1\venable\2\16textobjects\vselect\1\0\0\fkeymaps\1\0\4\aif\20@function.inner\aac\17@class.outer\aic\17@class.inner\aaf\20@function.outer\1\0\2\14lookahead\2\venable\2\fautotag\1\0\1\venable\2\26context_commentstring\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\3&additional_vim_regex_highlighting\1\venable\2\21use_languagetree\2\21ensure_installed\1\0\0\1\16\0\0\ago\15typescript\15javascript\btsx\bhcl\14terraform\ngomod\thtml\bcss\tscss\tbash\vpython\tjson\tyaml\blua\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-endwise"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/nvim-treesitter-endwise",
    url = "https://github.com/RRethy/nvim-treesitter-endwise"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-various-textobjs"] = {
    config = { "\27LJ\2\nX\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\22useDefaultKeymaps\2\nsetup\21various-textobjs\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/nvim-various-textobjs",
    url = "https://github.com/chrisgrieser/nvim-various-textobjs"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
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
  ["sad.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\bsad\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/sad.nvim",
    url = "https://github.com/ray-x/sad.nvim"
  },
  ["searchbox.nvim"] = {
    config = { "\27LJ\2\nÒ\2\0\0\4\0\v\0\0266\0\0\0009\0\1\0'\2\2\0'\3\3\0B\0\3\0016\0\0\0009\0\1\0'\2\4\0'\3\5\0B\0\3\0016\0\0\0009\0\6\0'\2\4\0'\3\a\0B\0\3\0016\0\0\0009\0\1\0'\2\b\0'\3\t\0B\0\3\0016\0\0\0009\0\6\0'\2\b\0'\3\n\0B\0\3\1K\0\1\0J:SearchBoxReplace visual_mode=true -- <C-r>=expand(\"<cword>\")<cr><cr>9:SearchBoxReplace -- <C-r>=expand(\"<cword>\")<cr><cr>\15<leader>rn+:SearchBoxReplace visual_mode=true<cr>\rxnoremap\26:SearchBoxReplace<cr>\16<leader>rpl\28:SearchBoxIncSearch<cr>\n<A-f>\rnnoremap\aom\0" },
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
    config = { "\27LJ\2\nm\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\21backwards_tabkey\f<S-Tab>\15completion\2\vtabkey\n<Tab>\nsetup\vtabout\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/snio/.local/share/nvim/site/pack/packer/opt/tabout.nvim",
    url = "https://github.com/abecodes/tabout.nvim",
    wants = { "nvim-treesitter" }
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n’\2\0\0\6\0\14\0\0256\0\0\0'\2\1\0B\0\2\0029\1\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\0025\4\6\0005\5\5\0=\5\a\4B\2\2\1\18\2\1\0'\4\b\0'\5\t\0B\2\3\1\18\2\1\0'\4\n\0'\5\v\0B\2\3\1\18\2\1\0'\4\f\0'\5\r\0B\2\3\1K\0\1\0*<cmd>Trouble document_diagnostics<cr>\15<leader>xd+<cmd>Trouble workspace_diagnostics<cr>\15<leader>xw\27<cmd>TroubleToggle<cr>\15<leader>xx\nsigns\1\0\0\1\0\4\fwarning\bÔÅ±\nerror\bÔôò\16information\bÔüª\thint\bÔÇ£\nsetup\ftrouble\rnnoremap\15core.utils\frequire\0" },
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
  ["vim-tmux-navigator"] = {
    config = { "\27LJ\2\nD\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\1\0=\1\2\0K\0\1\0'tmux_navigator_disable_when_zoomed\6g\bvim\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  winresizer = {
    config = { "\27LJ\2\n>\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\f<C-A-r>\25winresizer_start_key\6g\bvim\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/winresizer",
    url = "https://github.com/simeji/winresizer"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: markdown-preview.nvim
time([[Setup for markdown-preview.nvim]], true)
try_loadstring("\27LJ\2\n=\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\2\0\0\rmarkdown\19mkdp_filetypes\6g\bvim\0", "setup", "markdown-preview.nvim")
time([[Setup for markdown-preview.nvim]], false)
-- Config for: numb.nvim
time([[Config for numb.nvim]], true)
try_loadstring("\27LJ\2\n2\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\tnumb\frequire\0", "config", "numb.nvim")
time([[Config for numb.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nó\4\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\4\ttext\bÔÉó\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\14topdelete\1\0\4\ttext\bÔÉò\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\vdelete\1\0\4\ttext\bÔÉó\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\vchange\1\0\4\ttext\b‚îÉ\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\badd\1\0\0\1\0\4\ttext\b‚îÉ\ahl\16GitSignsAdd\nnumhl\18GitSignsAddNr\vlinehl\18GitSignsAddLn\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: hlargs.nvim
time([[Config for hlargs.nvim]], true)
try_loadstring("\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vhlargs\frequire\0", "config", "hlargs.nvim")
time([[Config for hlargs.nvim]], false)
-- Config for: nvim-scrollbar
time([[Config for nvim-scrollbar]], true)
try_loadstring("\27LJ\2\n¢\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\3=\3\t\2B\0\2\1K\0\1\0\nmarks\1\0\0\tWarn\1\0\1\14highlight\19GitSignsChange\nError\1\0\0\1\0\1\14highlight\19GitSignsDelete\nsetup\14scrollbar\frequire\0", "config", "nvim-scrollbar")
time([[Config for nvim-scrollbar]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
try_loadstring("\27LJ\2\nû\3\0\0\4\0\16\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0'\2\6\0'\3\a\0B\0\3\0016\0\4\0009\0\b\0'\2\6\0'\3\a\0B\0\3\0016\0\4\0009\0\5\0'\2\t\0'\3\n\0B\0\3\0016\0\4\0009\0\5\0'\2\v\0'\3\f\0B\0\3\0016\0\4\0009\0\5\0'\2\v\0'\3\r\0B\0\3\0016\0\4\0009\0\5\0'\2\14\0'\3\15\0B\0\3\1K\0\1\0\28<cmd>Lspsaga rename<cr>\15<leader>gr+<cmd>Lspsaga show_line_diagnostics<cr>-<cmd>Lspsaga show_cursor_diagnostics<cr>\15<leader>cc\31<cmd>Lspsaga hover_doc<cr>\6K\rvnoremap!<cmd>Lspsaga code_action<cr>\15<leader>ca\rnnoremap\aom\1\0\1\21code_action_icon\5\nsetup\flspsaga\frequire\0", "config", "lspsaga.nvim")
time([[Config for lspsaga.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim˙\1\0\1\5\1\n\1 -\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\22Ä6\1\2\0009\1\3\0019\1\4\1)\3\1\0B\1\2\2\t\1\0\0X\1\5Ä6\1\5\0'\3\6\0'\4\a\0B\1\3\1X\1\nÄ6\1\b\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\t\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\rcomplete\21has_words_before\5!<Plug>(vsnip-expand-or-jump)\ffeedkey\20vsnip#available\afn\bvim\21select_next_item\fvisible\2Æ\1\0\0\4\1\b\1\21-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0B\0\1\1X\0\vÄ6\0\2\0009\0\3\0009\0\4\0)\2ˇˇB\0\2\2\t\0\0\0X\0\4Ä6\0\5\0'\2\6\0'\3\a\0B\0\3\1K\0\1\0\0¿\5\28<Plug>(vsnip-jump-prev)\ffeedkey\19vsnip#jumpable\afn\bvim\21select_prev_item\fvisible\2√\a\1\0\v\0006\0j6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\2'\3\6\0=\3\5\0029\2\a\0005\4\v\0005\5\t\0003\6\b\0=\6\n\5=\5\f\0049\5\r\0009\5\14\0054\a\3\0005\b\15\0>\b\1\a5\b\16\0>\b\2\a4\b\3\0005\t\17\0>\t\1\b5\t\18\0>\t\2\bB\5\3\2=\5\14\0045\5\21\0009\6\19\0015\b\20\0B\6\2\2=\6\22\5=\5\23\0045\5\27\0009\6\24\0009\b\24\0009\b\25\bB\b\1\0025\t\26\0B\6\3\2=\6\28\0059\6\r\0009\6\29\6=\6\30\0059\6\24\0005\b \0009\t\24\0009\t\31\tB\t\1\2=\t!\b9\t\24\0009\t\"\tB\t\1\2=\t#\bB\6\2\2=\6$\0059\6\24\0009\6%\0065\b&\0B\6\2\2=\6'\0059\6\24\0003\b(\0005\t)\0B\6\3\2=\6*\0059\6\24\0003\b+\0005\t,\0B\6\3\2=\6-\5=\5\24\4B\2\2\0015\2.\0006\3\3\0009\3/\0039\0030\3\18\4\3\0'\6!\0'\a1\0'\b2\0\18\t\2\0B\4\5\1\18\4\3\0'\0063\0'\a1\0'\b2\0\18\t\2\0B\4\5\1\18\4\3\0'\6!\0'\a4\0'\b5\0\18\t\2\0B\4\5\1\18\4\3\0'\0063\0'\a4\0'\b5\0\18\t\2\0B\4\5\0012\0\0ÄK\0\1\0Bvsnip#available(1) ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'\n<C-l>\6s:vsnip#expandable() ? '<Plug>(vsnip-expand)' : '<C-j>'\n<C-j>\20nvim_set_keymap\bapi\1\0\1\texpr\2\n<C-p>\1\3\0\0\6i\6s\0\n<C-n>\1\3\0\0\6i\6s\0\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\n<C-y>\fdisable\14<C-Space>\1\0\0\1\3\0\0\6i\6c\rcomplete\fmapping\15formatting\vformat\1\0\0\1\0\2\tmode\16symbol_text\14with_text\2\15cmp_format\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup%/home/snio/.config/nvim/snippets\22vsnip_snippet_dir\6g\bvim\flspkind\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: fidget.nvim
time([[Config for fidget.nvim]], true)
try_loadstring("\27LJ\2\nn\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\vwindow\1\0\1\nblend\3\0\ttext\1\0\0\1\0\1\tdone\bÔÅò\nsetup\vfidget\frequire\0", "config", "fidget.nvim")
time([[Config for fidget.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n¢\4\0\0\6\0\22\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\17\0005\4\14\0005\5\15\0=\5\16\4=\4\18\3=\3\19\0025\3\20\0=\3\21\2B\0\2\1K\0\1\0\fendwise\1\0\1\venable\2\16textobjects\vselect\1\0\0\fkeymaps\1\0\4\aif\20@function.inner\aac\17@class.outer\aic\17@class.inner\aaf\20@function.outer\1\0\2\14lookahead\2\venable\2\fautotag\1\0\1\venable\2\26context_commentstring\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\3&additional_vim_regex_highlighting\1\venable\2\21use_languagetree\2\21ensure_installed\1\0\0\1\16\0\0\ago\15typescript\15javascript\btsx\bhcl\14terraform\ngomod\thtml\bcss\tscss\tbash\vpython\tjson\tyaml\blua\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n’\2\0\0\6\0\14\0\0256\0\0\0'\2\1\0B\0\2\0029\1\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\0025\4\6\0005\5\5\0=\5\a\4B\2\2\1\18\2\1\0'\4\b\0'\5\t\0B\2\3\1\18\2\1\0'\4\n\0'\5\v\0B\2\3\1\18\2\1\0'\4\f\0'\5\r\0B\2\3\1K\0\1\0*<cmd>Trouble document_diagnostics<cr>\15<leader>xd+<cmd>Trouble workspace_diagnostics<cr>\15<leader>xw\27<cmd>TroubleToggle<cr>\15<leader>xx\nsigns\1\0\0\1\0\4\fwarning\bÔÅ±\nerror\bÔôò\16information\bÔüª\thint\bÔÇ£\nsetup\ftrouble\rnnoremap\15core.utils\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: glance.nvim
time([[Config for glance.nvim]], true)
try_loadstring("\27LJ\2\nÕ\2\0\0\5\0\15\0#6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0B\0\4\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\t\0'\4\n\0B\0\4\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\v\0'\4\f\0B\0\4\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\r\0'\4\14\0B\0\4\1K\0\1\0$<cmd>Glance implementations<cr>\15<leader>gi%<cmd>Glance type_definitions<cr>\agt\31<cmd>Glance references<cr>\agr <cmd>Glance definitions<cr>\15<leader>gd\6n\bset\vkeymap\bvim\nsetup\vglance\frequire\0", "config", "glance.nvim")
time([[Config for glance.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nç\n\0\2\a\0\26\0:6\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0B\2\4\0019\2\5\0009\2\6\2\15\0\2\0X\3\4Ä6\2\0\0009\2\a\2'\4\b\0B\2\2\0019\2\5\0009\2\t\2\15\0\2\0X\3\6Ä6\2\0\0009\2\1\0029\2\n\2'\4\v\0+\5\1\0B\2\3\0019\2\5\0009\2\f\2\15\0\2\0X\3\aÄ6\2\r\0'\4\14\0B\2\2\0029\2\15\2\18\4\0\0\18\5\1\0B\2\3\0016\2\16\0009\2\17\2\18\4\1\0004\5\t\0005\6\18\0>\6\1\0055\6\19\0>\6\2\0055\6\20\0>\6\3\0055\6\21\0>\6\4\0055\6\22\0>\6\5\0055\6\23\0>\6\6\0055\6\24\0>\6\a\0055\6\25\0>\6\b\5B\2\3\1K\0\1\0\1\4\0\0\6n\14<space>ccO<cmd>lua vim.diagnostic.open_float(nil, {focus=false, scope=\"cursor\"})<CR>\1\4\0\0\6n\r<space>f*<cmd>lua vim.lsp.buf.formatting()<CR>\1\4\0\0\6n\14<space>ca+<cmd>lua vim.lsp.buf.code_action()<CR>\1\4\0\0\6n\14<space>rn&<cmd>lua vim.lsp.buf.rename()<CR>\1\4\0\0\6n\r<space>D/<cmd>lua vim.lsp.buf.type_definition()<CR>\1\4\0\0\6n\agi.<cmd>lua vim.lsp.buf.implementation()<CR>\1\4\0\0\6n\agd*<cmd>lua vim.lsp.buf.definition()<CR>\1\4\0\0\6n\agD+<cmd>lua vim.lsp.buf.declaration()<CR>\16bufmap_keys\aom\vattach\15nvim-navic\frequire\27documentSymbolProvider˘\1        augroup lsp_document_highlight\n          autocmd! * <buffer>\n          autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()\n          autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()\n        augroup END\n      \14nvim_exec\22documentHighlightõ\1        augroup LspFormatting\n          autocmd! * <buffer>\n          autocmd BufWritePre <buffer> lua vim.lsp.buf.format()\n        augroup END\n      \bcmd\31documentFormattingProvider\24server_capabilities\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvimí\6\1\0\v\0$\0N6\0\0\0009\0\1\0009\0\2\0005\2\3\0B\0\2\0015\0\4\0006\1\5\0\18\3\0\0B\1\2\4H\4\fÄ'\6\6\0\18\a\4\0&\6\a\0066\a\0\0009\a\a\a9\a\b\a\18\t\6\0005\n\t\0=\5\n\n=\6\v\n=\6\f\nB\a\3\1F\4\3\3R\4Ú\1276\1\0\0009\1\r\0019\1\14\0019\1\15\1B\1\1\0026\2\16\0009\2\r\0026\3\18\0'\5\19\0B\3\2\0029\3\20\3\18\5\1\0B\3\2\2=\3\17\0026\2\16\0009\2\r\0029\2\17\0029\2\21\0029\2\22\0029\2\23\2+\3\2\0=\3\24\0026\2\16\0009\2\r\0029\2\17\0029\2\21\0029\2\22\0029\2\23\0025\3\27\0005\4\26\0=\4\28\3=\3\25\0026\2\16\0009\2\r\0029\2\17\0029\2\21\0025\3!\0005\4 \0006\5\0\0009\5\30\0059\a\21\0019\a\29\a9\a\25\a9\a\28\a5\b\31\0B\5\3\2=\5\28\4=\4\25\3=\3\29\0026\2\16\0009\2\r\0023\3#\0=\3\"\2K\0\1\0\0\14on_attach\1\0\0\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\16list_extend\15codeAction\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\25default_capabilities\17cmp_nvim_lsp\frequire\17capabilities\aom\29make_client_capabilities\rprotocol\blsp\nnumhl\vtexthl\ttext\1\0\0\16sign_define\afn\19DiagnosticSign\npairs\1\0\4\tHint\tÔÇ£ \tWarn\tÔÅ± \tInfo\tÔüª \nError\tÔôò \1\0\3\nsigns\2\14underline\2\17virtual_text\1\vconfig\15diagnostic\bvim\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-comment
time([[Config for nvim-comment]], true)
try_loadstring("\27LJ\2\n∫\1\0\0\a\0\t\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0029\1\5\0009\2\6\0\18\3\1\0'\5\a\0'\6\b\0B\3\3\1\18\3\2\0'\5\a\0'\6\b\0B\3\3\1K\0\1\0\23:CommentToggle<cr>\n<C-_>\rvnoremap\rnnoremap\15core.utils\1\0\1\18comment_empty\1\nsetup\17nvim_comment\frequire\0", "config", "nvim-comment")
time([[Config for nvim-comment]], false)
-- Config for: searchbox.nvim
time([[Config for searchbox.nvim]], true)
try_loadstring("\27LJ\2\nÒ\2\0\0\4\0\v\0\0266\0\0\0009\0\1\0'\2\2\0'\3\3\0B\0\3\0016\0\0\0009\0\1\0'\2\4\0'\3\5\0B\0\3\0016\0\0\0009\0\6\0'\2\4\0'\3\a\0B\0\3\0016\0\0\0009\0\1\0'\2\b\0'\3\t\0B\0\3\0016\0\0\0009\0\6\0'\2\b\0'\3\n\0B\0\3\1K\0\1\0J:SearchBoxReplace visual_mode=true -- <C-r>=expand(\"<cword>\")<cr><cr>9:SearchBoxReplace -- <C-r>=expand(\"<cword>\")<cr><cr>\15<leader>rn+:SearchBoxReplace visual_mode=true<cr>\rxnoremap\26:SearchBoxReplace<cr>\16<leader>rpl\28:SearchBoxIncSearch<cr>\n<A-f>\rnnoremap\aom\0", "config", "searchbox.nvim")
time([[Config for searchbox.nvim]], false)
-- Config for: diffview.nvim
time([[Config for diffview.nvim]], true)
try_loadstring("\27LJ\2\nÉ\t\0\0\t\0;\0w6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\0\0'\3\3\0B\1\2\0029\1\4\0015\3\5\0005\4\6\0=\4\a\0035\4\t\0005\5\b\0=\5\n\0045\5\v\0=\5\f\0045\5\r\0=\5\14\4=\4\15\0035\4\16\0=\4\17\0035\4\19\0005\5\18\0=\5\20\4=\4\21\3B\1\2\0016\1\0\0'\3\22\0B\1\2\0029\1\4\0015\3\23\0005\4\25\0005\5\24\0=\5\26\4=\4\27\0035\4\28\0005\5\30\0\18\6\0\0'\b\29\0B\6\2\2=\6\31\5\18\6\0\0'\b \0B\6\2\2=\6!\5\18\6\0\0'\b\"\0B\6\2\2=\6#\5\18\6\0\0'\b$\0B\6\2\2=\6%\5=\5&\0045\5'\0\18\6\0\0'\b(\0B\6\2\2=\6)\5\18\6\0\0'\b(\0B\6\2\2=\6*\5\18\6\0\0'\b+\0B\6\2\2=\6,\5\18\6\0\0'\b+\0B\6\2\2=\6-\5\18\6\0\0'\b.\0B\6\2\2=\6/\5\18\6\0\0'\b.\0B\6\2\2=\0060\5\18\6\0\0'\b.\0B\6\2\2=\0061\5\18\6\0\0'\b2\0B\6\2\2=\0063\5\18\6\0\0'\b4\0B\6\2\2=\0065\5\18\6\0\0'\b6\0B\6\2\2=\0067\5\18\6\0\0'\b8\0B\6\2\2=\0069\5\18\6\0\0'\b\29\0B\6\2\2=\6\31\5\18\6\0\0'\b \0B\6\2\2=\6!\5\18\6\0\0'\b\"\0B\6\2\2=\6#\5\18\6\0\0'\b$\0B\6\2\2=\6%\5=\5\27\4=\4:\3B\1\2\1K\0\1\0\17key_bindings\6R\18refresh_files\6U\16unstage_all\6S\14stage_all\6-\23toggle_stage_entry\18<2-LeftMouse>\6o\t<cr>\17select_entry\t<up>\6k\15prev_entry\v<down>\6j\15next_entry\1\0\1\6q\18<cmd>tabc<cr>\tview\14<leader>b\17toggle_files\14<leader>e\16focus_files\f<s-tab>\22select_prev_entry\n<tab>\1\0\0\22select_next_entry\1\0\1\21disable_defaults\1\15file_panel\15win_config\1\0\0\1\0\2\rposition\tleft\nwidth\3 \1\0\2\18diff_binaries\1\14use_icons\2\rdiffview\rsections\vrecent\1\0\0\1\0\1\vfolded\1\17integrations\1\0\1\rdiffview\2\nsigns\thunk\1\3\0\0\5\5\titem\1\3\0\0\bÔÉö\bÔÉó\fsection\1\0\0\1\3\0\0\bÔë†\bÔëº\vstatus\1\0\1\24recent_commit_count\3\n\1\0\4\"disable_builtin_notifications\2!disable_context_highlighting\1\17disable_hint\1\18disable_signs\1\nsetup\vneogit\22diffview_callback\20diffview.config\frequire\0", "config", "diffview.nvim")
time([[Config for diffview.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nÜ\1\0\0\3\1\b\0\16-\0\0\0006\1\0\0009\1\1\0019\1\2\1B\1\1\0029\1\3\0018\0\1\0\6\0\4\0X\1\4Ä\6\0\5\0X\1\2Ä\a\0\6\0X\1\1ÄL\0\2\0'\1\a\0L\1\2\0\1¿\5\14--SHELL--\16--COMMAND--\15--NORMAL--\tmode\18nvim_get_mode\bapi\bvimK\0\0\4\0\5\0\t'\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0B\1\2\2'\2\4\0&\0\2\0L\0\2\0\6|\24nvim_win_get_number\bapi\bvim\6W|\0\0\3\0\b\0\0146\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\bÄ5\1\4\0009\2\3\0=\2\3\0019\2\5\0=\2\6\0019\2\a\0=\2\a\1L\1\2\0K\0\1\0\fremoved\rmodified\fchanged\1\0\0\nadded\25gitsigns_status_dict\6b\bvimi\0\0\6\0\6\0\r6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3'\2\4\0\18\3\0\0'\4\5\0\18\5\1\0&\2\5\2L\2\2\0\v, Col \bLn \24nvim_win_get_cursor\bapi\bvim\vunpack7\0\0\3\0\3\0\0056\0\0\0009\0\1\0009\0\2\0)\2\0\0D\0\2\0\24nvim_buf_line_count\bapi\bvim¢\v\1\0\15\0;\0[6\0\0\0009\0\1\0B\0\1\0025\1\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\0035\4\a\0=\4\b\0036\4\t\0=\4\n\0035\4\v\0005\5\f\0=\5\r\0045\5\14\0=\5\15\0045\5\19\0005\6\17\0009\a\16\0:\a\1\a=\a\18\6=\6\20\0055\6\22\0009\a\21\0:\a\1\a=\a\18\6=\6\23\5=\5\24\0045\5\25\0=\5\b\0043\5\26\0007\5\27\0003\5\28\0003\6\29\0003\a\30\0003\b\31\0006\t \0'\v!\0B\t\2\0029\t\"\t5\v(\0005\f#\0005\r%\0005\14$\0=\14&\r=\r'\f=\f)\v5\f*\0004\r\3\0>\2\1\r=\r+\f4\r\3\0>\4\1\r=\r,\f4\r\3\0006\14\27\0>\14\1\r=\r-\f5\r.\0=\r/\f5\r0\0=\r1\f5\r2\0=\r3\f=\f\15\v5\f4\0004\r\3\0>\2\1\r=\r+\f4\r\3\0>\4\1\r=\r,\f4\r\3\0006\14\27\0>\14\1\r=\r-\f5\r5\0=\r/\f5\r6\0=\r1\f4\r\0\0=\r3\f=\f7\v4\f\0\0=\f8\v5\f9\0=\f:\vB\t\2\0012\0\0ÄK\0\1\0\15extensions\1\2\0\0\bfzf\ftabline\22inactive_sections\1\2\0\0\rlocation\1\3\0\0\rfiletype\rencoding\1\0\0\14lualine_z\1\2\0\0\rprogress\14lualine_y\1\2\0\0\rlocation\14lualine_x\1\3\0\0\rfiletype\rencoding\14lualine_c\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\23disabled_filetypes\15statusline\1\0\0\1\2\0\0\rNvimTree\1\0\3\ntheme\fsonokai\25component_separators\5\23section_separators\5\nsetup\flualine\frequire\0\0\0\0\vmode_m\0\1\0\2\twarn\tÔÅ± \nerror\tÔôò \22diagnostics_color\twarn\1\0\0\vorange\nerror\1\0\0\afg\1\0\0\bred\rsections\1\3\0\0\nerror\twarn\fsources\1\2\0\0\20nvim_diagnostic\1\2\1\0\16diagnostics\19always_visible\2\vsource\16diff_source\fsymbols\1\0\3\rmodified\6~\fremoved\6-\nadded\6+\15diff_color\1\0\3\rmodified\15DiffChange\fremoved\15DiffDelete\nadded\fDiffAdd\1\2\1\0\tdiff\fcolored\2\1\2\1\0\vbranch\ticon\bÓú•\1\0\"\6n\15--NORMAL--\ar?\fCONFIRM\6r\fREPLACE\arm\tMORE\ace\aEX\6i\vINSERT\acv\aEX\6R\fREPLACE\bRvx\14V-REPLACE\bRvc\14V-REPLACE\ant\15--NORMAL--\aRv\14V-REPLACE\aRx\fREPLACE\aRc\fREPLACE\bnov\14O-PENDING\aix\vINSERT\6S\vS-LINE\tÔøΩs\fV-BLOCK\bÔøΩ\fS-BLOCK\aVs\vV-LINE\6V\vV-LINE\avs\vVISUAL\bniV\15--NORMAL--\bniR\15--NORMAL--\bniI\15--NORMAL--\nnoÔøΩ\14O-PENDING\bnoV\14O-PENDING\6c\16--COMMAND--\ano\14O-PENDING\6t\rTERMINAL\aic\vINSERT\6s\vSELECT\6v\vVISUAL\6!\14--SHELL--\vcolors\aom\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
try_loadstring("\27LJ\2\nÍ\1\0\0\5\0\r\0\0166\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0006\3\4\0009\3\5\0039\3\6\0039\3\a\3=\3\b\0025\3\n\0005\4\t\0=\4\v\3=\3\f\2B\0\2\1K\0\1\0\aui\nicons\1\0\0\1\0\3\24package_uninstalled\bÔÑå\22package_installed\bÔÅò\20package_pending\bÔÇ©\14log_level\nDEBUG\vlevels\blog\bvim\1\0\1\30max_concurrent_installers\3\n\nsetup\nmason\frequire\0", "config", "mason.nvim")
time([[Config for mason.nvim]], false)
-- Config for: winresizer
time([[Config for winresizer]], true)
try_loadstring("\27LJ\2\n>\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\f<C-A-r>\25winresizer_start_key\6g\bvim\0", "config", "winresizer")
time([[Config for winresizer]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n†\1\0\0\3\0\b\0\0156\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\4\0006\0\5\0'\2\6\0B\0\2\0029\0\a\0004\2\0\0B\0\2\1K\0\1\0\nsetup\21indent_blankline\frequire$indent_blankline_use_treesitter\6:\26indent_blankline_char\6g\bvim\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n+\0\0\2\1\1\0\3-\0\0\0009\0\0\0D\0\1\0\0¿\26check_break_line_charŒ\3\1\0\t\0\24\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0005\2\4\0005\3\5\0005\4\6\0=\4\a\0036\4\b\0009\4\t\4'\6\n\0'\a\v\0'\b\f\0B\4\4\2=\4\r\3=\3\14\2B\0\2\0016\0\0\0'\2\3\0B\0\2\0026\1\15\0003\2\17\0=\2\16\0016\1\18\0009\1\19\1'\3\20\0'\4\21\0'\5\22\0005\6\23\0B\1\5\0012\0\0ÄK\0\1\0\1\0\2\texpr\2\fnoremap\2\20v:lua.confirm()\t<cr>\6i\rmap_opts\aom\0\fconfirm\a_G\14fast_wrap\fpattern\5\b%s+\25 [%'%\"%)%>%]%)%}%,] \tgsub\vstring\nchars\1\6\0\0\6{\6[\6(\6\"\6'\1\0\5\16check_comma\2\15hightlight\vSearch\tkeys\31qwertyuiopzxcvbnmasdfghjkl\fend_key\6$\bmap\n<A-e>\1\0\3\rcheck_ts\2\17map_complete\2\vmap_cr\2\19nvim-autopairs\nsetup\20nvim-ts-autotag\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: git-conflict.nvim
time([[Config for git-conflict.nvim]], true)
try_loadstring("\27LJ\2\nR\0\0\3\0\4\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\bpqf\nsetup\17git-conflict\frequire\0", "config", "git-conflict.nvim")
time([[Config for git-conflict.nvim]], false)
-- Config for: mason-lspconfig.nvim
time([[Config for mason-lspconfig.nvim]], true)
try_loadstring("\27LJ\2\nh\0\1\5\1\6\0\14-\1\0\0008\1\0\0019\1\0\0015\3\4\0006\4\1\0009\4\2\0049\4\3\4=\4\3\0036\4\1\0009\4\2\0049\4\5\4=\4\5\3B\1\2\1K\0\1\0\0¿\17capabilities\1\0\0\14on_attach\blsp\aom\nsetupí\1\0\2\4\0\4\0\n9\2\0\0+\3\1\0=\3\1\0029\2\0\0+\3\1\0=\3\2\0029\2\0\0+\3\1\0=\3\3\2K\0\1\0$documentRangeFormattingProvider\31documentFormattingProvider\24document_formatting\24server_capabilitiesÒ\b\1\0\6\2\28\0/4\0\0\0004\1\0\0003\2\0\0-\3\0\0\a\3\1\0X\3\14Ä5\3\3\0005\4\2\0=\4\4\3\18\0\3\0005\3\b\0005\4\6\0005\5\5\0=\5\a\4=\4\t\0035\4\v\0005\5\n\0=\5\a\4=\4\f\3\18\1\3\0-\3\0\0\a\3\r\0X\3\1Ä5\0\14\0-\3\0\0\a\3\15\0X\3\6Ä5\3\19\0005\4\17\0005\5\16\0=\5\18\4=\4\15\3\18\1\3\0-\3\1\0-\4\0\0008\3\4\0039\3\20\0035\5\21\0=\0\22\5=\2\23\5=\1\24\5B\3\2\0016\3\25\0009\3\26\3'\5\27\0B\3\2\1K\0\1\0\6¿\0¿\29do User LspAttachBuffers\bcmd\bvim\rsettings\14on_attach\17init_options\1\0\0\nsetup\1\0\0\nhints\1\0\0\1\0\a\23rangeVariableTypes\2\19parameterNames\2\27functionTypeParameters\2\19constantValues\2\26compositeLiteralTypes\2\27compositeLiteralFields\2\24assignVariableTypes\2\ngopls\1\0\1\venable\1\vdenols\15javascript\1\0\0\1\0\a#includeInlayParameterNameHints\ball%includeInlayEnumMemberValueHints\2,includeInlayFunctionLikeReturnTypeHints\2-includeInlayPropertyDeclarationTypeHints\2\"includeInlayVariableTypeHints\2+includeInlayFunctionParameterTypeHints\2:includeInlayParameterNameHintsWhenArgumentMatchesName\1\15typescript\1\0\0\15inlayHints\1\0\0\1\0\a#includeInlayParameterNameHints\ball%includeInlayEnumMemberValueHints\2,includeInlayFunctionLikeReturnTypeHints\2-includeInlayPropertyDeclarationTypeHints\2\"includeInlayVariableTypeHints\2+includeInlayFunctionParameterTypeHints\2:includeInlayParameterNameHintsWhenArgumentMatchesName\1\16preferences\1\0\0\1\0\1$importModuleSpecifierPreference\21project-relative\rtsserver\0N\0\1\v\0\3\0\r4\1\0\0006\2\0\0\18\4\0\0B\2\2\4H\5\5Ä6\a\1\0009\a\2\a\18\t\1\0\18\n\5\0B\a\3\1F\5\3\3R\5˘\127L\1\2\0\vinsert\ntable\npairsË\4\1\0\n\0\17\0+6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\0025\3\6\0=\3\5\0024\2\0\0006\3\a\0009\3\b\3\18\5\2\0003\6\t\0B\3\3\0016\3\n\0006\5\3\0009\5\4\0059\5\5\5B\3\2\4H\6\3Ä3\b\v\0<\b\6\0022\6\0ÄF\6\3\3R\6˚\1273\3\f\0007\3\r\0009\3\14\0015\5\15\0006\6\r\0006\b\3\0009\b\4\b9\b\5\bB\6\2\2=\6\r\5B\3\2\0019\3\16\1\18\5\2\0B\3\2\0012\0\0ÄK\0\1\0\19setup_handlers\1\0\1\27automatic_installation\2\nsetup\21ensure_installed\0\0\npairs\0\vinsert\ntable\1\0\f\vbashls\25bash-language-server\ngopls\ngopls\rdockerls\31dockerfile-language-server\veslint\15eslint-lsp\14ansiblels\28ansible-language-server\rtsserver\31typescript-language-server\ncssls\fcss-lsp\16tailwindcss tailwindcss-language-server\vjsonls\rjson-lsp\vyamlls\25yaml-language-server\vdenols\tdeno\npylsp\22python-lsp-server\fservers\blsp\aom\20mason-lspconfig\14lspconfig\frequire\0", "config", "mason-lspconfig.nvim")
time([[Config for mason-lspconfig.nvim]], false)
-- Config for: sad.nvim
time([[Config for sad.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\bsad\frequire\0", "config", "sad.nvim")
time([[Config for sad.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n≈\2\0\0\5\0\20\0\0266\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\0025\3\t\0005\4\b\0=\4\n\3=\3\v\0025\3\f\0=\3\r\2B\0\2\0016\0\14\0009\0\15\0'\2\16\0'\3\17\0B\0\3\0016\0\14\0009\0\18\0005\2\19\0B\0\2\1K\0\1\0\1\0\1\6b\28<cmd>NvimTreeToggle<cr>\20map_leader_keys\28<cmd>NvimTreeToggle<cr>\n<C-n>\rnnoremap\aom\23ignore_ft_on_setup\1\2\0\0\14gitcommit\ffilters\vcustom\1\0\0\1\2\0\0\v^.git$\rrenderer\1\0\0\19indent_markers\1\0\0\1\0\1\venable\2\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-various-textobjs
time([[Config for nvim-various-textobjs]], true)
try_loadstring("\27LJ\2\nX\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\22useDefaultKeymaps\2\nsetup\21various-textobjs\frequire\0", "config", "nvim-various-textobjs")
time([[Config for nvim-various-textobjs]], false)
-- Config for: vim-tmux-navigator
time([[Config for vim-tmux-navigator]], true)
try_loadstring("\27LJ\2\nD\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\1\0=\1\2\0K\0\1\0'tmux_navigator_disable_when_zoomed\6g\bvim\0", "config", "vim-tmux-navigator")
time([[Config for vim-tmux-navigator]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
try_loadstring("\27LJ\2\nÆ\3\0\0\6\0\23\00096\0\0\0'\2\1\0B\0\2\0024\1\f\0009\2\2\0009\2\3\0029\2\4\2>\2\1\0019\2\2\0009\2\3\0029\2\5\2>\2\2\0019\2\2\0009\2\6\0029\2\a\2>\2\3\0019\2\2\0009\2\6\0029\2\b\2>\2\4\0019\2\2\0009\2\6\0029\2\t\2>\2\5\0019\2\2\0009\2\6\0029\2\n\2>\2\6\0019\2\2\0009\2\6\0029\2\v\2>\2\a\0019\2\2\0009\2\6\0029\2\f\2>\2\b\0019\2\2\0009\2\r\0029\2\14\2>\2\t\0019\2\2\0009\2\r\0029\2\15\2>\2\n\0019\2\2\0009\2\r\0029\2\16\2>\2\v\0019\2\17\0005\4\18\0=\1\19\0046\5\20\0009\5\21\0059\5\22\5=\5\22\4B\2\2\1K\0\1\0\14on_attach\blsp\aom\fsources\1\0\0\nsetup\16ansiblelint\18golangci_lint\vpylint\16diagnostics\fgolines\14goimports\ngofmt\rautopep8\rdeno_fmt\nshfmt\15formatting\veslint\16refactoring\17code_actions\rbuiltins\fnull-ls\frequire\0", "config", "null-ls.nvim")
time([[Config for null-ls.nvim]], false)
-- Config for: lsp_signature.nvim
time([[Config for lsp_signature.nvim]], true)
try_loadstring("\27LJ\2\nK\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\ffix_pos\2\nsetup\18lsp_signature\frequire\0", "config", "lsp_signature.nvim")
time([[Config for lsp_signature.nvim]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
try_loadstring("\27LJ\2\nå\4\0\0\5\0\"\00016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0029\0\5\0005\2\b\0005\3\6\0005\4\a\0>\4\2\3=\3\t\0025\3\n\0005\4\v\0>\4\2\3=\3\f\0025\3\r\0005\4\14\0>\4\2\3=\3\15\0025\3\16\0005\4\17\0>\4\2\3=\3\18\0025\3\19\0005\4\20\0>\4\2\3=\3\21\0025\3\22\0005\4\23\0>\4\2\3=\3\24\0025\3\25\0005\4\26\0>\4\2\3=\3\27\0025\3\28\0005\4\29\0>\4\2\3=\3\30\0025\3\31\0005\4 \0>\4\2\3=\3!\2B\0\2\1K\0\1\0\azb\1\2\0\0\b250\1\2\0\0\azb\azz\1\2\0\0\b250\1\2\0\0\azz\azt\1\2\0\0\b250\1\2\0\0\azt\n<C-e>\1\4\0\0\t0.10\nfalse\b100\1\2\0\0\vscroll\n<C-y>\1\4\0\0\n-0.10\nfalse\b100\1\2\0\0\vscroll\n<C-d>\1\4\0\0\18vim.wo.scroll\ttrue\b250\1\2\0\0\vscroll\n<C-u>\1\4\0\0\19-vim.wo.scroll\ttrue\b250\1\2\0\0\vscroll\n<C-f>\1\2\0\0\5\1\2\0\0\5\n<C-b>\1\0\0\1\2\0\0\5\1\2\0\0\5\17set_mappings\21neoscroll.config\1\0\1\16hide_cursor\1\nsetup\14neoscroll\frequire\0", "config", "neoscroll.nvim")
time([[Config for neoscroll.nvim]], false)
-- Config for: lspkind-nvim
time([[Config for lspkind-nvim]], true)
try_loadstring("\27LJ\2\nL\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tmode\16symbol_text\tinit\flspkind\frequire\0", "config", "lspkind-nvim")
time([[Config for lspkind-nvim]], false)
-- Config for: barbecue.nvim
time([[Config for barbecue.nvim]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vupdate\16barbecue.ui\frequireÀ\2\1\0\b\0\14\0\0226\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0005\2\a\0005\3\n\0006\4\4\0009\4\5\0049\4\b\4'\6\t\0004\a\0\0B\4\3\2=\4\v\0033\4\f\0=\4\r\3B\0\3\1K\0\1\0\rcallback\0\ngroup\1\0\0\28barbecue#create_autocmd\24nvim_create_augroup\1\b\0\0\16WinScrolled\16BufWinEnter\15CursorHold\16InsertLeave\17BufWritePost\16TextChanged\17TextChangedI\24nvim_create_autocmd\bapi\bvim\1\0\2\19create_autocmd\1\17attach_navic\1\nsetup\rbarbecue\frequire\0", "config", "barbecue.nvim")
time([[Config for barbecue.nvim]], false)
-- Config for: nvim-cokeline
time([[Config for nvim-cokeline]], true)
try_loadstring("\27LJ\2\n\\\0\1\5\2\4\0\r9\1\0\0\15\0\1\0X\2\5Ä-\1\0\0009\1\1\1:\1\1\1\14\0\1\0X\2\4Ä-\1\1\0'\3\2\0'\4\3\0B\1\3\2L\1\2\0\0¿\1¿\afg\fComment\vyellow\15is_focused&\0\1\4\0\3\0\5'\1\0\0009\2\1\0'\3\2\0&\1\3\1L\1\2\0\a: \nindex\6 \29\0\1\2\0\1\0\0029\1\0\0L\1\2\0\18unique_prefix\"\0\1\3\0\2\0\0049\1\0\0'\2\1\0&\1\2\1L\1\2\0\6 \rfilename5\0\1\2\0\3\0\a9\1\0\0\15\0\1\0X\2\2Ä'\1\1\0L\1\2\0'\1\2\0L\1\2\0\5\t‚óè \16is_modified7\0\1\2\1\2\0\a9\1\0\0\15\0\1\0X\2\3Ä-\1\0\0009\1\1\1:\1\1\1L\1\2\0\0¿\vorange\15is_focused≤\a\1\0\r\0000\0m6\0\0\0009\0\1\0B\0\1\0026\1\2\0'\3\3\0B\1\2\0029\1\4\0016\2\0\0009\2\5\2'\4\6\0'\5\a\0B\2\3\0016\2\0\0009\2\5\2'\4\b\0'\5\t\0B\2\3\0016\2\0\0009\2\5\2'\4\n\0'\5\v\0B\2\3\0016\2\0\0009\2\5\2'\4\f\0'\5\r\0B\2\3\0016\2\0\0009\2\5\2'\4\14\0'\5\15\0B\2\3\0016\2\0\0009\2\5\2'\4\16\0'\5\17\0B\2\3\1)\2\1\0)\3\t\0)\4\1\0M\2\14Ä6\6\0\0009\6\5\6'\b\18\0\18\n\b\0009\b\19\b\18\v\5\0B\b\3\2'\t\20\0\18\v\t\0009\t\19\t\18\f\5\0B\t\3\0A\6\1\1O\2Ú\1276\2\2\0'\4\21\0B\2\2\0029\2\22\0025\4\28\0005\5\24\0003\6\23\0=\6\25\5\18\6\1\0'\b\26\0'\t\27\0B\6\3\2=\6\27\5=\5\29\0045\5\30\0004\6\3\0005\a\31\0006\b \0=\b\25\a\18\b\1\0'\n!\0'\v\27\0B\b\3\2=\b\27\a>\a\1\6=\6\"\5=\5#\0044\5\a\0005\6%\0003\a$\0=\a&\6>\6\1\0055\6(\0003\a'\0=\a&\6>\6\2\0055\6*\0003\a)\0=\a&\6>\6\3\0055\6,\0003\a+\0=\a&\0063\a-\0=\a\25\6>\6\4\0055\6.\0>\6\5\0055\6/\0>\6\6\5=\5\"\4B\2\2\0012\0\0ÄK\0\1\0\1\0\1\ttext\6 \1\0\2\ttext\bÔôï delete_buffer_on_left_click\2\0\1\0\0\0\1\0\0\0\1\0\1\nstyle\vitalic\0\ttext\1\0\0\0\fsidebar\15components\18NeoTreeNormal\vyellow\1\0\2\ttext\15  EXPLORER\nstyle\tbold\1\0\1\rfiletype\rNvimTree\15default_hl\1\0\0\abg\16ColorColumn\afg\1\0\0\0\nsetup\rcokeline\30<Plug>(cokeline-focus-%s)\vformat\15<Leader>%s\17<cmd>%bd<cr>\f<A-S-w>\16<cmd>bd<cr>\n<A-w> <Plug>(cokeline-focus-next)\n<A-s> <Plug>(cokeline-focus-prev)\n<A-a>!<Plug>(cokeline-switch-next)\f<C-A-l>!<Plug>(cokeline-switch-prev)\f<C-A-h>\rnnoremap\fget_hex\19cokeline/utils\frequire\vcolors\aom\0", "config", "nvim-cokeline")
time([[Config for nvim-cokeline]], false)
-- Config for: sonokai
time([[Config for sonokai]], true)
try_loadstring("\27LJ\2\nâ\1\0\0\3\0\a\0\r6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0006\0\0\0009\0\5\0'\2\6\0B\0\2\1K\0\1\0\24colorscheme sonokai\bcmd\31sonokai_better_performance\vshusia\18sonokai_style\6g\bvim\0", "config", "sonokai")
time([[Config for sonokai]], false)
-- Conditional loads
time([[Conditional loading of fzf-lua]], true)
  require("packer.load")({"fzf-lua"}, {}, _G.packer_plugins)
time([[Conditional loading of fzf-lua]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd tabout.nvim ]]

-- Config for: tabout.nvim
try_loadstring("\27LJ\2\nm\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\21backwards_tabkey\f<S-Tab>\15completion\2\vtabkey\n<Tab>\nsetup\vtabout\frequire\0", "config", "tabout.nvim")

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
