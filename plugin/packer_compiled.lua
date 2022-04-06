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
    config = { "\27LJ\2\n¿\1\0\0\4\0\t\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\0016\0\0\0'\2\6\0B\0\2\0029\0\a\0005\2\b\0B\0\2\1K\0\1\0\1\0\1\6b\31<cmd>NeoTreeShowToggle<cr>\20map_leader_keys\15main.utils\vwindow\1\0\1\nwidth\3#\1\0\1\25close_if_last_window\2\nsetup\rneo-tree\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-cokeline"] = {
    config = { "\27LJ\2\ne\0\1\5\1\5\0\0149\1\0\0\15\0\1\0X\2\6Ä-\1\0\0'\3\1\0'\4\2\0B\1\3\2\14\0\1\0X\2\4Ä-\1\0\0'\3\3\0'\4\4\0B\1\3\2L\1\2\0\0¿\afg\vNormal\abg\16ColorColumn\15is_focusede\0\1\5\1\5\0\0149\1\0\0\15\0\1\0X\2\6Ä-\1\0\0'\3\1\0'\4\2\0B\1\3\2\14\0\1\0X\2\4Ä-\1\0\0'\3\3\0'\4\4\0B\1\3\2L\1\2\0\0¿\abg\16ColorColumn\afg\vNormal\15is_focused*\0\1\3\0\3\0\5'\1\0\0009\2\1\0009\2\2\2&\1\2\1L\1\2\0\ticon\fdevicon\6 !\0\1\2\0\2\0\0039\1\0\0009\1\1\1L\1\2\0\ncolor\fdevicon\29\0\1\2\0\1\0\0029\1\0\0L\1\2\0\18unique_prefix\"\0\1\3\0\2\0\0049\1\0\0'\2\1\0&\1\2\1L\1\2\0\6 \rfilename5\0\1\2\0\3\0\a9\1\0\0\15\0\1\0X\2\2Ä'\1\1\0L\1\2\0'\1\2\0L\1\2\0\5\t‚óè \16is_modified7\0\1\2\1\2\0\a9\1\0\0\15\0\1\0X\2\3Ä-\1\0\0009\1\1\1:\1\1\1L\1\2\0\1¿\vorange\15is_focusedÕ\4\1\0\f\0$\0E6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\0\0'\3\3\0B\1\2\0029\1\4\1B\1\1\0026\2\0\0'\4\5\0B\2\2\0029\2\6\0025\4\f\0005\5\b\0003\6\a\0=\6\t\0053\6\n\0=\6\v\5=\5\r\0045\5\14\0004\6\3\0005\a\15\0006\b\16\0=\b\t\a\18\b\0\0'\n\17\0'\v\v\0B\b\3\2=\b\v\a>\a\1\6=\6\18\5=\5\19\0045\5\20\0=\5\21\0044\5\a\0005\6\23\0003\a\22\0=\a\24\0063\a\25\0=\a\t\6>\6\1\0055\6\27\0003\a\26\0=\a\24\6\18\a\0\0'\t\28\0'\n\t\0B\a\3\2=\a\t\6>\6\2\0055\6\30\0003\a\29\0=\a\24\6>\6\3\0055\6 \0003\a\31\0=\a\24\0063\a!\0=\a\t\6>\6\4\0055\6\"\0>\6\5\0055\6#\0>\6\6\5=\5\18\4B\2\2\0012\0\0ÄK\0\1\0\1\0\1\ttext\6 \1\0\2\ttext\bÔôï delete_buffer_on_left_click\2\0\1\0\0\0\1\0\0\0\fComment\1\0\1\nstyle\vitalic\0\0\ttext\1\0\0\0\14rendering\1\0\1\21max_buffer_width\3\25\fsidebar\15components\18NeoTreeNormal\vyellow\1\0\2\nstyle\tbold\ttext\14  NeoTree\1\0\1\rfiletype\rneo-tree\15default_hl\1\0\0\abg\0\afg\1\0\0\0\nsetup\rcokeline\vcolors\15main.utils\fget_hex\19cokeline/utils\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/nvim-cokeline",
    url = "https://github.com/noib3/nvim-cokeline"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n‚\2\0\0\4\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\2B\0\2\1K\0\1\0\fautotag\1\0\1\venable\2\26context_commentstring\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\3\venable\2&additional_vim_regex_highlighting\1\21use_languagetree\2\21ensure_installed\1\0\0\1\14\0\0\15javascript\15typescript\btsx\bvue\thtml\bcss\tscss\tbash\blua\tjson\tyaml\vpython\ago\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/snio/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
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
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n‚\2\0\0\4\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\2B\0\2\1K\0\1\0\fautotag\1\0\1\venable\2\26context_commentstring\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\3\venable\2&additional_vim_regex_highlighting\1\21use_languagetree\2\21ensure_installed\1\0\0\1\14\0\0\15javascript\15typescript\btsx\bvue\thtml\bcss\tscss\tbash\blua\tjson\tyaml\vpython\ago\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: vim-tmux-navigator
time([[Config for vim-tmux-navigator]], true)
try_loadstring("\27LJ\2\nD\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\1\0=\1\2\0K\0\1\0'tmux_navigator_disable_when_zoomed\6g\bvim\0", "config", "vim-tmux-navigator")
time([[Config for vim-tmux-navigator]], false)
-- Config for: searchbox.nvim
time([[Config for searchbox.nvim]], true)
try_loadstring("\27LJ\2\nÅ\3\0\0\a\0\f\0\0266\0\0\0'\2\1\0B\0\2\0029\1\2\0009\2\3\0\18\3\1\0'\5\4\0'\6\5\0B\3\3\1\18\3\1\0'\5\6\0'\6\a\0B\3\3\1\18\3\2\0'\5\6\0'\6\b\0B\3\3\1\18\3\1\0'\5\t\0'\6\n\0B\3\3\1\18\3\2\0'\5\t\0'\6\v\0B\3\3\1K\0\1\0J:SearchBoxReplace visual_mode=true -- <C-r>=expand(\"<cword>\")<cr><cr>9:SearchBoxReplace -- <C-r>=expand(\"<cword>\")<cr><cr>\15<leader>rn+:SearchBoxReplace<cr> visual_mode=true\26:SearchBoxReplace<cr>\16<leader>rpl\28:SearchBoxIncSearch<cr>\n<C-f>\rxnoremap\rnnoremap\15main.utils\frequire\0", "config", "searchbox.nvim")
time([[Config for searchbox.nvim]], false)
-- Config for: nvim-cokeline
time([[Config for nvim-cokeline]], true)
try_loadstring("\27LJ\2\ne\0\1\5\1\5\0\0149\1\0\0\15\0\1\0X\2\6Ä-\1\0\0'\3\1\0'\4\2\0B\1\3\2\14\0\1\0X\2\4Ä-\1\0\0'\3\3\0'\4\4\0B\1\3\2L\1\2\0\0¿\afg\vNormal\abg\16ColorColumn\15is_focusede\0\1\5\1\5\0\0149\1\0\0\15\0\1\0X\2\6Ä-\1\0\0'\3\1\0'\4\2\0B\1\3\2\14\0\1\0X\2\4Ä-\1\0\0'\3\3\0'\4\4\0B\1\3\2L\1\2\0\0¿\abg\16ColorColumn\afg\vNormal\15is_focused*\0\1\3\0\3\0\5'\1\0\0009\2\1\0009\2\2\2&\1\2\1L\1\2\0\ticon\fdevicon\6 !\0\1\2\0\2\0\0039\1\0\0009\1\1\1L\1\2\0\ncolor\fdevicon\29\0\1\2\0\1\0\0029\1\0\0L\1\2\0\18unique_prefix\"\0\1\3\0\2\0\0049\1\0\0'\2\1\0&\1\2\1L\1\2\0\6 \rfilename5\0\1\2\0\3\0\a9\1\0\0\15\0\1\0X\2\2Ä'\1\1\0L\1\2\0'\1\2\0L\1\2\0\5\t‚óè \16is_modified7\0\1\2\1\2\0\a9\1\0\0\15\0\1\0X\2\3Ä-\1\0\0009\1\1\1:\1\1\1L\1\2\0\1¿\vorange\15is_focusedÕ\4\1\0\f\0$\0E6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\0\0'\3\3\0B\1\2\0029\1\4\1B\1\1\0026\2\0\0'\4\5\0B\2\2\0029\2\6\0025\4\f\0005\5\b\0003\6\a\0=\6\t\0053\6\n\0=\6\v\5=\5\r\0045\5\14\0004\6\3\0005\a\15\0006\b\16\0=\b\t\a\18\b\0\0'\n\17\0'\v\v\0B\b\3\2=\b\v\a>\a\1\6=\6\18\5=\5\19\0045\5\20\0=\5\21\0044\5\a\0005\6\23\0003\a\22\0=\a\24\0063\a\25\0=\a\t\6>\6\1\0055\6\27\0003\a\26\0=\a\24\6\18\a\0\0'\t\28\0'\n\t\0B\a\3\2=\a\t\6>\6\2\0055\6\30\0003\a\29\0=\a\24\6>\6\3\0055\6 \0003\a\31\0=\a\24\0063\a!\0=\a\t\6>\6\4\0055\6\"\0>\6\5\0055\6#\0>\6\6\5=\5\18\4B\2\2\0012\0\0ÄK\0\1\0\1\0\1\ttext\6 \1\0\2\ttext\bÔôï delete_buffer_on_left_click\2\0\1\0\0\0\1\0\0\0\fComment\1\0\1\nstyle\vitalic\0\0\ttext\1\0\0\0\14rendering\1\0\1\21max_buffer_width\3\25\fsidebar\15components\18NeoTreeNormal\vyellow\1\0\2\nstyle\tbold\ttext\14  NeoTree\1\0\1\rfiletype\rneo-tree\15default_hl\1\0\0\abg\0\afg\1\0\0\0\nsetup\rcokeline\vcolors\15main.utils\fget_hex\19cokeline/utils\frequire\0", "config", "nvim-cokeline")
time([[Config for nvim-cokeline]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\n¿\1\0\0\4\0\t\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\0016\0\0\0'\2\6\0B\0\2\0029\0\a\0005\2\b\0B\0\2\1K\0\1\0\1\0\1\6b\31<cmd>NeoTreeShowToggle<cr>\20map_leader_keys\15main.utils\vwindow\1\0\1\nwidth\3#\1\0\1\25close_if_last_window\2\nsetup\rneo-tree\frequire\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Conditional loads
time([[Conditional loading of fzf.vim]], true)
  require("packer.load")({"fzf.vim"}, {}, _G.packer_plugins)
time([[Conditional loading of fzf.vim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
