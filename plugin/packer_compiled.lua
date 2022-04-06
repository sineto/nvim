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
  ["fidget.nvim"] = {
    config = { "\27LJ\2\nn\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\vwindow\1\0\1\nblend\3\0\ttext\1\0\0\1\0\1\tdone\bÔÅò\nsetup\vfidget\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
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
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\n¿\1\0\0\4\0\t\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\0016\0\0\0'\2\6\0B\0\2\0029\0\a\0005\2\b\0B\0\2\1K\0\1\0\1\0\1\6b\31<cmd>NeoTreeShowToggle<cr>\20map_leader_keys\15main.utils\vwindow\1\0\1\nwidth\3 \1\0\1\25close_if_last_window\2\nsetup\rneo-tree\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
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
  ["nvim-cokeline"] = {
    config = { "\27LJ\2\ne\0\1\5\1\5\0\0149\1\0\0\15\0\1\0X\2\6Ä-\1\0\0'\3\1\0'\4\2\0B\1\3\2\14\0\1\0X\2\4Ä-\1\0\0'\3\3\0'\4\4\0B\1\3\2L\1\2\0\0¿\afg\vNormal\abg\16ColorColumn\15is_focusede\0\1\5\1\5\0\0149\1\0\0\15\0\1\0X\2\6Ä-\1\0\0'\3\1\0'\4\2\0B\1\3\2\14\0\1\0X\2\4Ä-\1\0\0'\3\3\0'\4\4\0B\1\3\2L\1\2\0\0¿\abg\16ColorColumn\afg\vNormal\15is_focused*\0\1\3\0\3\0\5'\1\0\0009\2\1\0009\2\2\2&\1\2\1L\1\2\0\ticon\fdevicon\6 !\0\1\2\0\2\0\0039\1\0\0009\1\1\1L\1\2\0\ncolor\fdevicon\29\0\1\2\0\1\0\0029\1\0\0L\1\2\0\18unique_prefix\"\0\1\3\0\2\0\0049\1\0\0'\2\1\0&\1\2\1L\1\2\0\6 \rfilename5\0\1\2\0\3\0\a9\1\0\0\15\0\1\0X\2\2Ä'\1\1\0L\1\2\0'\1\2\0L\1\2\0\5\t‚óè \16is_modified7\0\1\2\1\2\0\a9\1\0\0\15\0\1\0X\2\3Ä-\1\0\0009\1\1\1:\1\1\1L\1\2\0\1¿\vorange\15is_focused•\4\1\0\f\0\"\0C6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\0\0'\3\3\0B\1\2\0029\1\4\1B\1\1\0026\2\0\0'\4\5\0B\2\2\0029\2\6\0025\4\f\0005\5\b\0003\6\a\0=\6\t\0053\6\n\0=\6\v\5=\5\r\0045\5\14\0004\6\3\0005\a\15\0006\b\16\0=\b\t\a\18\b\0\0'\n\17\0'\v\v\0B\b\3\2=\b\v\a>\a\1\6=\6\18\5=\5\19\0044\5\a\0005\6\21\0003\a\20\0=\a\22\0063\a\23\0=\a\t\6>\6\1\0055\6\25\0003\a\24\0=\a\22\6\18\a\0\0'\t\26\0'\n\t\0B\a\3\2=\a\t\6>\6\2\0055\6\28\0003\a\27\0=\a\22\6>\6\3\0055\6\30\0003\a\29\0=\a\22\0063\a\31\0=\a\t\6>\6\4\0055\6 \0>\6\5\0055\6!\0>\6\6\5=\5\18\4B\2\2\0012\0\0ÄK\0\1\0\1\0\1\ttext\6 \1\0\2\ttext\bÔôï delete_buffer_on_left_click\2\0\1\0\0\0\1\0\0\0\fComment\1\0\1\nstyle\vitalic\0\0\ttext\1\0\0\0\fsidebar\15components\18NeoTreeNormal\vyellow\1\0\2\ttext\14  NeoTree\nstyle\tbold\1\0\1\rfiletype\rneo-tree\15default_hl\1\0\0\abg\0\afg\1\0\0\0\nsetup\rcokeline\vcolors\15main.utils\fget_hex\19cokeline/utils\frequire\0" },
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
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
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
  ["searchbox.nvim"] = {
    config = { "\27LJ\2\nÅ\3\0\0\a\0\f\0\0266\0\0\0'\2\1\0B\0\2\0029\1\2\0009\2\3\0\18\3\1\0'\5\4\0'\6\5\0B\3\3\1\18\3\1\0'\5\6\0'\6\a\0B\3\3\1\18\3\2\0'\5\6\0'\6\b\0B\3\3\1\18\3\1\0'\5\t\0'\6\n\0B\3\3\1\18\3\2\0'\5\t\0'\6\v\0B\3\3\1K\0\1\0J:SearchBoxReplace visual_mode=true -- <C-r>=expand(\"<cword>\")<cr><cr>9:SearchBoxReplace -- <C-r>=expand(\"<cword>\")<cr><cr>\15<leader>rn+:SearchBoxReplace<cr> visual_mode=true\26:SearchBoxReplace<cr>\16<leader>rpl\28:SearchBoxIncSearch<cr>\n<C-f>\rxnoremap\rnnoremap\15main.utils\frequire\0" },
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
  ["vim-tmux-navigator"] = {
    config = { "\27LJ\2\nD\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\1\0=\1\2\0K\0\1\0'tmux_navigator_disable_when_zoomed\6g\bvim\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: fzf.vim
time([[Setup for fzf.vim]], true)
try_loadstring("\27LJ\2\nÖ\2\0\0\5\0\14\0\0276\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0'\2\a\0'\3\b\0'\4\t\0B\0\4\0016\0\4\0'\2\5\0B\0\2\0029\0\6\0'\2\a\0'\3\n\0'\4\v\0B\0\4\0016\0\4\0'\2\5\0B\0\2\0029\0\f\0005\2\r\0B\0\2\1K\0\1\0\1\0\2\afr\16<cmd>Rg<cr>\afa\16<cmd>Ag<cr>\20map_leader_keys\21<cmd>Buffers<cr>\n<C-b>\19<cmd>Files<cr>\n<C-p>\6n\bmap\15main.utils\frequire\1\0\1\aup\t~45%\15fzf_layout\6g\bvim\0", "setup", "fzf.vim")
time([[Setup for fzf.vim]], false)
-- Config for: sonokai
time([[Config for sonokai]], true)
try_loadstring("\27LJ\2\nâ\1\0\0\3\0\a\0\r6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0006\0\0\0009\0\5\0'\2\6\0B\0\2\1K\0\1\0\24colorscheme sonokai\bcmd\31sonokai_better_performance\vshusia\18sonokai_style\6g\bvim\0", "config", "sonokai")
time([[Config for sonokai]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
try_loadstring("\27LJ\2\nì\14\0\2\n\0)\0ê\0015\2\0\0006\3\1\0009\3\2\0039\3\3\3\18\5\1\0'\6\4\0'\a\5\0B\3\4\0019\3\6\0009\3\a\3\15\0\3\0X\4\4Ä6\3\1\0009\3\b\3'\5\t\0B\3\2\0019\3\6\0009\3\n\3\15\0\3\0X\4\6Ä6\3\1\0009\3\2\0039\3\v\3'\5\f\0+\6\1\0B\3\3\0016\3\1\0009\3\2\0039\3\r\3\18\5\1\0'\6\14\0'\a\15\0'\b\16\0\18\t\2\0B\3\6\0016\3\1\0009\3\2\0039\3\r\3\18\5\1\0'\6\14\0'\a\17\0'\b\18\0\18\t\2\0B\3\6\0016\3\1\0009\3\2\0039\3\r\3\18\5\1\0'\6\14\0'\a\19\0'\b\20\0\18\t\2\0B\3\6\0016\3\1\0009\3\2\0039\3\r\3\18\5\1\0'\6\14\0'\a\21\0'\b\22\0\18\t\2\0B\3\6\0016\3\1\0009\3\2\0039\3\r\3\18\5\1\0'\6\14\0'\a\23\0'\b\24\0\18\t\2\0B\3\6\0016\3\1\0009\3\2\0039\3\r\3\18\5\1\0'\6\14\0'\a\25\0'\b\26\0\18\t\2\0B\3\6\0016\3\1\0009\3\2\0039\3\r\3\18\5\1\0'\6\14\0'\a\27\0'\b\28\0\18\t\2\0B\3\6\0016\3\1\0009\3\2\0039\3\r\3\18\5\1\0'\6\14\0'\a\29\0'\b\30\0\18\t\2\0B\3\6\0016\3\1\0009\3\2\0039\3\r\3\18\5\1\0'\6\14\0'\a\31\0'\b \0\18\t\2\0B\3\6\0016\3\1\0009\3\2\0039\3\r\3\18\5\1\0'\6\14\0'\a!\0'\b\"\0\18\t\2\0B\3\6\0016\3\1\0009\3\2\0039\3\r\3\18\5\1\0'\6\14\0'\a#\0'\b$\0\18\t\2\0B\3\6\0016\3\1\0009\3\2\0039\3\r\3\18\5\1\0'\6\14\0'\a%\0'\b&\0\18\t\2\0B\3\6\0016\3\1\0009\3\2\0039\3\r\3\18\5\1\0'\6\14\0'\a'\0'\b(\0\18\t\2\0B\3\6\1K\0\1\0*<cmd>lua vim.lsp.buf.formatting()<CR>\r<space>f*<cmd>lua vim.lsp.buf.references()<CR>\agr+<cmd>lua vim.lsp.buf.code_action()<CR>\14<space>ca&<cmd>lua vim.lsp.buf.rename()<CR>\14<space>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\r<space>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\14<space>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\14<space>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\14<space>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<cmd>lua vim.lsp.buf.hover()<CR>\6K*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\24nvim_buf_set_keymap˘\1        augroup lsp_document_highlight\n          autocmd! * <buffer>\n          autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()\n          autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()\n        augroup END\n      \14nvim_exec\23document_highlight§\1        augroup LspFormatting\n          autocmd! * <buffer>\n          autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()\n        augroup END\n      \bcmd\24document_formatting\26resolved_capabilities\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvim\1\0\2\vsilent\2\fnoremap\2æ\1\0\1\b\1\n\0\0265\1\3\0006\2\0\0009\2\1\0029\2\2\2=\2\2\1-\2\0\0=\2\4\0014\2\0\0\18\5\0\0009\3\5\0009\6\6\0008\6\6\2\15\0\6\0X\a\5Ä9\6\6\0008\6\6\2B\6\1\2\14\0\6\0X\a\1Ä\18\6\1\0B\3\3\0016\3\a\0009\3\b\3'\5\t\0B\3\2\1K\0\1\0\4¿\29do User LspAttachBuffers\bcmd\bvim\tname\nsetup\17capabilities\1\0\0\14on_attach\blsp\aom¡\a\1\0\16\0,\2i6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\0015\3\5\0B\1\2\0016\1\6\0009\1\a\0016\3\6\0009\3\b\0036\5\2\0009\5\t\0059\5\n\5\24\5\0\5B\3\2\2)\4d\0B\1\3\0026\2\6\0009\2\a\0026\4\6\0009\4\b\0046\6\2\0009\6\t\0069\6\v\6\24\6\1\6B\4\2\2)\5\30\0B\2\3\0025\3\f\0006\4\r\0\18\6\3\0B\4\2\4H\a\fÄ'\t\14\0\18\n\a\0&\t\n\t6\n\2\0009\n\15\n9\n\16\n\18\f\t\0005\r\17\0=\b\18\r=\t\19\r=\t\20\rB\n\3\1F\a\3\3R\aÚ6\4\21\0009\4\22\0045\5\24\0=\5\23\0046\4\2\0009\4\22\0049\4\25\0049\4\26\4B\4\1\0029\5\27\0049\5\28\0059\5\29\5+\6\2\0=\6\30\0059\5\27\0049\5\28\0059\5\29\0055\6!\0005\a \0=\a\"\6=\6\31\0056\5\21\0009\5\22\0053\6$\0=\6#\0056\5\r\0006\a\21\0009\a\22\a9\a\23\aB\5\2\4H\b\18Ä9\n%\0\18\f\t\0B\n\2\3\15\0\n\0X\f\rÄ\18\14\v\0009\f&\vB\f\2\2\14\0\f\0X\f\bÄ6\f'\0'\14(\0\18\15\t\0&\14\15\14B\f\2\1\18\14\v\0009\f)\vB\f\2\1F\b\3\3R\bÏ9\5*\0003\a+\0B\5\2\0012\0\0ÄK\0\1\0\0\20on_server_ready\finstall\16Installing \nprint\17is_installed\15get_server\0\14on_attach\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\1\2\0\0\ngopls\fservers\blsp\aom\nnumhl\vtexthl\ttext\1\0\0\16sign_define\afn\19DiagnosticSign\npairs\1\0\4\tWarn\tÔî© \tHint\tÔ†µ \nError\tÔôô \tInfo\tÔëâ \nlines\fcolumns\6o\nfloor\bmax\tmath\1\0\5\17virtual_text\1\21update_in_insert\1\14underline\1\nsigns\2\18severity_sort\2\vconfig\15diagnostic\bvim\23nvim-lsp-installer\frequireÕô≥Ê\fÊÃôˇ\3ÁÃô≥\6≥ÊÃ˛\3\0", "config", "nvim-lsp-installer")
time([[Config for nvim-lsp-installer]], false)
-- Config for: nvim-cokeline
time([[Config for nvim-cokeline]], true)
try_loadstring("\27LJ\2\ne\0\1\5\1\5\0\0149\1\0\0\15\0\1\0X\2\6Ä-\1\0\0'\3\1\0'\4\2\0B\1\3\2\14\0\1\0X\2\4Ä-\1\0\0'\3\3\0'\4\4\0B\1\3\2L\1\2\0\0¿\afg\vNormal\abg\16ColorColumn\15is_focusede\0\1\5\1\5\0\0149\1\0\0\15\0\1\0X\2\6Ä-\1\0\0'\3\1\0'\4\2\0B\1\3\2\14\0\1\0X\2\4Ä-\1\0\0'\3\3\0'\4\4\0B\1\3\2L\1\2\0\0¿\abg\16ColorColumn\afg\vNormal\15is_focused*\0\1\3\0\3\0\5'\1\0\0009\2\1\0009\2\2\2&\1\2\1L\1\2\0\ticon\fdevicon\6 !\0\1\2\0\2\0\0039\1\0\0009\1\1\1L\1\2\0\ncolor\fdevicon\29\0\1\2\0\1\0\0029\1\0\0L\1\2\0\18unique_prefix\"\0\1\3\0\2\0\0049\1\0\0'\2\1\0&\1\2\1L\1\2\0\6 \rfilename5\0\1\2\0\3\0\a9\1\0\0\15\0\1\0X\2\2Ä'\1\1\0L\1\2\0'\1\2\0L\1\2\0\5\t‚óè \16is_modified7\0\1\2\1\2\0\a9\1\0\0\15\0\1\0X\2\3Ä-\1\0\0009\1\1\1:\1\1\1L\1\2\0\1¿\vorange\15is_focused•\4\1\0\f\0\"\0C6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\0\0'\3\3\0B\1\2\0029\1\4\1B\1\1\0026\2\0\0'\4\5\0B\2\2\0029\2\6\0025\4\f\0005\5\b\0003\6\a\0=\6\t\0053\6\n\0=\6\v\5=\5\r\0045\5\14\0004\6\3\0005\a\15\0006\b\16\0=\b\t\a\18\b\0\0'\n\17\0'\v\v\0B\b\3\2=\b\v\a>\a\1\6=\6\18\5=\5\19\0044\5\a\0005\6\21\0003\a\20\0=\a\22\0063\a\23\0=\a\t\6>\6\1\0055\6\25\0003\a\24\0=\a\22\6\18\a\0\0'\t\26\0'\n\t\0B\a\3\2=\a\t\6>\6\2\0055\6\28\0003\a\27\0=\a\22\6>\6\3\0055\6\30\0003\a\29\0=\a\22\0063\a\31\0=\a\t\6>\6\4\0055\6 \0>\6\5\0055\6!\0>\6\6\5=\5\18\4B\2\2\0012\0\0ÄK\0\1\0\1\0\1\ttext\6 \1\0\2\ttext\bÔôï delete_buffer_on_left_click\2\0\1\0\0\0\1\0\0\0\fComment\1\0\1\nstyle\vitalic\0\0\ttext\1\0\0\0\fsidebar\15components\18NeoTreeNormal\vyellow\1\0\2\ttext\14  NeoTree\nstyle\tbold\1\0\1\rfiletype\rneo-tree\15default_hl\1\0\0\abg\0\afg\1\0\0\0\nsetup\rcokeline\vcolors\15main.utils\fget_hex\19cokeline/utils\frequire\0", "config", "nvim-cokeline")
time([[Config for nvim-cokeline]], false)
-- Config for: fidget.nvim
time([[Config for fidget.nvim]], true)
try_loadstring("\27LJ\2\nn\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\vwindow\1\0\1\nblend\3\0\ttext\1\0\0\1\0\1\tdone\bÔÅò\nsetup\vfidget\frequire\0", "config", "fidget.nvim")
time([[Config for fidget.nvim]], false)
-- Config for: searchbox.nvim
time([[Config for searchbox.nvim]], true)
try_loadstring("\27LJ\2\nÅ\3\0\0\a\0\f\0\0266\0\0\0'\2\1\0B\0\2\0029\1\2\0009\2\3\0\18\3\1\0'\5\4\0'\6\5\0B\3\3\1\18\3\1\0'\5\6\0'\6\a\0B\3\3\1\18\3\2\0'\5\6\0'\6\b\0B\3\3\1\18\3\1\0'\5\t\0'\6\n\0B\3\3\1\18\3\2\0'\5\t\0'\6\v\0B\3\3\1K\0\1\0J:SearchBoxReplace visual_mode=true -- <C-r>=expand(\"<cword>\")<cr><cr>9:SearchBoxReplace -- <C-r>=expand(\"<cword>\")<cr><cr>\15<leader>rn+:SearchBoxReplace<cr> visual_mode=true\26:SearchBoxReplace<cr>\16<leader>rpl\28:SearchBoxIncSearch<cr>\n<C-f>\rxnoremap\rnnoremap\15main.utils\frequire\0", "config", "searchbox.nvim")
time([[Config for searchbox.nvim]], false)
-- Config for: vim-tmux-navigator
time([[Config for vim-tmux-navigator]], true)
try_loadstring("\27LJ\2\nD\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\1\0=\1\2\0K\0\1\0'tmux_navigator_disable_when_zoomed\6g\bvim\0", "config", "vim-tmux-navigator")
time([[Config for vim-tmux-navigator]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\n¿\1\0\0\4\0\t\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\0016\0\0\0'\2\6\0B\0\2\0029\0\a\0005\2\b\0B\0\2\1K\0\1\0\1\0\1\6b\31<cmd>NeoTreeShowToggle<cr>\20map_leader_keys\15main.utils\vwindow\1\0\1\nwidth\3 \1\0\1\25close_if_last_window\2\nsetup\rneo-tree\frequire\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n˜\3\0\0\6\0\20\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\17\0005\4\14\0005\5\15\0=\5\16\4=\4\18\3=\3\19\2B\0\2\1K\0\1\0\16textobjects\vselect\1\0\0\fkeymaps\1\0\4\aic\17@class.inner\aaf\20@function.outer\aac\17@class.outer\aif\20@function.inner\1\0\2\venable\2\14lookahead\2\fautotag\1\0\1\venable\2\26context_commentstring\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\3&additional_vim_regex_highlighting\1\21use_languagetree\2\venable\2\21ensure_installed\1\0\0\1\14\0\0\15javascript\15typescript\btsx\bvue\thtml\bcss\tscss\tbash\blua\tjson\tyaml\vpython\ago\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
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
try_loadstring("\27LJ\2\nµ\2\0\0\6\0\18\0%6\0\0\0'\2\1\0B\0\2\0024\1\a\0009\2\2\0009\2\3\0029\2\4\2>\2\1\0019\2\2\0009\2\5\0029\2\6\2>\2\2\0019\2\2\0009\2\5\0029\2\a\2>\2\3\0019\2\2\0009\2\5\0029\2\b\2>\2\4\0019\2\2\0009\2\5\0029\2\t\2>\2\5\0019\2\2\0009\2\n\0029\2\v\2>\2\6\0019\2\f\0005\4\r\0=\1\14\0046\5\15\0009\5\16\0059\5\17\5=\5\17\4B\2\2\1K\0\1\0\14on_attach\blsp\aom\fsources\1\0\0\nsetup\18golangci_lint\16diagnostics\rprettier\fgolines\14goimports\ngofmt\15formatting\16refactoring\17code_actions\rbuiltins\fnull-ls\frequire\0", "config", "null-ls.nvim")

time([[Sequenced loading]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
