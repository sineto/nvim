-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

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

  _G._packer = _G._packer or {}
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
    config = { "\27LJ\2\nÇ\6\0\0\t\0'\0_6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\0\0'\3\3\0B\1\2\0029\1\4\0015\3\5\0005\4\6\0=\4\a\0035\4\b\0005\5\n\0\18\6\0\0'\b\t\0B\6\2\2=\6\v\5\18\6\0\0'\b\f\0B\6\2\2=\6\r\5\18\6\0\0'\b\14\0B\6\2\2=\6\15\5\18\6\0\0'\b\16\0B\6\2\2=\6\17\5=\5\18\0045\5\20\0\18\6\0\0'\b\19\0B\6\2\2=\6\21\5\18\6\0\0'\b\19\0B\6\2\2=\6\22\5\18\6\0\0'\b\23\0B\6\2\2=\6\24\5\18\6\0\0'\b\23\0B\6\2\2=\6\25\5\18\6\0\0'\b\26\0B\6\2\2=\6\27\5\18\6\0\0'\b\26\0B\6\2\2=\6\28\5\18\6\0\0'\b\26\0B\6\2\2=\6\29\5\18\6\0\0'\b\30\0B\6\2\2=\6\31\5\18\6\0\0'\b \0B\6\2\2=\6!\5\18\6\0\0'\b\"\0B\6\2\2=\6#\5\18\6\0\0'\b$\0B\6\2\2=\6%\5\18\6\0\0'\b\t\0B\6\2\2=\6\v\5\18\6\0\0'\b\f\0B\6\2\2=\6\r\5\18\6\0\0'\b\14\0B\6\2\2=\6\15\5\18\6\0\0'\b\16\0B\6\2\2=\6\17\5=\5\a\4=\4&\3B\1\2\1K\0\1\0\17key_bindings\6R\18refresh_files\6U\16unstage_all\6S\14stage_all\6-\23toggle_stage_entry\18<2-LeftMouse>\6o\t<cr>\17select_entry\t<up>\6k\15prev_entry\v<down>\6j\1\0\0\15next_entry\tview\14<leader>b\17toggle_files\14<leader>e\16focus_files\f<s-tab>\22select_prev_entry\n<tab>\1\0\0\22select_next_entry\1\0\1\21disable_defaults\1\15file_panel\1\0\1\nwidth\3\25\1\0\2\18diff_binaries\1\14use_icons\2\nsetup\rdiffview\22diffview_callback\20diffview.config\frequire\0" },
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
  git_actions = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/git_actions",
    url = "/home/snio/.config/nvim/bundle/git_actions"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nó\4\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\4\ahl\19GitSignsChange\vlinehl\21GitSignsChangeLn\ttext\bÔÉó\nnumhl\21GitSignsChangeNr\14topdelete\1\0\4\ahl\19GitSignsDelete\vlinehl\21GitSignsDeleteLn\ttext\bÔÉò\nnumhl\21GitSignsDeleteNr\vdelete\1\0\4\ahl\19GitSignsDelete\vlinehl\21GitSignsDeleteLn\ttext\bÔÉó\nnumhl\21GitSignsDeleteNr\vchange\1\0\4\ahl\19GitSignsChange\vlinehl\21GitSignsChangeLn\ttext\b‚îÉ\nnumhl\21GitSignsChangeNr\badd\1\0\0\1\0\4\ahl\16GitSignsAdd\vlinehl\18GitSignsAddLn\ttext\b‚îÉ\nnumhl\18GitSignsAddNr\nsetup\rgitsigns\frequire\0" },
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
  ["lazygit.nvim"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/lazygit.nvim",
    url = "https://github.com/kdheepak/lazygit.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\nÖ\5\0\0\a\0\18\0$6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0029\1\5\0009\2\6\0\18\3\1\0'\5\a\0'\6\b\0B\3\3\1\18\3\2\0'\5\a\0'\6\t\0B\3\3\1\18\3\1\0'\5\n\0'\6\v\0B\3\3\1\18\3\1\0'\5\f\0'\6\r\0B\3\3\1\18\3\1\0'\5\14\0'\6\15\0B\3\3\1\18\3\1\0'\5\16\0'\6\17\0B\3\3\1K\0\1\0004<cmd>lua require(\"lspsaga.rename\").rename()<cr>\agrI<cmd>lua require(\"lspsaga.diagnostic\").show_cursor_diagnostics()<cr>\15<leader>ccC<cmd>lua require(\"lspsaga.signaturehelp\").signature_help()<cr>\ags=<cmd>lua require(\"lspsaga.hover\").render_hover_doc()<cr>\6KD:<C-U>lua require(\"lspsaga.codeaction\").range_code_action()<cr>=<cmd>lua require(\"lspsaga.codeaction\").code_action()<cr>\15<leader>ca\rxnoremap\rnnoremap\15main.utils\1\0\2\21code_action_icon\5\29use_saga_diagnostic_sign\1\18init_lsp_saga\flspsaga\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/tami5/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nK\0\0\4\0\5\0\t'\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0B\1\2\2'\2\4\0&\0\2\0L\0\2\0\6|\24nvim_win_get_number\bapi\bvim\6W9\0\0\2\0\4\0\6'\0\0\0006\1\1\0009\1\2\0019\1\3\1&\0\1\0L\0\2\0\18gitsigns_head\6b\bvim\n‚éá  |\0\0\3\0\b\0\0146\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\bÄ5\1\4\0009\2\3\0=\2\3\0019\2\5\0=\2\6\0019\2\a\0=\2\a\1L\1\2\0K\0\1\0\fremoved\rmodified\fchanged\1\0\0\nadded\25gitsigns_status_dict\6b\bvim≈\a\1\0\f\0005\0P6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0023\1\3\0003\2\4\0003\3\5\0005\4\6\0005\5\a\0=\5\b\0045\5\t\0=\5\n\4=\3\v\0045\5\f\0005\6\r\0=\6\14\0055\6\15\0=\6\16\0055\6\20\0005\a\18\0009\b\17\0:\b\1\b=\b\19\a=\a\21\0065\a\23\0009\b\22\0:\b\1\b=\b\19\a=\a\24\6=\6\25\0056\6\0\0'\b\26\0B\6\2\0029\6\27\0065\b\29\0005\t\28\0=\t\30\b5\t \0005\n\31\0=\n!\t5\n\"\0>\1\1\n=\n#\t4\n\3\0>\2\1\n>\4\2\n=\n$\t5\n%\0>\5\1\n=\n&\t5\n'\0=\n(\t5\n)\0=\n*\t=\t\16\b5\t,\0005\n+\0=\n!\t5\n-\0>\1\1\n=\n#\t4\n\3\0005\v.\0>\v\1\n>\4\2\n=\n$\t5\n/\0=\n&\t5\n0\0=\n(\t5\n1\0=\n*\t=\t2\b4\t\0\0=\t3\b4\t\0\0=\t4\bB\6\2\1K\0\1\0\15extensions\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rprogress\1\2\0\0\rfiletype\1\2\0\0\20b:gitsigns_head\1\3\0\0\0\rfilename\1\0\0\1\2\0\0\tmode\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\0\rfiletype\rencoding\14lualine_c\14lualine_b\1\3\0\0\0\rfilename\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\1\0\3\ntheme\fsonokai\25component_separators\5\23section_separators\5\nsetup\flualine\22diagnostics_color\twarn\1\0\0\vorange\nerror\1\0\0\afg\1\0\0\bred\rsections\1\3\0\0\nerror\twarn\fsources\1\2\0\0\20nvim_diagnostic\1\2\1\0\16diagnostics\19always_visible\2\vsource\fsymbols\1\0\3\rmodified\6~\nadded\6+\fremoved\6-\15diff_color\1\0\3\rmodified\15DiffChange\nadded\fDiffAdd\fremoved\15DiffDelete\1\2\1\0\tdiff\fcolored\2\0\0\0\vcolors\15main.utils\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["move.nvim"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/move.nvim",
    url = "https://github.com/fedepujol/move.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\n»\2\0\0\6\0\15\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\t\0005\4\6\0005\5\a\0=\5\b\4=\4\n\3=\3\v\2B\0\2\0016\0\0\0'\2\f\0B\0\2\0029\0\r\0005\2\14\0B\0\2\1K\0\1\0\1\0\1\6b\31<cmd>NeoTreeShowToggle<cr>\20map_leader_keys\15main.utils\15filesystem\19filtered_items\1\0\0\15never_show\1\5\0\0\t.git\17node_modules\19.tool-versions\n.idea\1\0\2\20hide_gitignored\1\fvisible\2\vwindow\1\0\1\nwidth\3 \1\0\1\25close_if_last_window\2\nsetup\rneo-tree\frequire\0" },
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
    config = { "\27LJ\2\nµ\2\0\0\6\0\18\0%6\0\0\0'\2\1\0B\0\2\0024\1\a\0009\2\2\0009\2\3\0029\2\4\2>\2\1\0019\2\2\0009\2\5\0029\2\6\2>\2\2\0019\2\2\0009\2\5\0029\2\a\2>\2\3\0019\2\2\0009\2\5\0029\2\b\2>\2\4\0019\2\2\0009\2\5\0029\2\t\2>\2\5\0019\2\2\0009\2\n\0029\2\v\2>\2\6\0019\2\f\0005\4\r\0=\1\14\0046\5\15\0009\5\16\0059\5\17\5=\5\17\4B\2\2\1K\0\1\0\14on_attach\blsp\aom\fsources\1\0\0\nsetup\18golangci_lint\16diagnostics\rprettier\fgolines\14goimports\ngofmt\15formatting\16refactoring\17code_actions\rbuiltins\fnull-ls\frequire\0" },
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
    loaded = true,
    only_config = true
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimâ\5\1\0\v\0)\0O6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\a\0005\5\5\0003\6\4\0=\6\6\5=\5\b\0049\5\t\0009\5\n\0054\a\3\0005\b\v\0>\b\1\a5\b\f\0>\b\2\a4\b\3\0005\t\r\0>\t\1\b5\t\14\0>\t\2\bB\5\3\2=\5\n\0045\5\17\0009\6\15\0015\b\16\0B\6\2\2=\6\18\5=\5\19\0045\5\23\0009\6\20\0009\b\20\0009\b\21\b)\n¸ˇB\b\2\0025\t\22\0B\6\3\2=\6\24\0059\6\20\0009\b\20\0009\b\21\b)\n\4\0B\b\2\0025\t\25\0B\6\3\2=\6\26\0059\6\20\0009\b\20\0009\b\27\bB\b\1\0025\t\28\0B\6\3\2=\6\29\0059\6\t\0009\6\30\6=\6\31\0059\6\20\0005\b!\0009\t\20\0009\t \tB\t\1\2=\t\"\b9\t\20\0009\t#\tB\t\1\2=\t$\bB\6\2\2=\6%\0059\6\20\0009\6&\0065\b'\0B\6\2\2=\6(\5=\5\20\4B\2\2\1K\0\1\0\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\n<C-y>\fdisable\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-b>\1\0\0\1\3\0\0\6i\6c\16scroll_docs\fmapping\15formatting\vformat\1\0\0\1\0\2\14with_text\2\tmode\16symbol_text\15cmp_format\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\flspkind\bcmp\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-cokeline"] = {
    config = { "\27LJ\2\n\\\0\1\5\2\4\0\r9\1\0\0\15\0\1\0X\2\5Ä-\1\0\0009\1\1\1:\1\1\1\14\0\1\0X\2\4Ä-\1\1\0'\3\2\0'\4\3\0B\1\3\2L\1\2\0\0¿\2¿\afg\fComment\vyellow\15is_focused*\0\1\3\0\3\0\5'\1\0\0009\2\1\0009\2\2\2&\1\2\1L\1\2\0\ticon\fdevicon\6 !\0\1\2\0\2\0\0039\1\0\0009\1\1\1L\1\2\0\ncolor\fdevicon \0\1\3\0\2\0\0049\1\0\0'\2\1\0&\1\2\1L\1\2\0\a: \nindex\29\0\1\2\0\1\0\0029\1\0\0L\1\2\0\18unique_prefix\"\0\1\3\0\2\0\0049\1\0\0'\2\1\0&\1\2\1L\1\2\0\6 \rfilename5\0\1\2\0\3\0\a9\1\0\0\15\0\1\0X\2\2Ä'\1\1\0L\1\2\0'\1\2\0L\1\2\0\5\t‚óè \16is_modified7\0\1\2\1\2\0\a9\1\0\0\15\0\1\0X\2\3Ä-\1\0\0009\1\1\1:\1\1\1L\1\2\0\0¿\vorange\15is_focusedã\a\1\0\14\0/\0j6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0026\1\0\0'\3\1\0B\1\2\0029\1\3\0016\2\0\0'\4\4\0B\2\2\0029\2\5\2\18\3\1\0'\5\6\0'\6\a\0B\3\3\1\18\3\1\0'\5\b\0'\6\t\0B\3\3\1\18\3\1\0'\5\n\0'\6\v\0B\3\3\1\18\3\1\0'\5\f\0'\6\r\0B\3\3\1)\3\1\0)\4\t\0)\5\1\0M\3\rÄ\18\a\1\0'\t\14\0\18\v\t\0009\t\15\t\18\f\6\0B\t\3\2'\n\16\0\18\f\n\0009\n\15\n\18\r\6\0B\n\3\0A\a\1\1O\3Û6\3\0\0'\5\17\0B\3\2\0029\3\18\0035\5\24\0005\6\20\0003\a\19\0=\a\21\6\18\a\2\0'\t\22\0'\n\23\0B\a\3\2=\a\23\6=\6\25\0055\6\26\0004\a\3\0005\b\27\0006\t\28\0=\t\21\b\18\t\2\0'\v\29\0'\f\23\0B\t\3\2=\t\23\b>\b\1\a=\a\30\6=\6\31\0054\6\b\0005\a!\0003\b \0=\b\"\a3\b#\0=\b\21\a>\a\1\0065\a%\0003\b$\0=\b\"\a>\a\2\0065\a'\0003\b&\0=\b\"\a>\a\3\0065\a)\0003\b(\0=\b\"\a>\a\4\0065\a+\0003\b*\0=\b\"\a3\b,\0=\b\21\a>\a\5\0065\a-\0>\a\6\0065\a.\0>\a\a\6=\6\30\5B\3\2\0012\0\0ÄK\0\1\0\1\0\1\ttext\6 \1\0\2\ttext\bÔôï delete_buffer_on_left_click\2\0\1\0\0\0\1\0\0\0\1\0\1\nstyle\vitalic\0\1\0\0\0\0\ttext\1\0\0\0\fsidebar\15components\18NeoTreeNormal\vyellow\1\0\2\ttext\14  NeoTree\nstyle\tbold\1\0\1\rfiletype\rneo-tree\15default_hl\1\0\0\abg\16ColorColumn\afg\1\0\0\0\nsetup\rcokeline\30<Plug>(cokeline-focus-%s)\vformat\15<Leader>%s <Plug>(cokeline-focus-next)\n<A-s> <Plug>(cokeline-focus-prev)\n<A-a>!<Plug>(cokeline-switch-next)\f<C-A-l>!<Plug>(cokeline-switch-prev)\f<C-A-h>\fget_hex\19cokeline/utils\rnnoremap\vcolors\15main.utils\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/nvim-cokeline",
    url = "https://github.com/noib3/nvim-cokeline"
  },
  ["nvim-lsp-installer"] = {
    after = { "null-ls.nvim" },
    loaded = true,
    only_config = true
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-treesitter-textobjects" },
    loaded = true,
    only_config = true
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
    config = { "\27LJ\2\nÎ\r\0\0\a\0L\0Ä\0015\0\0\0006\1\1\0'\3\2\0B\1\2\0029\1\3\0015\3J\0005\4\a\0005\5\4\0009\6\5\0=\6\6\5=\5\b\0045\5\t\0009\6\n\0=\6\6\5=\5\v\0045\5\f\0009\6\r\0=\6\6\5=\5\14\0045\5\15\0009\6\n\0=\6\6\5=\5\16\0045\5\17\0009\6\5\0=\6\6\5=\5\18\0045\5\19\0009\6\20\0=\6\6\5=\5\21\0045\5\22\0009\6\20\0=\6\6\5=\5\23\0045\5\24\0=\5\25\0045\5\26\0009\6\27\0=\6\6\5=\5\28\0045\5\29\0009\6\27\0=\6\6\5=\5\30\0045\5\31\0009\6\27\0=\6\6\5=\5 \0045\5!\0009\6\n\0=\6\6\5=\5\"\0045\5#\0009\6\n\0=\6\6\5=\5$\0045\5%\0009\6&\0=\6\6\5=\5'\0045\5(\0009\6&\0=\6\6\5=\5)\0045\5*\0009\6+\0=\6\6\5=\5,\0045\5-\0009\6+\0=\6\6\5=\5.\0045\5/\0009\6\n\0=\6\6\5=\0050\0045\0051\0009\6&\0=\6\6\5=\0052\0045\0053\0009\6\5\0=\6\6\5=\0054\0045\0055\0009\6\5\0=\6\6\5=\0056\0045\0057\0009\0068\0=\6\6\5=\0059\0045\5:\0009\6\5\0=\6\6\5=\5;\0045\5<\0009\6\n\0=\6\6\5=\5=\0045\5>\0009\6+\0=\6\6\5=\5?\0045\5@\0009\6+\0=\6\6\5=\5A\0045\5B\0009\6+\0=\6\6\5=\5C\0045\5D\0009\6+\0=\6\6\5=\5E\0045\5F\0009\6\5\0=\6\6\5=\5G\0045\5H\0009\6\r\0=\6\6\5=\5I\4=\4K\3B\1\2\1K\0\1\0\roverride\1\0\0\tjson\1\0\2\tname\tjson\ticon\bÔ¨•\15.gitignore\1\0\2\tname\14gitignore\ticon\bÓúÇ\bmdx\1\0\2\tname\bmdx\ticon\bÔíä\rmarkdown\1\0\2\tname\rmarkdown\ticon\bÔíä\amd\1\0\2\tname\amd\ticon\bÔíä\ash\1\0\2\tname\ash\ticon\bÓûï\blua\1\0\2\tname\blua\ticon\bÓò†\brpm\1\0\2\tname\brpm\ticon\bÔåñ\bdeb\tcyan\1\0\2\tname\bdeb\ticon\bÔåÜ\axz\1\0\2\tname\axz\ticon\bÔáÜ\bzip\1\0\2\tname\bzip\ticon\bÔáÜ\tlock\1\0\2\tname\tlock\ticon\bÔ†Ω\ttoml\1\0\2\tname\ttoml\ticon\bÔÄì\apy\1\0\2\tname\apy\ticon\bÓòÜ\bvue\ngreen\1\0\2\tname\bvue\ticon\bÔµÇ\aru\1\0\2\tname\aru\ticon\bÔêª\arb\bred\1\0\2\tname\arb\ticon\bÔêª\15dockerfile\1\0\2\tname\15Dockerfile\ticon\bÔåà\15Dockerfile\1\0\2\tname\15Dockerfile\ticon\bÔåà\bout\1\0\2\tname\bout\ticon\bÓòí\bmp4\1\0\2\tname\bmp4\ticon\bÔÖÑ\bmp3\nwhite\1\0\2\tname\bmp3\ticon\bÔ¢Ö\tjpeg\1\0\3\tname\tjpeg\ncolor\18colors.purple\ticon\bÔùé\bjpg\1\0\2\tname\bjpg\ticon\bÔùé\bpng\vpurple\1\0\2\tname\bpng\ticon\bÔùé\akt\1\0\2\tname\akt\ticon\tÛ±àô\ats\1\0\2\tname\ats\ticon\bÔØ§\ajs\vyellow\1\0\2\tname\ajs\ticon\bÔ†ù\bcss\tblue\1\0\2\tname\bcss\ticon\bÓùâ\thtml\1\0\0\ncolor\vorange\1\0\2\tname\thtml\ticon\bÔÑª\nsetup\22nvim-web-devicons\frequire\1\0\21\ngrey2\f#403E41\16white_dark4\f#ABB2BF\ngrey1\f#383539\16white_dark5\f#747474\tcyan\f#18FF9E\15grey_dark1\f#19181A\vpurple\f#AB9DF2\15grey_dark2\f#221F22\tblue\f#78DCE8\fpurple2\f#C678DD\ngreen\f#A9DC76\vyellow\f#FFD866\vorange\f#FC9867\tpink\f#FF6188\bred\f#E06C75\nblack\f#2D2A2E\nwhite\f#FCFCFA\16white_dark3\f#939293\16white_dark2\f#727072\16white_dark1\f#5B595C\ngrey3\f#565357\0" },
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
    config = { "\27LJ\2\nÅ\3\0\0\a\0\f\0\0266\0\0\0'\2\1\0B\0\2\0029\1\2\0009\2\3\0\18\3\1\0'\5\4\0'\6\5\0B\3\3\1\18\3\1\0'\5\6\0'\6\a\0B\3\3\1\18\3\2\0'\5\6\0'\6\b\0B\3\3\1\18\3\1\0'\5\t\0'\6\n\0B\3\3\1\18\3\2\0'\5\t\0'\6\v\0B\3\3\1K\0\1\0J:SearchBoxReplace visual_mode=true -- <C-r>=expand(\"<cword>\")<cr><cr>9:SearchBoxReplace -- <C-r>=expand(\"<cword>\")<cr><cr>\15<leader>rn+:SearchBoxReplace visual_mode=true<cr>\26:SearchBoxReplace<cr>\16<leader>rpl\28:SearchBoxIncSearch<cr>\n<C-f>\rxnoremap\rnnoremap\15main.utils\frequire\0" },
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
    config = { "\27LJ\2\nm\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\15completion\2\21backwards_tabkey\f<S-Tab>\vtabkey\n<Tab>\nsetup\vtabout\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/snio/.local/share/nvim/site/pack/packer/opt/tabout.nvim",
    url = "https://github.com/abecodes/tabout.nvim",
    wants = { "nvim-treesitter" }
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\ní\2\0\0\6\0\v\0\0236\0\0\0'\2\1\0B\0\2\0029\1\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\0024\4\0\0B\2\2\1\18\2\1\0'\4\5\0'\5\6\0B\2\3\1\18\2\1\0'\4\a\0'\5\b\0B\2\3\1\18\2\1\0'\4\t\0'\5\n\0B\2\3\1K\0\1\0*<cmd>Trouble document_diagnostics<cr>\15<leader>xd+<cmd>Trouble workspace_diagnostics<cr>\15<leader>xw\27<cmd>TroubleToggle<cr>\15<leader>xx\nsetup\ftrouble\rnnoremap\15main.utils\frequire\0" },
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
  ["vim-twiggy"] = {
    config = { "\27LJ\2\ny\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0Z autocmd VimEnter * if empty(expand('<amatch>'))|call FugitiveDetect(getcwd())|endif \bcmd\bvim\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/vim-twiggy",
    url = "https://github.com/sodapopcan/vim-twiggy"
  },
  ["vim-vsnip"] = {
    config = { "\27LJ\2\nÅ\4\0\0\b\0\14\00055\0\0\0006\1\1\0009\1\2\0019\1\3\1\18\2\1\0'\4\4\0'\5\5\0'\6\6\0\18\a\0\0B\2\5\1\18\2\1\0'\4\a\0'\5\5\0'\6\6\0\18\a\0\0B\2\5\1\18\2\1\0'\4\4\0'\5\b\0'\6\t\0\18\a\0\0B\2\5\1\18\2\1\0'\4\a\0'\5\b\0'\6\t\0\18\a\0\0B\2\5\1\18\2\1\0'\4\4\0'\5\n\0'\6\v\0\18\a\0\0B\2\5\1\18\2\1\0'\4\a\0'\5\n\0'\6\v\0\18\a\0\0B\2\5\1\18\2\1\0'\4\4\0'\5\f\0'\6\r\0\18\a\0\0B\2\5\1\18\2\1\0'\4\a\0'\5\f\0'\6\r\0\18\a\0\0B\2\5\1K\0\1\0?vsnip#jumpable(-1) ? '<Plug>(vsnip-jump-prev)' : '<S-Tab>'\f<S-Tab><vsnip#jumpable(1) ? '<Plug>(vsnip-jump-next)' : '<Tab>'\n<Tab>Bvsnip#available(1) ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'\n<C-l>\6s:vsnip#expandable() ? '<Plug>(vsnip-expand)' : '<C-j>'\n<C-j>\6i\20nvim_set_keymap\bapi\bvim\1\0\1\texpr\2\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  vimade = {
    config = { "\27LJ\2\nR\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\0\2\21enabletreesitter\3\1\22enablefocusfading\3\1\vvimade\6g\bvim\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/vimade",
    url = "https://github.com/TaDaa/vimade"
  },
  ["vscode-go"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/vscode-go",
    url = "https://github.com/golang/vscode-go"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: fzf.vim
time([[Setup for fzf.vim]], true)
try_loadstring("\27LJ\2\ná\2\0\0\5\0\14\0\0276\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0'\2\a\0'\3\b\0'\4\t\0B\0\4\0016\0\4\0'\2\5\0B\0\2\0029\0\6\0'\2\a\0'\3\n\0'\4\v\0B\0\4\0016\0\4\0'\2\5\0B\0\2\0029\0\f\0005\2\r\0B\0\2\1K\0\1\0\1\0\2\afa\16<cmd>Ag<cr>\afr\16<cmd>Rg<cr>\20map_leader_keys\21<cmd>Buffers<cr>\f<C-A-b>\19<cmd>Files<cr>\n<C-p>\6n\bmap\15main.utils\frequire\1\0\1\aup\t~45%\15fzf_layout\6g\bvim\0", "setup", "fzf.vim")
time([[Setup for fzf.vim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n˜\3\0\0\6\0\20\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\17\0005\4\14\0005\5\15\0=\5\16\4=\4\18\3=\3\19\2B\0\2\1K\0\1\0\16textobjects\vselect\1\0\0\fkeymaps\1\0\4\aac\17@class.outer\aic\17@class.inner\aif\20@function.inner\aaf\20@function.outer\1\0\2\venable\2\14lookahead\2\fautotag\1\0\1\venable\2\26context_commentstring\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\3\venable\2\21use_languagetree\2&additional_vim_regex_highlighting\1\21ensure_installed\1\0\0\1\14\0\0\15javascript\15typescript\btsx\bvue\thtml\bcss\tscss\tbash\blua\tjson\tyaml\vpython\ago\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: diffview.nvim
time([[Config for diffview.nvim]], true)
try_loadstring("\27LJ\2\nÇ\6\0\0\t\0'\0_6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\0\0'\3\3\0B\1\2\0029\1\4\0015\3\5\0005\4\6\0=\4\a\0035\4\b\0005\5\n\0\18\6\0\0'\b\t\0B\6\2\2=\6\v\5\18\6\0\0'\b\f\0B\6\2\2=\6\r\5\18\6\0\0'\b\14\0B\6\2\2=\6\15\5\18\6\0\0'\b\16\0B\6\2\2=\6\17\5=\5\18\0045\5\20\0\18\6\0\0'\b\19\0B\6\2\2=\6\21\5\18\6\0\0'\b\19\0B\6\2\2=\6\22\5\18\6\0\0'\b\23\0B\6\2\2=\6\24\5\18\6\0\0'\b\23\0B\6\2\2=\6\25\5\18\6\0\0'\b\26\0B\6\2\2=\6\27\5\18\6\0\0'\b\26\0B\6\2\2=\6\28\5\18\6\0\0'\b\26\0B\6\2\2=\6\29\5\18\6\0\0'\b\30\0B\6\2\2=\6\31\5\18\6\0\0'\b \0B\6\2\2=\6!\5\18\6\0\0'\b\"\0B\6\2\2=\6#\5\18\6\0\0'\b$\0B\6\2\2=\6%\5\18\6\0\0'\b\t\0B\6\2\2=\6\v\5\18\6\0\0'\b\f\0B\6\2\2=\6\r\5\18\6\0\0'\b\14\0B\6\2\2=\6\15\5\18\6\0\0'\b\16\0B\6\2\2=\6\17\5=\5\a\4=\4&\3B\1\2\1K\0\1\0\17key_bindings\6R\18refresh_files\6U\16unstage_all\6S\14stage_all\6-\23toggle_stage_entry\18<2-LeftMouse>\6o\t<cr>\17select_entry\t<up>\6k\15prev_entry\v<down>\6j\1\0\0\15next_entry\tview\14<leader>b\17toggle_files\14<leader>e\16focus_files\f<s-tab>\22select_prev_entry\n<tab>\1\0\0\22select_next_entry\1\0\1\21disable_defaults\1\15file_panel\1\0\1\nwidth\3\25\1\0\2\18diff_binaries\1\14use_icons\2\nsetup\rdiffview\22diffview_callback\20diffview.config\frequire\0", "config", "diffview.nvim")
time([[Config for diffview.nvim]], false)
-- Config for: fidget.nvim
time([[Config for fidget.nvim]], true)
try_loadstring("\27LJ\2\nn\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\vwindow\1\0\1\nblend\3\0\ttext\1\0\0\1\0\1\tdone\bÔÅò\nsetup\vfidget\frequire\0", "config", "fidget.nvim")
time([[Config for fidget.nvim]], false)
-- Config for: numb.nvim
time([[Config for numb.nvim]], true)
try_loadstring("\27LJ\2\n2\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\tnumb\frequire\0", "config", "numb.nvim")
time([[Config for numb.nvim]], false)
-- Config for: searchbox.nvim
time([[Config for searchbox.nvim]], true)
try_loadstring("\27LJ\2\nÅ\3\0\0\a\0\f\0\0266\0\0\0'\2\1\0B\0\2\0029\1\2\0009\2\3\0\18\3\1\0'\5\4\0'\6\5\0B\3\3\1\18\3\1\0'\5\6\0'\6\a\0B\3\3\1\18\3\2\0'\5\6\0'\6\b\0B\3\3\1\18\3\1\0'\5\t\0'\6\n\0B\3\3\1\18\3\2\0'\5\t\0'\6\v\0B\3\3\1K\0\1\0J:SearchBoxReplace visual_mode=true -- <C-r>=expand(\"<cword>\")<cr><cr>9:SearchBoxReplace -- <C-r>=expand(\"<cword>\")<cr><cr>\15<leader>rn+:SearchBoxReplace visual_mode=true<cr>\26:SearchBoxReplace<cr>\16<leader>rpl\28:SearchBoxIncSearch<cr>\n<C-f>\rxnoremap\rnnoremap\15main.utils\frequire\0", "config", "searchbox.nvim")
time([[Config for searchbox.nvim]], false)
-- Config for: vim-twiggy
time([[Config for vim-twiggy]], true)
try_loadstring("\27LJ\2\ny\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0Z autocmd VimEnter * if empty(expand('<amatch>'))|call FugitiveDetect(getcwd())|endif \bcmd\bvim\0", "config", "vim-twiggy")
time([[Config for vim-twiggy]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
try_loadstring("\27LJ\2\nÖ\5\0\0\a\0\18\0$6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0029\1\5\0009\2\6\0\18\3\1\0'\5\a\0'\6\b\0B\3\3\1\18\3\2\0'\5\a\0'\6\t\0B\3\3\1\18\3\1\0'\5\n\0'\6\v\0B\3\3\1\18\3\1\0'\5\f\0'\6\r\0B\3\3\1\18\3\1\0'\5\14\0'\6\15\0B\3\3\1\18\3\1\0'\5\16\0'\6\17\0B\3\3\1K\0\1\0004<cmd>lua require(\"lspsaga.rename\").rename()<cr>\agrI<cmd>lua require(\"lspsaga.diagnostic\").show_cursor_diagnostics()<cr>\15<leader>ccC<cmd>lua require(\"lspsaga.signaturehelp\").signature_help()<cr>\ags=<cmd>lua require(\"lspsaga.hover\").render_hover_doc()<cr>\6KD:<C-U>lua require(\"lspsaga.codeaction\").range_code_action()<cr>=<cmd>lua require(\"lspsaga.codeaction\").code_action()<cr>\15<leader>ca\rxnoremap\rnnoremap\15main.utils\1\0\2\21code_action_icon\5\29use_saga_diagnostic_sign\1\18init_lsp_saga\flspsaga\frequire\0", "config", "lspsaga.nvim")
time([[Config for lspsaga.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimâ\5\1\0\v\0)\0O6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\a\0005\5\5\0003\6\4\0=\6\6\5=\5\b\0049\5\t\0009\5\n\0054\a\3\0005\b\v\0>\b\1\a5\b\f\0>\b\2\a4\b\3\0005\t\r\0>\t\1\b5\t\14\0>\t\2\bB\5\3\2=\5\n\0045\5\17\0009\6\15\0015\b\16\0B\6\2\2=\6\18\5=\5\19\0045\5\23\0009\6\20\0009\b\20\0009\b\21\b)\n¸ˇB\b\2\0025\t\22\0B\6\3\2=\6\24\0059\6\20\0009\b\20\0009\b\21\b)\n\4\0B\b\2\0025\t\25\0B\6\3\2=\6\26\0059\6\20\0009\b\20\0009\b\27\bB\b\1\0025\t\28\0B\6\3\2=\6\29\0059\6\t\0009\6\30\6=\6\31\0059\6\20\0005\b!\0009\t\20\0009\t \tB\t\1\2=\t\"\b9\t\20\0009\t#\tB\t\1\2=\t$\bB\6\2\2=\6%\0059\6\20\0009\6&\0065\b'\0B\6\2\2=\6(\5=\5\20\4B\2\2\1K\0\1\0\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\n<C-y>\fdisable\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-b>\1\0\0\1\3\0\0\6i\6c\16scroll_docs\fmapping\15formatting\vformat\1\0\0\1\0\2\14with_text\2\tmode\16symbol_text\15cmp_format\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\flspkind\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: vim-vsnip
time([[Config for vim-vsnip]], true)
try_loadstring("\27LJ\2\nÅ\4\0\0\b\0\14\00055\0\0\0006\1\1\0009\1\2\0019\1\3\1\18\2\1\0'\4\4\0'\5\5\0'\6\6\0\18\a\0\0B\2\5\1\18\2\1\0'\4\a\0'\5\5\0'\6\6\0\18\a\0\0B\2\5\1\18\2\1\0'\4\4\0'\5\b\0'\6\t\0\18\a\0\0B\2\5\1\18\2\1\0'\4\a\0'\5\b\0'\6\t\0\18\a\0\0B\2\5\1\18\2\1\0'\4\4\0'\5\n\0'\6\v\0\18\a\0\0B\2\5\1\18\2\1\0'\4\a\0'\5\n\0'\6\v\0\18\a\0\0B\2\5\1\18\2\1\0'\4\4\0'\5\f\0'\6\r\0\18\a\0\0B\2\5\1\18\2\1\0'\4\a\0'\5\f\0'\6\r\0\18\a\0\0B\2\5\1K\0\1\0?vsnip#jumpable(-1) ? '<Plug>(vsnip-jump-prev)' : '<S-Tab>'\f<S-Tab><vsnip#jumpable(1) ? '<Plug>(vsnip-jump-next)' : '<Tab>'\n<Tab>Bvsnip#available(1) ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'\n<C-l>\6s:vsnip#expandable() ? '<Plug>(vsnip-expand)' : '<C-j>'\n<C-j>\6i\20nvim_set_keymap\bapi\bvim\1\0\1\texpr\2\0", "config", "vim-vsnip")
time([[Config for vim-vsnip]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n]\0\1\6\0\6\1\f9\1\0\0\18\3\1\0009\1\1\0019\4\2\0009\5\2\0\22\5\0\5B\1\4\0026\2\3\0009\2\4\0025\4\5\0\18\5\1\0D\2\3\0\1\2\0\0\a{}\17tbl_contains\bvim\bcol\bsub\tline\4c\0\1\6\0\6\1\f9\1\0\0\18\3\1\0009\1\1\0019\4\2\0\23\4\0\0049\5\2\0B\1\4\0026\2\3\0009\2\4\0025\4\5\0\18\5\1\0D\2\3\0\1\4\0\0\a()\a[]\a{}\17tbl_contains\bvim\bcol\bsub\tline\2\15\0\0\1\0\0\0\2+\0\1\0L\0\2\0G\0\1\5\0\3\0\v9\1\0\0\18\3\1\0009\1\1\1'\4\2\0B\1\3\2\v\1\0\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\b.%)\nmatch\14prev_char\15\0\0\1\0\0\0\2+\0\1\0L\0\2\0G\0\1\5\0\3\0\v9\1\0\0\18\3\1\0009\1\1\1'\4\2\0B\1\3\2\v\1\0\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\b.%}\nmatch\14prev_char\15\0\0\1\0\0\0\2+\0\1\0L\0\2\0G\0\1\5\0\3\0\v9\1\0\0\18\3\1\0009\1\1\1'\4\2\0B\1\3\2\v\1\0\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\b.%]\nmatch\14prev_char+\0\0\2\1\1\0\3-\0\0\0009\0\0\0D\0\1\0\1¿\26check_break_line_charú\a\1\0\f\0001\1w6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0005\2\4\0005\3\5\0005\4\6\0=\4\a\0036\4\b\0009\4\t\4'\6\n\0'\a\v\0'\b\f\0B\4\4\2=\4\r\3=\3\14\2B\0\2\0015\0\15\0006\1\0\0'\3\3\0B\1\2\0026\2\0\0'\4\16\0B\2\2\0026\3\0\0'\5\17\0B\3\2\0029\4\18\0014\6\6\0\18\a\2\0'\t\19\0'\n\19\0\18\v\0\0B\a\4\2\18\t\a\0009\a\20\a3\n\21\0B\a\3\2>\a\1\6\18\a\2\0'\t\19\0'\n\19\0B\a\3\2\18\t\a\0009\a\20\a3\n\22\0B\a\3\2>\a\2\6\18\a\2\0'\t\23\0'\n\24\0B\a\3\2\18\t\a\0009\a\20\a3\n\25\0B\a\3\2\18\t\a\0009\a\26\a3\n\27\0B\a\3\2\18\t\a\0009\a\28\a'\n\29\0B\a\3\2>\a\3\6\18\a\2\0'\t\30\0'\n\31\0B\a\3\2\18\t\a\0009\a\20\a3\n \0B\a\3\2\18\t\a\0009\a\26\a3\n!\0B\a\3\2\18\t\a\0009\a\28\a'\n\"\0B\a\3\2>\a\4\6\18\a\2\0'\t#\0'\n$\0B\a\3\2\18\t\a\0009\a\20\a3\n%\0B\a\3\2\18\t\a\0009\a\26\a3\n&\0B\a\3\2\18\t\a\0009\a\28\a'\n'\0B\a\3\0?\a\0\0B\4\2\0016\4(\0003\5*\0=\5)\0046\4\0\0'\6+\0B\4\2\0029\4,\4'\6-\0'\a.\0'\b/\0005\t0\0B\4\5\0012\0\0ÄK\0\1\0\1\0\2\texpr\2\fnoremap\2\20v:lua.confirm()\t<cr>\6i\rmap_opts\15main.utils\0\fconfirm\a_G\6]\0\0\a ]\a[ \6}\0\0\a }\a{ \6)\fuse_key\0\14with_move\0\a )\a( \0\0\14with_pair\6 \14add_rules\25nvim-autopairs.conds\24nvim-autopairs.rule\1\2\0\0\ago\14fast_wrap\fpattern\5\b%s+\25 [%'%\"%)%>%]%)%}%,] \tgsub\vstring\nchars\1\6\0\0\6{\6[\6(\6\"\6'\1\0\5\tkeys\31qwertyuiopzxcvbnmasdfghjkl\fend_key\6$\bmap\n<A-e>\16check_comma\2\15hightlight\vSearch\1\0\3\rcheck_ts\2\17map_complete\2\vmap_cr\2\19nvim-autopairs\nsetup\20nvim-ts-autotag\frequire\vÄÄ¿ô\4\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
try_loadstring("\27LJ\2\nK\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\16hide_cursor\1\nsetup\14neoscroll\frequire\0", "config", "neoscroll.nvim")
time([[Config for neoscroll.nvim]], false)
-- Config for: nvim-cokeline
time([[Config for nvim-cokeline]], true)
try_loadstring("\27LJ\2\n\\\0\1\5\2\4\0\r9\1\0\0\15\0\1\0X\2\5Ä-\1\0\0009\1\1\1:\1\1\1\14\0\1\0X\2\4Ä-\1\1\0'\3\2\0'\4\3\0B\1\3\2L\1\2\0\0¿\2¿\afg\fComment\vyellow\15is_focused*\0\1\3\0\3\0\5'\1\0\0009\2\1\0009\2\2\2&\1\2\1L\1\2\0\ticon\fdevicon\6 !\0\1\2\0\2\0\0039\1\0\0009\1\1\1L\1\2\0\ncolor\fdevicon \0\1\3\0\2\0\0049\1\0\0'\2\1\0&\1\2\1L\1\2\0\a: \nindex\29\0\1\2\0\1\0\0029\1\0\0L\1\2\0\18unique_prefix\"\0\1\3\0\2\0\0049\1\0\0'\2\1\0&\1\2\1L\1\2\0\6 \rfilename5\0\1\2\0\3\0\a9\1\0\0\15\0\1\0X\2\2Ä'\1\1\0L\1\2\0'\1\2\0L\1\2\0\5\t‚óè \16is_modified7\0\1\2\1\2\0\a9\1\0\0\15\0\1\0X\2\3Ä-\1\0\0009\1\1\1:\1\1\1L\1\2\0\0¿\vorange\15is_focusedã\a\1\0\14\0/\0j6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0026\1\0\0'\3\1\0B\1\2\0029\1\3\0016\2\0\0'\4\4\0B\2\2\0029\2\5\2\18\3\1\0'\5\6\0'\6\a\0B\3\3\1\18\3\1\0'\5\b\0'\6\t\0B\3\3\1\18\3\1\0'\5\n\0'\6\v\0B\3\3\1\18\3\1\0'\5\f\0'\6\r\0B\3\3\1)\3\1\0)\4\t\0)\5\1\0M\3\rÄ\18\a\1\0'\t\14\0\18\v\t\0009\t\15\t\18\f\6\0B\t\3\2'\n\16\0\18\f\n\0009\n\15\n\18\r\6\0B\n\3\0A\a\1\1O\3Û6\3\0\0'\5\17\0B\3\2\0029\3\18\0035\5\24\0005\6\20\0003\a\19\0=\a\21\6\18\a\2\0'\t\22\0'\n\23\0B\a\3\2=\a\23\6=\6\25\0055\6\26\0004\a\3\0005\b\27\0006\t\28\0=\t\21\b\18\t\2\0'\v\29\0'\f\23\0B\t\3\2=\t\23\b>\b\1\a=\a\30\6=\6\31\0054\6\b\0005\a!\0003\b \0=\b\"\a3\b#\0=\b\21\a>\a\1\0065\a%\0003\b$\0=\b\"\a>\a\2\0065\a'\0003\b&\0=\b\"\a>\a\3\0065\a)\0003\b(\0=\b\"\a>\a\4\0065\a+\0003\b*\0=\b\"\a3\b,\0=\b\21\a>\a\5\0065\a-\0>\a\6\0065\a.\0>\a\a\6=\6\30\5B\3\2\0012\0\0ÄK\0\1\0\1\0\1\ttext\6 \1\0\2\ttext\bÔôï delete_buffer_on_left_click\2\0\1\0\0\0\1\0\0\0\1\0\1\nstyle\vitalic\0\1\0\0\0\0\ttext\1\0\0\0\fsidebar\15components\18NeoTreeNormal\vyellow\1\0\2\ttext\14  NeoTree\nstyle\tbold\1\0\1\rfiletype\rneo-tree\15default_hl\1\0\0\abg\16ColorColumn\afg\1\0\0\0\nsetup\rcokeline\30<Plug>(cokeline-focus-%s)\vformat\15<Leader>%s <Plug>(cokeline-focus-next)\n<A-s> <Plug>(cokeline-focus-prev)\n<A-a>!<Plug>(cokeline-switch-next)\f<C-A-l>!<Plug>(cokeline-switch-prev)\f<C-A-h>\fget_hex\19cokeline/utils\rnnoremap\vcolors\15main.utils\frequire\0", "config", "nvim-cokeline")
time([[Config for nvim-cokeline]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\ní\2\0\0\6\0\v\0\0236\0\0\0'\2\1\0B\0\2\0029\1\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\0024\4\0\0B\2\2\1\18\2\1\0'\4\5\0'\5\6\0B\2\3\1\18\2\1\0'\4\a\0'\5\b\0B\2\3\1\18\2\1\0'\4\t\0'\5\n\0B\2\3\1K\0\1\0*<cmd>Trouble document_diagnostics<cr>\15<leader>xd+<cmd>Trouble workspace_diagnostics<cr>\15<leader>xw\27<cmd>TroubleToggle<cr>\15<leader>xx\nsetup\ftrouble\rnnoremap\15main.utils\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
try_loadstring("\27LJ\2\n¥\t\0\2\a\1\21\0/6\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0B\2\4\0019\2\5\0009\2\6\2\15\0\2\0X\3\4Ä6\2\0\0009\2\a\2'\4\b\0B\2\2\0019\2\5\0009\2\t\2\15\0\2\0X\3\6Ä6\2\0\0009\2\1\0029\2\n\2'\4\v\0+\5\1\0B\2\3\1-\2\0\0009\2\f\2\18\4\1\0004\5\t\0005\6\r\0>\6\1\0055\6\14\0>\6\2\0055\6\15\0>\6\3\0055\6\16\0>\6\4\0055\6\17\0>\6\5\0055\6\18\0>\6\6\0055\6\19\0>\6\a\0055\6\20\0>\6\b\5B\2\3\1K\0\1\0\0¿\1\4\0\0\6n\14<space>ccO<cmd>lua vim.diagnostic.open_float(nil, {focus=false, scope=\"cursor\"})<CR>\1\4\0\0\6n\r<space>f*<cmd>lua vim.lsp.buf.formatting()<CR>\1\4\0\0\6n\14<space>ca+<cmd>lua vim.lsp.buf.code_action()<CR>\1\4\0\0\6n\14<space>rn&<cmd>lua vim.lsp.buf.rename()<CR>\1\4\0\0\6n\r<space>D/<cmd>lua vim.lsp.buf.type_definition()<CR>\1\4\0\0\6n\agi.<cmd>lua vim.lsp.buf.implementation()<CR>\1\4\0\0\6n\agd*<cmd>lua vim.lsp.buf.definition()<CR>\1\4\0\0\6n\agD+<cmd>lua vim.lsp.buf.declaration()<CR>\16bufmap_keys˘\1        augroup lsp_document_highlight\n          autocmd! * <buffer>\n          autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()\n          autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()\n        augroup END\n      \14nvim_exec\23document_highlight§\1        augroup LspFormatting\n          autocmd! * <buffer>\n          autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()\n        augroup END\n      \bcmd\24document_formatting\26resolved_capabilities\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvimg\0\1\3\0\3\0\a9\1\0\0+\2\1\0=\2\1\0019\1\0\0+\2\1\0=\2\2\1K\0\1\0\30document_range_formatting\24document_formatting\26resolved_capabilities\"\1\1\2\0\2\0\0043\1\1\0=\1\0\0002\0\0ÄL\0\2\0\0\14on_attach¿\1\0\1\6\2\n\0\0265\1\3\0006\2\0\0009\2\1\0029\2\2\2=\2\2\1-\2\0\0=\2\4\1-\2\1\0009\3\5\0008\2\3\2\15\0\2\0X\3\5Ä-\2\1\0009\3\5\0008\2\3\2\18\4\1\0B\2\2\1\18\4\0\0009\2\6\0\18\5\1\0B\2\3\0016\2\a\0009\2\b\2'\4\t\0B\2\2\1K\0\1\0\3Ä\4¿\29do User LspAttachBuffers\bcmd\bvim\nsetup\tname\17capabilities\1\0\0\14on_attach\blsp\aom≈\b\1\0\15\0006\0l6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\0025\3\6\0=\3\5\0026\2\a\0009\2\b\0029\2\t\0025\4\n\0B\2\2\0015\2\v\0006\3\f\0\18\5\2\0B\3\2\4H\6\fÄ'\b\r\0\18\t\6\0&\b\t\b6\t\a\0009\t\14\t9\t\15\t\18\v\b\0005\f\16\0=\a\17\f=\b\18\f=\b\19\fB\t\3\1F\6\3\3R\6Ú6\3\a\0009\3\4\0039\3\20\0039\3\21\3B\3\1\0026\4\0\0'\6\22\0B\4\2\0029\4\23\4\18\6\3\0B\4\2\2\18\3\4\0009\4\24\0039\4\25\0049\4\26\4+\5\2\0=\5\27\0049\4\24\0039\4\25\0049\4\26\0045\5\30\0005\6\29\0=\6\31\5=\5\28\0046\4\3\0009\4\4\0043\5!\0=\5 \0049\4\"\0015\6&\0006\a\a\0009\a#\a9\a$\a9\a%\a=\a'\0065\a)\0005\b(\0=\b*\a=\a+\6B\4\2\0016\4\f\0006\6\3\0009\6\4\0069\6\5\6B\4\2\4H\a\18Ä9\t,\1\18\v\b\0B\t\2\3\15\0\t\0X\v\rÄ\18\r\n\0009\v-\nB\v\2\2\14\0\v\0X\v\bÄ6\v.\0'\r/\0\18\14\b\0&\r\14\rB\v\2\1\18\r\n\0009\v0\nB\v\2\1F\a\3\3R\aÏ5\0042\0003\0051\0=\0053\0049\0054\0013\a5\0B\5\2\0012\0\0ÄK\0\1\0\0\20on_server_ready\ngopls\1\0\0\0\finstall\16Installing \nprint\17is_installed\15get_server\aui\nicons\1\0\0\1\0\3\19server_pending\bÔÇ©\23server_uninstalled\bÔÑå\21server_installed\bÔÅò\14log_level\1\0\0\nDEBUG\vlevels\blog\rsettings\0\14on_attach\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\nnumhl\vtexthl\ttext\1\0\0\16sign_define\afn\19DiagnosticSign\npairs\1\0\4\nError\tÔôô \tHint\tÔ†µ \tWarn\tÔî© \tInfo\tÔëâ \1\0\5\18severity_sort\1\21update_in_insert\1\14underline\2\nsigns\2\17virtual_text\1\vconfig\15diagnostic\bvim\1\2\0\0\ngopls\fservers\blsp\aom\23nvim-lsp-installer\15main.utils\frequire\0", "config", "nvim-lsp-installer")
time([[Config for nvim-lsp-installer]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nK\0\0\4\0\5\0\t'\0\0\0006\1\1\0009\1\2\0019\1\3\1)\3\0\0B\1\2\2'\2\4\0&\0\2\0L\0\2\0\6|\24nvim_win_get_number\bapi\bvim\6W9\0\0\2\0\4\0\6'\0\0\0006\1\1\0009\1\2\0019\1\3\1&\0\1\0L\0\2\0\18gitsigns_head\6b\bvim\n‚éá  |\0\0\3\0\b\0\0146\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\bÄ5\1\4\0009\2\3\0=\2\3\0019\2\5\0=\2\6\0019\2\a\0=\2\a\1L\1\2\0K\0\1\0\fremoved\rmodified\fchanged\1\0\0\nadded\25gitsigns_status_dict\6b\bvim≈\a\1\0\f\0005\0P6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0023\1\3\0003\2\4\0003\3\5\0005\4\6\0005\5\a\0=\5\b\0045\5\t\0=\5\n\4=\3\v\0045\5\f\0005\6\r\0=\6\14\0055\6\15\0=\6\16\0055\6\20\0005\a\18\0009\b\17\0:\b\1\b=\b\19\a=\a\21\0065\a\23\0009\b\22\0:\b\1\b=\b\19\a=\a\24\6=\6\25\0056\6\0\0'\b\26\0B\6\2\0029\6\27\0065\b\29\0005\t\28\0=\t\30\b5\t \0005\n\31\0=\n!\t5\n\"\0>\1\1\n=\n#\t4\n\3\0>\2\1\n>\4\2\n=\n$\t5\n%\0>\5\1\n=\n&\t5\n'\0=\n(\t5\n)\0=\n*\t=\t\16\b5\t,\0005\n+\0=\n!\t5\n-\0>\1\1\n=\n#\t4\n\3\0005\v.\0>\v\1\n>\4\2\n=\n$\t5\n/\0=\n&\t5\n0\0=\n(\t5\n1\0=\n*\t=\t2\b4\t\0\0=\t3\b4\t\0\0=\t4\bB\6\2\1K\0\1\0\15extensions\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rprogress\1\2\0\0\rfiletype\1\2\0\0\20b:gitsigns_head\1\3\0\0\0\rfilename\1\0\0\1\2\0\0\tmode\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\0\rfiletype\rencoding\14lualine_c\14lualine_b\1\3\0\0\0\rfilename\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\1\0\3\ntheme\fsonokai\25component_separators\5\23section_separators\5\nsetup\flualine\22diagnostics_color\twarn\1\0\0\vorange\nerror\1\0\0\afg\1\0\0\bred\rsections\1\3\0\0\nerror\twarn\fsources\1\2\0\0\20nvim_diagnostic\1\2\1\0\16diagnostics\19always_visible\2\vsource\fsymbols\1\0\3\rmodified\6~\nadded\6+\fremoved\6-\15diff_color\1\0\3\rmodified\15DiffChange\nadded\fDiffAdd\fremoved\15DiffDelete\1\2\1\0\tdiff\fcolored\2\0\0\0\vcolors\15main.utils\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\nÎ\r\0\0\a\0L\0Ä\0015\0\0\0006\1\1\0'\3\2\0B\1\2\0029\1\3\0015\3J\0005\4\a\0005\5\4\0009\6\5\0=\6\6\5=\5\b\0045\5\t\0009\6\n\0=\6\6\5=\5\v\0045\5\f\0009\6\r\0=\6\6\5=\5\14\0045\5\15\0009\6\n\0=\6\6\5=\5\16\0045\5\17\0009\6\5\0=\6\6\5=\5\18\0045\5\19\0009\6\20\0=\6\6\5=\5\21\0045\5\22\0009\6\20\0=\6\6\5=\5\23\0045\5\24\0=\5\25\0045\5\26\0009\6\27\0=\6\6\5=\5\28\0045\5\29\0009\6\27\0=\6\6\5=\5\30\0045\5\31\0009\6\27\0=\6\6\5=\5 \0045\5!\0009\6\n\0=\6\6\5=\5\"\0045\5#\0009\6\n\0=\6\6\5=\5$\0045\5%\0009\6&\0=\6\6\5=\5'\0045\5(\0009\6&\0=\6\6\5=\5)\0045\5*\0009\6+\0=\6\6\5=\5,\0045\5-\0009\6+\0=\6\6\5=\5.\0045\5/\0009\6\n\0=\6\6\5=\0050\0045\0051\0009\6&\0=\6\6\5=\0052\0045\0053\0009\6\5\0=\6\6\5=\0054\0045\0055\0009\6\5\0=\6\6\5=\0056\0045\0057\0009\0068\0=\6\6\5=\0059\0045\5:\0009\6\5\0=\6\6\5=\5;\0045\5<\0009\6\n\0=\6\6\5=\5=\0045\5>\0009\6+\0=\6\6\5=\5?\0045\5@\0009\6+\0=\6\6\5=\5A\0045\5B\0009\6+\0=\6\6\5=\5C\0045\5D\0009\6+\0=\6\6\5=\5E\0045\5F\0009\6\5\0=\6\6\5=\5G\0045\5H\0009\6\r\0=\6\6\5=\5I\4=\4K\3B\1\2\1K\0\1\0\roverride\1\0\0\tjson\1\0\2\tname\tjson\ticon\bÔ¨•\15.gitignore\1\0\2\tname\14gitignore\ticon\bÓúÇ\bmdx\1\0\2\tname\bmdx\ticon\bÔíä\rmarkdown\1\0\2\tname\rmarkdown\ticon\bÔíä\amd\1\0\2\tname\amd\ticon\bÔíä\ash\1\0\2\tname\ash\ticon\bÓûï\blua\1\0\2\tname\blua\ticon\bÓò†\brpm\1\0\2\tname\brpm\ticon\bÔåñ\bdeb\tcyan\1\0\2\tname\bdeb\ticon\bÔåÜ\axz\1\0\2\tname\axz\ticon\bÔáÜ\bzip\1\0\2\tname\bzip\ticon\bÔáÜ\tlock\1\0\2\tname\tlock\ticon\bÔ†Ω\ttoml\1\0\2\tname\ttoml\ticon\bÔÄì\apy\1\0\2\tname\apy\ticon\bÓòÜ\bvue\ngreen\1\0\2\tname\bvue\ticon\bÔµÇ\aru\1\0\2\tname\aru\ticon\bÔêª\arb\bred\1\0\2\tname\arb\ticon\bÔêª\15dockerfile\1\0\2\tname\15Dockerfile\ticon\bÔåà\15Dockerfile\1\0\2\tname\15Dockerfile\ticon\bÔåà\bout\1\0\2\tname\bout\ticon\bÓòí\bmp4\1\0\2\tname\bmp4\ticon\bÔÖÑ\bmp3\nwhite\1\0\2\tname\bmp3\ticon\bÔ¢Ö\tjpeg\1\0\3\tname\tjpeg\ncolor\18colors.purple\ticon\bÔùé\bjpg\1\0\2\tname\bjpg\ticon\bÔùé\bpng\vpurple\1\0\2\tname\bpng\ticon\bÔùé\akt\1\0\2\tname\akt\ticon\tÛ±àô\ats\1\0\2\tname\ats\ticon\bÔØ§\ajs\vyellow\1\0\2\tname\ajs\ticon\bÔ†ù\bcss\tblue\1\0\2\tname\bcss\ticon\bÓùâ\thtml\1\0\0\ncolor\vorange\1\0\2\tname\thtml\ticon\bÔÑª\nsetup\22nvim-web-devicons\frequire\1\0\21\ngrey2\f#403E41\16white_dark4\f#ABB2BF\ngrey1\f#383539\16white_dark5\f#747474\tcyan\f#18FF9E\15grey_dark1\f#19181A\vpurple\f#AB9DF2\15grey_dark2\f#221F22\tblue\f#78DCE8\fpurple2\f#C678DD\ngreen\f#A9DC76\vyellow\f#FFD866\vorange\f#FC9867\tpink\f#FF6188\bred\f#E06C75\nblack\f#2D2A2E\nwhite\f#FCFCFA\16white_dark3\f#939293\16white_dark2\f#727072\16white_dark1\f#5B595C\ngrey3\f#565357\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\n»\2\0\0\6\0\15\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\t\0005\4\6\0005\5\a\0=\5\b\4=\4\n\3=\3\v\2B\0\2\0016\0\0\0'\2\f\0B\0\2\0029\0\r\0005\2\14\0B\0\2\1K\0\1\0\1\0\1\6b\31<cmd>NeoTreeShowToggle<cr>\20map_leader_keys\15main.utils\15filesystem\19filtered_items\1\0\0\15never_show\1\5\0\0\t.git\17node_modules\19.tool-versions\n.idea\1\0\2\20hide_gitignored\1\fvisible\2\vwindow\1\0\1\nwidth\3 \1\0\1\25close_if_last_window\2\nsetup\rneo-tree\frequire\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: sonokai
time([[Config for sonokai]], true)
try_loadstring("\27LJ\2\nâ\1\0\0\3\0\a\0\r6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0006\0\0\0009\0\5\0'\2\6\0B\0\2\1K\0\1\0\24colorscheme sonokai\bcmd\31sonokai_better_performance\vshusia\18sonokai_style\6g\bvim\0", "config", "sonokai")
time([[Config for sonokai]], false)
-- Config for: vim-tmux-navigator
time([[Config for vim-tmux-navigator]], true)
try_loadstring("\27LJ\2\nD\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\1\0=\1\2\0K\0\1\0'tmux_navigator_disable_when_zoomed\6g\bvim\0", "config", "vim-tmux-navigator")
time([[Config for vim-tmux-navigator]], false)
-- Config for: vimade
time([[Config for vimade]], true)
try_loadstring("\27LJ\2\nR\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\0\2\21enabletreesitter\3\1\22enablefocusfading\3\1\vvimade\6g\bvim\0", "config", "vimade")
time([[Config for vimade]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nó\4\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\4\ahl\19GitSignsChange\vlinehl\21GitSignsChangeLn\ttext\bÔÉó\nnumhl\21GitSignsChangeNr\14topdelete\1\0\4\ahl\19GitSignsDelete\vlinehl\21GitSignsDeleteLn\ttext\bÔÉò\nnumhl\21GitSignsDeleteNr\vdelete\1\0\4\ahl\19GitSignsDelete\vlinehl\21GitSignsDeleteLn\ttext\bÔÉó\nnumhl\21GitSignsDeleteNr\vchange\1\0\4\ahl\19GitSignsChange\vlinehl\21GitSignsChangeLn\ttext\b‚îÉ\nnumhl\21GitSignsChangeNr\badd\1\0\0\1\0\4\ahl\16GitSignsAdd\vlinehl\18GitSignsAddLn\ttext\b‚îÉ\nnumhl\18GitSignsAddNr\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: hlargs.nvim
time([[Config for hlargs.nvim]], true)
try_loadstring("\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vhlargs\frequire\0", "config", "hlargs.nvim")
time([[Config for hlargs.nvim]], false)
-- Conditional loads
time([[Conditional loading of fzf.vim]], true)
  require("packer.load")({"fzf.vim"}, {}, _G.packer_plugins)
time([[Conditional loading of fzf.vim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd null-ls.nvim ]]

-- Config for: null-ls.nvim
try_loadstring("\27LJ\2\nµ\2\0\0\6\0\18\0%6\0\0\0'\2\1\0B\0\2\0024\1\a\0009\2\2\0009\2\3\0029\2\4\2>\2\1\0019\2\2\0009\2\5\0029\2\6\2>\2\2\0019\2\2\0009\2\5\0029\2\a\2>\2\3\0019\2\2\0009\2\5\0029\2\b\2>\2\4\0019\2\2\0009\2\5\0029\2\t\2>\2\5\0019\2\2\0009\2\n\0029\2\v\2>\2\6\0019\2\f\0005\4\r\0=\1\14\0046\5\15\0009\5\16\0059\5\17\5=\5\17\4B\2\2\1K\0\1\0\14on_attach\blsp\aom\fsources\1\0\0\nsetup\18golangci_lint\16diagnostics\rprettier\fgolines\14goimports\ngofmt\15formatting\16refactoring\17code_actions\rbuiltins\fnull-ls\frequire\0", "config", "null-ls.nvim")

vim.cmd [[ packadd nvim-treesitter-textobjects ]]

-- Config for: nvim-treesitter-textobjects
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "nvim-treesitter-textobjects")

vim.cmd [[ packadd tabout.nvim ]]

-- Config for: tabout.nvim
try_loadstring("\27LJ\2\nm\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\15completion\2\21backwards_tabkey\f<S-Tab>\vtabkey\n<Tab>\nsetup\vtabout\frequire\0", "config", "tabout.nvim")

time([[Sequenced loading]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
