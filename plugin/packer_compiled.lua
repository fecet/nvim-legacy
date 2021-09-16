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
local package_path_str = "/home/rok/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/rok/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/rok/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/rok/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/rok/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
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
  ["AutoSave.nvim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/AutoSave.nvim"
  },
  ["cheatsheet.nvim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/cheatsheet.nvim"
  },
  ["clever-f.vim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/clever-f.vim"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/coc.nvim"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  dracula = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/dracula"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plugins.eviline\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nò\15\0\0\5\0 \0#6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\0025\3\16\0005\4\17\0=\4\18\0035\4\19\0=\4\20\3=\3\21\0025\3\22\0=\3\23\0025\3\24\0=\3\25\0025\3\26\0=\3\27\0025\3\28\0=\3\29\0025\3\30\0=\3\31\2B\0\2\1K\0\1\0\tyadm\1\0\1\venable\1\19preview_config\1\0\5\nstyle\fminimal\rrelative\vcursor\brow\3\0\bcol\3\1\vborder\vsingle&current_line_blame_formatter_opts\1\0\1\18relative_time\1\28current_line_blame_opts\1\0\3\ndelay\3d\18virt_text_pos\beol\14virt_text\2\16watch_index\1\0\2\rinterval\3Ë\a\17follow_files\2\fkeymaps\tn [c\1\2\1\0H&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'\texpr\2\tn ]c\1\2\1\0H&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'\texpr\2\1\0\r\17n <leader>hp2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\fnoremap\2\17n <leader>hR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\17v <leader>hrT<cmd>lua require\"gitsigns\".reset_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\17n <leader>hb4<cmd>lua require\"gitsigns\".blame_line(true)<CR>\17n <leader>hr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\17n <leader>hS2<cmd>lua require\"gitsigns\".stage_buffer()<CR>\17n <leader>hu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\17n <leader>hU8<cmd>lua require\"gitsigns\".reset_buffer_index()<CR>\17v <leader>hsT<cmd>lua require\"gitsigns\".stage_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\to ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17n <leader>hs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\tx ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\nsigns\1\0\t\23current_line_blame\2\24attach_to_untracked\2\nnumhl\1\14word_diff\1\20max_file_length\3¿∏\2\20update_debounce\3d\18sign_priority\3\6\vlinehl\1\15signcolumn\2\17changedelete\1\0\4\nnumhl\21GitSignsChangeNr\ttext\6~\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\14topdelete\1\0\4\nnumhl\21GitSignsDeleteNr\ttext\b‚Äæ\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\vdelete\1\0\4\nnumhl\21GitSignsDeleteNr\ttext\6_\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\vchange\1\0\4\nnumhl\21GitSignsChangeNr\ttext\b‚îÇ\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\badd\1\0\0\1\0\4\nnumhl\18GitSignsAddNr\ttext\b‚îÇ\vlinehl\18GitSignsAddLn\ahl\16GitSignsAdd\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  hop = {
    config = { "\27LJ\2\n1\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/hop"
  },
  ["indent-guides.nvim"] = {
    config = { "\27LJ\2\n«\2\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\15odd_colors\1\0\2\afg\f#44475a\abg\f#44475a\22exclude_filetypes\1\a\0\0\thelp\14dashboard\16dashpreview\rNvimTree\nvista\14sagahover\1\0\a\24indent_soft_pattern\a\\s\22indent_tab_guides\2\24indent_space_guides\2\18indent_enable\2\23indent_start_level\3\1\22indent_guide_size\3\1\18indent_levels\3\30\nsetup\18indent_guides\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/indent-guides.nvim"
  },
  kommentary = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/kommentary"
  },
  ["lazygit.nvim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/lazygit.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nM\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\n}\0\4\14\0\a\0\21'\4\0\0006\5\1\0\18\a\2\0B\5\2\4H\b\rÄ\a\b\2\0X\n\2Ä'\n\3\0X\v\5Ä\a\b\4\0X\n\2Ä'\n\5\0X\v\1Ä'\n\6\0\18\v\4\0\18\f\n\0\18\r\t\0&\4\r\vF\b\3\3R\bÒL\4\2\0\bÔÅ™\bÔÅ±\fwarning\bÔÅó\nerror\npairs\6 √\1\1\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0003\4\4\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\foptions\1\0\0\26diagnostics_indicator\0\1\0\4\28show_buffer_close_icons\1\20show_close_icon\1\22show_buffer_icons\2\16diagnostics\rnvim_lsp\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n©\3\0\0\5\0\18\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\0024\3\0\0=\3\b\0025\3\t\0004\4\0\0=\4\n\3=\3\v\0025\3\f\0=\3\r\0025\3\14\0005\4\15\0=\4\16\3=\3\17\2B\0\2\1K\0\1\0\frainbow\vcolors\1\6\0\0\f#8be9fd\f#50fa7b\f#ffb86c\f#ff79c6\f#bd93f9\1\0\3\venable\2\19max_file_lines\3Ë\a\18extended_mode\2\14autopairs\1\0\1\venable\2\14highlight\fdisable\1\0\1\venable\2\19ignore_install\fautotag\1\0\1\21ensure_installed\ball\14filetypes\1\b\0\0\thtml\15javascript\20javascriptreact\20typescriptreact\vsvelte\bvue\bxml\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-refactor"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  rnvimr = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/rnvimr"
  },
  tabular = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/tabular"
  },
  ["telescope-coc.nvim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/telescope-coc.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim"
  },
  ["telescope-fzf-writer.nvim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/telescope-fzf-writer.nvim"
  },
  ["telescope-hop.nvim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/telescope-hop.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nª\1\0\1\6\1\n\0\0175\1\1\0-\2\0\0009\2\0\2=\2\2\1-\2\0\0009\2\3\2=\2\4\0016\2\5\0'\4\6\0B\2\2\0029\2\a\0029\2\b\0029\2\t\2\18\4\0\0\18\5\1\0B\2\3\1K\0\1\0\0¿\14_hop_loop\bhop\15extensions\14telescope\frequire\18loop_callback\28send_selected_to_qflist\rcallback\1\0\0\21toggle_selection—\4\1\0\n\0\28\00086\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\18\0005\4\16\0005\5\14\0005\6\6\0009\a\4\0009\b\5\0 \a\b\a=\a\a\0066\a\b\0'\t\2\0B\a\2\0029\a\t\a9\a\n\a9\a\n\a=\a\v\0063\a\f\0=\a\r\6=\6\15\5=\5\17\4=\4\19\0035\4\21\0005\5\20\0=\5\22\0045\5\23\0=\5\n\0045\5\24\0=\5\25\4=\4\t\3B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\26\1'\3\22\0B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\26\1'\3\n\0B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\26\1'\3\27\0B\1\2\0012\0\0ÄK\0\1\0\bcoc\19load_extension\15fzf_writer\1\0\3\20use_highlighter\2\29minimum_files_characters\3\2\28minimum_grep_characters\3\2\1\0\2\16trace_entry\2\20reset_selection\2\bfzf\1\0\0\1\0\4\14case_mode\15smart_case\25override_file_sorter\2\28override_generic_sorter\1\nfuzzy\2\rdefaults\1\0\0\rmappings\1\0\0\6i\1\0\0\14<C-space>\0\n<C-h>\bhop\15extensions\6R\n<C-t>\1\0\0\16open_qflist\19send_to_qflist\nsetup\14telescope\22telescope.actions\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ultisnips = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/ultisnips"
  },
  ["vim-ipython-cell"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/vim-ipython-cell"
  },
  ["vim-latex-objects"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/vim-latex-objects"
  },
  ["vim-markdown"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/vim-markdown"
  },
  ["vim-sandwich"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/vim-sandwich"
  },
  ["vim-slime"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/vim-slime"
  },
  ["vim-smoothie"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/vim-smoothie"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/vim-snippets"
  },
  vimtex = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/vimtex"
  },
  ["wildfire.vim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/wildfire.vim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nª\1\0\1\6\1\n\0\0175\1\1\0-\2\0\0009\2\0\2=\2\2\1-\2\0\0009\2\3\2=\2\4\0016\2\5\0'\4\6\0B\2\2\0029\2\a\0029\2\b\0029\2\t\2\18\4\0\0\18\5\1\0B\2\3\1K\0\1\0\0¿\14_hop_loop\bhop\15extensions\14telescope\frequire\18loop_callback\28send_selected_to_qflist\rcallback\1\0\0\21toggle_selection—\4\1\0\n\0\28\00086\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\18\0005\4\16\0005\5\14\0005\6\6\0009\a\4\0009\b\5\0 \a\b\a=\a\a\0066\a\b\0'\t\2\0B\a\2\0029\a\t\a9\a\n\a9\a\n\a=\a\v\0063\a\f\0=\a\r\6=\6\15\5=\5\17\4=\4\19\0035\4\21\0005\5\20\0=\5\22\0045\5\23\0=\5\n\0045\5\24\0=\5\25\4=\4\t\3B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\26\1'\3\22\0B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\26\1'\3\n\0B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\26\1'\3\27\0B\1\2\0012\0\0ÄK\0\1\0\bcoc\19load_extension\15fzf_writer\1\0\3\20use_highlighter\2\29minimum_files_characters\3\2\28minimum_grep_characters\3\2\1\0\2\16trace_entry\2\20reset_selection\2\bfzf\1\0\0\1\0\4\14case_mode\15smart_case\25override_file_sorter\2\28override_generic_sorter\1\nfuzzy\2\rdefaults\1\0\0\rmappings\1\0\0\6i\1\0\0\14<C-space>\0\n<C-h>\bhop\15extensions\6R\n<C-t>\1\0\0\16open_qflist\19send_to_qflist\nsetup\14telescope\22telescope.actions\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\nM\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: indent-guides.nvim
time([[Config for indent-guides.nvim]], true)
try_loadstring("\27LJ\2\n«\2\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\15odd_colors\1\0\2\afg\f#44475a\abg\f#44475a\22exclude_filetypes\1\a\0\0\thelp\14dashboard\16dashpreview\rNvimTree\nvista\14sagahover\1\0\a\24indent_soft_pattern\a\\s\22indent_tab_guides\2\24indent_space_guides\2\18indent_enable\2\23indent_start_level\3\1\22indent_guide_size\3\1\18indent_levels\3\30\nsetup\18indent_guides\frequire\0", "config", "indent-guides.nvim")
time([[Config for indent-guides.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nò\15\0\0\5\0 \0#6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\0025\3\16\0005\4\17\0=\4\18\0035\4\19\0=\4\20\3=\3\21\0025\3\22\0=\3\23\0025\3\24\0=\3\25\0025\3\26\0=\3\27\0025\3\28\0=\3\29\0025\3\30\0=\3\31\2B\0\2\1K\0\1\0\tyadm\1\0\1\venable\1\19preview_config\1\0\5\nstyle\fminimal\rrelative\vcursor\brow\3\0\bcol\3\1\vborder\vsingle&current_line_blame_formatter_opts\1\0\1\18relative_time\1\28current_line_blame_opts\1\0\3\ndelay\3d\18virt_text_pos\beol\14virt_text\2\16watch_index\1\0\2\rinterval\3Ë\a\17follow_files\2\fkeymaps\tn [c\1\2\1\0H&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'\texpr\2\tn ]c\1\2\1\0H&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'\texpr\2\1\0\r\17n <leader>hp2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\fnoremap\2\17n <leader>hR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\17v <leader>hrT<cmd>lua require\"gitsigns\".reset_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\17n <leader>hb4<cmd>lua require\"gitsigns\".blame_line(true)<CR>\17n <leader>hr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\17n <leader>hS2<cmd>lua require\"gitsigns\".stage_buffer()<CR>\17n <leader>hu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\17n <leader>hU8<cmd>lua require\"gitsigns\".reset_buffer_index()<CR>\17v <leader>hsT<cmd>lua require\"gitsigns\".stage_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\to ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17n <leader>hs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\tx ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\nsigns\1\0\t\23current_line_blame\2\24attach_to_untracked\2\nnumhl\1\14word_diff\1\20max_file_length\3¿∏\2\20update_debounce\3d\18sign_priority\3\6\vlinehl\1\15signcolumn\2\17changedelete\1\0\4\nnumhl\21GitSignsChangeNr\ttext\6~\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\14topdelete\1\0\4\nnumhl\21GitSignsDeleteNr\ttext\b‚Äæ\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\vdelete\1\0\4\nnumhl\21GitSignsDeleteNr\ttext\6_\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\vchange\1\0\4\nnumhl\21GitSignsChangeNr\ttext\b‚îÇ\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\badd\1\0\0\1\0\4\nnumhl\18GitSignsAddNr\ttext\b‚îÇ\vlinehl\18GitSignsAddLn\ahl\16GitSignsAdd\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n©\3\0\0\5\0\18\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\0024\3\0\0=\3\b\0025\3\t\0004\4\0\0=\4\n\3=\3\v\0025\3\f\0=\3\r\0025\3\14\0005\4\15\0=\4\16\3=\3\17\2B\0\2\1K\0\1\0\frainbow\vcolors\1\6\0\0\f#8be9fd\f#50fa7b\f#ffb86c\f#ff79c6\f#bd93f9\1\0\3\venable\2\19max_file_lines\3Ë\a\18extended_mode\2\14autopairs\1\0\1\venable\2\14highlight\fdisable\1\0\1\venable\2\19ignore_install\fautotag\1\0\1\21ensure_installed\ball\14filetypes\1\b\0\0\thtml\15javascript\20javascriptreact\20typescriptreact\vsvelte\bvue\bxml\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plugins.eviline\frequire\0", "config", "galaxyline.nvim")
time([[Config for galaxyline.nvim]], false)
-- Config for: nvim-bufferline.lua
time([[Config for nvim-bufferline.lua]], true)
try_loadstring("\27LJ\2\n}\0\4\14\0\a\0\21'\4\0\0006\5\1\0\18\a\2\0B\5\2\4H\b\rÄ\a\b\2\0X\n\2Ä'\n\3\0X\v\5Ä\a\b\4\0X\n\2Ä'\n\5\0X\v\1Ä'\n\6\0\18\v\4\0\18\f\n\0\18\r\t\0&\4\r\vF\b\3\3R\bÒL\4\2\0\bÔÅ™\bÔÅ±\fwarning\bÔÅó\nerror\npairs\6 √\1\1\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0003\4\4\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\foptions\1\0\0\26diagnostics_indicator\0\1\0\4\28show_buffer_close_icons\1\20show_close_icon\1\22show_buffer_icons\2\16diagnostics\rnvim_lsp\nsetup\15bufferline\frequire\0", "config", "nvim-bufferline.lua")
time([[Config for nvim-bufferline.lua]], false)
-- Config for: hop
time([[Config for hop]], true)
try_loadstring("\27LJ\2\n1\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\bhop\frequire\0", "config", "hop")
time([[Config for hop]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
