-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = true
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
local package_path_str = "/home/rok/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/rok/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/rok/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/rok/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/rok/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
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
    config = { "\27LJ\1\2ê\2\0\0\5\0\15\0\0214\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0%\2\4\0004\3\5\0007\3\6\0037\3\a\3%\4\b\0>\3\2\2$\2\3\2:\2\t\0013\2\n\0:\2\v\0013\2\f\0002\3\0\0:\3\r\2:\2\14\1>\0\2\1G\0\1\0\15conditions\20filetype_is_not\1\0\2\15modifiable\2\vexists\2\vevents\1\3\0\0\16InsertLeave\16TextChanged\22execution_message\r%H:%M:%S\rstrftime\afn\bvim\28ï€Œ AutoSave: saved at \1\0\5\19debounce_delay\3‡\1\22write_all_buffers\1\20on_off_commands\2 clean_command_line_interval\3\0\fenabled\2\nsetup\rautosave\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/AutoSave.nvim"
  },
  ["auto-session"] = {
    config = { "\27LJ\1\2†\2\0\0\4\0\n\0\0154\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0004\2\4\0007\2\5\0027\2\6\2%\3\a\0>\2\2\2%\3\b\0$\2\3\2:\2\t\1>\0\2\1G\0\1\0\26auto_session_root_dir\15/sessions/\tdata\fstdpath\afn\bvim\1\0\5%auto_session_enable_last_session\1\14log_level\tinfo\25auto_restore_enabled\1\22auto_save_enabled\2\25auto_session_enabled\2\nsetup\17auto-session\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/auto-session"
  },
  ["cheatsheet.nvim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/cheatsheet.nvim"
  },
  ["clever-f.vim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/clever-f.vim"
  },
  ["clipboard-image.nvim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/clipboard-image.nvim"
  },
  ["cmp-buffer"] = {
    after_files = { "/home/rok/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    after = { "nvim-lspinstall" },
    after_files = { "/home/rok/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp"
  },
  ["cmp-nvim-tags"] = {
    after_files = { "/home/rok/.local/share/nvim/site/pack/packer/opt/cmp-nvim-tags/after/plugin/cmp_nvim_tags.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/cmp-nvim-tags"
  },
  ["cmp-nvim-ultisnips"] = {
    after_files = { "/home/rok/.local/share/nvim/site/pack/packer/opt/cmp-nvim-ultisnips/after/plugin/cmp_nvim_ultisnips.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/cmp-nvim-ultisnips"
  },
  ["cmp-path"] = {
    after_files = { "/home/rok/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/cmp-path"
  },
  ["cmp-spell"] = {
    after_files = { "/home/rok/.local/share/nvim/site/pack/packer/opt/cmp-spell/after/plugin/cmp-spell.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/cmp-spell"
  },
  ["cmp-tabnine"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/cmp-tabnine"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  dracula = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/dracula"
  },
  firenvim = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/firenvim"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\1\2/\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\20plugins.eviline\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\1\2˜\15\0\0\4\0 \0#4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\14\0003\2\4\0003\3\3\0:\3\5\0023\3\6\0:\3\a\0023\3\b\0:\3\t\0023\3\n\0:\3\v\0023\3\f\0:\3\r\2:\2\15\0013\2\16\0003\3\17\0:\3\18\0023\3\19\0:\3\20\2:\2\21\0013\2\22\0:\2\23\0013\2\24\0:\2\25\0013\2\26\0:\2\27\0013\2\28\0:\2\29\0013\2\30\0:\2\31\1>\0\2\1G\0\1\0\tyadm\1\0\1\venable\1\19preview_config\1\0\5\brow\3\0\rrelative\vcursor\nstyle\fminimal\bcol\3\1\vborder\vsingle&current_line_blame_formatter_opts\1\0\1\18relative_time\1\28current_line_blame_opts\1\0\3\14virt_text\2\ndelay\3d\18virt_text_pos\beol\16watch_index\1\0\2\rinterval\3è\a\17follow_files\2\fkeymaps\tn [c\1\2\1\0H&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'\texpr\2\tn ]c\1\2\1\0H&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'\texpr\2\1\0\r\fnoremap\2\17v <leader>hrT<cmd>lua require\"gitsigns\".reset_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\17n <leader>hR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\17n <leader>hs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\17n <leader>hb4<cmd>lua require\"gitsigns\".blame_line(true)<CR>\to ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\tx ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17n <leader>hr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\17n <leader>hU8<cmd>lua require\"gitsigns\".reset_buffer_index()<CR>\17v <leader>hsT<cmd>lua require\"gitsigns\".stage_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\17n <leader>hp2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\17n <leader>hS2<cmd>lua require\"gitsigns\".stage_buffer()<CR>\17n <leader>hu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\nsigns\1\0\t\20max_file_length\3À¸\2\vlinehl\1\24attach_to_untracked\2\nnumhl\1\18sign_priority\3\6\15signcolumn\2\20update_debounce\3d\23current_line_blame\2\14word_diff\1\17changedelete\1\0\4\ttext\6~\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\14topdelete\1\0\4\ttext\bâ€¾\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\vdelete\1\0\4\ttext\6_\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\vchange\1\0\4\ttext\bâ”‚\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\badd\1\0\0\1\0\4\ttext\bâ”‚\nnumhl\18GitSignsAddNr\vlinehl\18GitSignsAddLn\ahl\16GitSignsAdd\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  hop = {
    config = { "\27LJ\1\0021\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/hop"
  },
  ["indent-guides.nvim"] = {
    config = { "\27LJ\1\2Ç\2\0\0\3\0\b\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\0013\2\6\0:\2\a\1>\0\2\1G\0\1\0\15odd_colors\1\0\2\abg\f#44475a\afg\f#44475a\22exclude_filetypes\1\a\0\0\thelp\14dashboard\16dashpreview\rNvimTree\nvista\14sagahover\1\0\a\22indent_guide_size\3\1\24indent_soft_pattern\a\\s\23indent_start_level\3\1\18indent_levels\3\30\18indent_enable\2\24indent_space_guides\2\22indent_tab_guides\2\nsetup\18indent_guides\frequire\0" },
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
  ["lspkind-nvim"] = {
    config = { "\27LJ\1\2ã\1\0\2\6\2\f\0!+\2\0\0007\2\1\0027\2\2\0027\3\0\0016\2\3\2:\2\0\1+\2\1\0007\3\3\0007\3\4\0036\2\3\0027\3\3\0007\3\4\3\a\3\5\0T\3\17€7\3\6\0007\3\a\3\n\3\0\0T\3\v€7\3\6\0007\3\a\0037\3\b\3\n\3\0\0T\3\6€7\3\6\0007\3\a\0037\3\b\3%\4\t\0\16\5\2\0$\2\5\3%\3\n\0:\3\0\1:\2\v\1H\1\2\0\0À\1À\tmenu\bïƒ§\6 \vdetail\tdata\20completion_item\16cmp_tabnine\tname\vsource\fdefault\fpresets\tkindô\1\1\0\6\0\f\0\0204\0\0\0%\1\1\0>\0\2\0023\1\2\0004\2\0\0%\3\3\0>\2\2\0027\2\4\0023\3\6\0002\4\3\0003\5\5\0;\5\1\4:\4\a\0033\4\t\0001\5\b\0:\5\n\4:\4\v\3>\2\2\0010\0\0€G\0\1\0\15formatting\vformat\1\0\0\0\fsources\1\0\0\1\0\1\tname\16cmp_tabnine\nsetup\bcmp\1\0\5\rnvim_lua\n[Lua]\rnvim_lsp\n[LSP]\vbuffer\r[Buffer]\16cmp_tabnine\t[TN]\tpath\v[Path]\flspkind\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\1\2Õ\1\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\1>\0\2\1G\0\1\0\rmappings\1\0\5\24use_local_scrolloff\1\22respect_scrolloff\1\16hide_cursor\2\25cursor_scrolls_alone\2\rstop_eof\2\1\n\0\0\n<C-u>\n<C-d>\n<C-b>\n<C-f>\n<C-y>\n<C-e>\azt\azz\azb\nsetup\14neoscroll\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/neoscroll.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\1\2M\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\1\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\1\2}\0\4\14\0\a\0\21%\4\0\0004\5\1\0\16\6\2\0>\5\2\4D\b\r€\a\b\2\0T\n\2€%\n\3\0T\v\5€\a\b\4\0T\n\2€%\n\5\0T\v\1€%\n\6\0\16\v\4\0\16\f\n\0\16\r\t\0$\4\r\vB\b\3\3N\bñH\4\2\0\bïª\bï±\fwarning\bï—\nerror\npairs\6 ¾\1\1\0\4\0\b\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\6\0003\2\3\0001\3\4\0:\3\5\2:\2\a\1>\0\2\1G\0\1\0\foptions\1\0\0\26diagnostics_indicator\0\1\0\4\20show_close_icon\1\22show_buffer_icons\2\16diagnostics\bcoc\28show_buffer_close_icons\1\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua"
  },
  ["nvim-cmp"] = {
    after = { "cmp-spell", "cmp-nvim-tags", "cmp-nvim-lsp", "cmp-buffer", "cmp-path", "cmp-nvim-ultisnips" },
    loaded = true,
    only_config = true
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\1\0027\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-hlslens"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/nvim-hlslens"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\1\2¥\2\0\0\n\0\16\0\0294\0\0\0%\1\1\0>\0\2\0023\1\2\0004\2\3\0007\2\4\0027\2\5\0027\2\6\2>\2\1\0027\3\a\0027\3\b\0037\3\t\3)\4\2\0:\4\n\0034\3\v\0\16\4\1\0>\3\2\4T\6\b€4\b\0\0%\t\f\0>\b\2\0026\b\a\b7\b\r\b3\t\14\0:\2\15\t>\b\2\1A\6\3\3N\6öG\0\1\0\17capabilities\1\0\0\nsetup\14lspconfig\vipairs\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim\1\2\0\0\fpyright\19lspconfig/util\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    config = { "\27LJ\1\2A\2\0\3\1\3\0\a4\0\0\0007\0\1\0007\0\2\0+\1\0\0C\2\0\0=\0\1\1G\0\1\0\1À\24nvim_buf_set_keymap\bapi\bvimA\2\0\3\1\3\0\a4\0\0\0007\0\1\0007\0\2\0+\1\0\0C\2\0\0=\0\1\1G\0\1\0\1À\24nvim_buf_set_option\bapi\bvimÿ\21\1\2\t\1K\0Õ\0011\2\0\0001\3\1\0007\4\2\0\a\4\3\0T\4\15€4\4\4\0%\5\5\0>\4\2\0027\4\6\4>\4\1\0014\4\4\0%\5\a\0>\4\2\0027\4\b\4>\4\1\0014\4\4\0%\5\t\0>\4\2\0027\4\n\4>\4\1\1\16\4\3\0%\5\v\0%\6\f\0>\4\3\1\16\4\2\0%\5\r\0%\6\14\0%\a\15\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\6\16\0%\a\17\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\6\18\0%\a\19\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\6\20\0%\a\21\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\6\22\0%\a\23\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\6\24\0%\a\25\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\6\26\0%\a\27\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\6\28\0%\a\29\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\6\30\0%\a\31\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\6 \0%\a!\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\6\"\0%\a#\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\6$\0%\a%\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\6&\0%\a'\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\6(\0%\a)\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\6*\0%\a+\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\6,\0%\a-\0+\b\0\0>\4\5\1\16\4\2\0%\5.\0%\6,\0%\a/\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\0060\0%\a1\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\0062\0%\a3\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\0064\0%\a5\0+\b\0\0>\4\5\1\16\4\2\0%\5.\0%\0064\0%\a6\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\0067\0%\a8\0+\b\0\0>\4\5\1\16\4\2\0%\5.\0%\0067\0%\a9\0+\b\0\0>\4\5\1\16\4\2\0%\5.\0%\6:\0%\a;\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\6<\0%\a=\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\6>\0%\a?\0+\b\0\0>\4\5\0017\4@\0007\4A\4\15\0\4\0T\5\a€\16\4\2\0%\5\r\0%\6B\0%\aC\0+\b\0\0>\4\5\1T\4\n€7\4@\0007\4D\4\15\0\4\0T\5\6€\16\4\2\0%\5\r\0%\6B\0%\aE\0+\b\0\0>\4\5\0017\4@\0007\4F\4\15\0\4\0T\5\6€4\4G\0007\4H\0047\4I\4%\5J\0)\6\1\0>\4\3\0010\0\0€G\0\1\0\1ÀÝ\1    augroup lsp_document_highlight\n    autocmd! * <buffer>\n    autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()\n    autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()\n    augroup END\n    \14nvim_exec\bapi\bvim\23document_highlight0<cmd>lua vim.lsp.buf.range_formatting()<CR>\30document_range_formatting*<cmd>lua vim.lsp.buf.formatting()<CR>\15<leader>fm\24document_formatting\26resolved_capabilities8<Cmd>lua require('jdtls').test_nearest_method()<CR>\16<leader>cjn/<Cmd>lua require('jdtls').test_class()<CR>\16<leader>cjt7<Cmd>lua require('jdtls').extract_method(true)<CR>\15<leader>cm9<Cmd>lua require('jdtls').extract_constant(true)<CR>5<Cmd>lua require('jdtls').extract_constant()<CR>\15<leader>ct9<Cmd>lua require('jdtls').extract_variable(true)<CR>5<Cmd>lua require('jdtls').extract_variable()<CR>\15<leader>cv5<Cmd>lua require('jdtls').organize_imports()<CR>\15<leader>coA<Cmd>lua require('jdtls').code_action(false, 'refactor')<CR>\15<leader>cr4<Cmd>lua require('jdtls').code_action(true)<CR>\6v0<Cmd>lua require('jdtls').code_action()<CR>\15<leader>ca2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\14<leader>q0<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\a]d0<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\a[d<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>\14<leader>e*<cmd>lua vim.lsp.buf.references()<CR>\agr&<cmd>lua vim.lsp.buf.rename()<CR>\15<leader>rn,<cmd>Telescope lsp_type_definitions<CR>\14<leader>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\15<leader>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\15<leader>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\15<leader>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>+<cmd>Telescope lsp_implementations<CR>\agi%<Cmd>lua vim.lsp.buf.hover()<CR>\6K'<Cmd>Telescope lsp_definitions<CR>\agd+<Cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\27v:lua.vim.lsp.omnifunc\romnifunc\17add_commands\16jdtls.setup\14setup_dap\njdtls!setup_dap_main_class_configs\14jdtls.dap\frequire\tjava\tname\0\0ê\2\0\0\4\1\18\0\0294\0\0\0007\0\1\0007\0\2\0007\0\3\0>\0\1\0024\1\4\0%\2\5\0>\1\2\0027\1\6\1\16\2\0\0>\1\2\2\16\0\1\0007\1\a\0007\1\b\0017\1\t\1)\2\2\0:\2\n\0017\1\a\0007\1\b\0017\1\t\0013\2\r\0003\3\f\0:\3\14\2:\2\v\0013\1\15\0:\0\16\1+\2\0\0:\2\17\1H\1\2\0\2À\14on_attach\17capabilities\1\0\0\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\24update_capabilities\17cmp_nvim_lsp\frequire\29make_client_capabilities\rprotocol\blsp\bvimã\6\0\0\r\1(\0U4\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\0\0%\1\1\0>\0\2\0027\0\3\0>\0\1\0024\1\4\0007\1\5\1\16\2\0\0%\3\6\0>\1\3\0014\1\4\0007\1\5\1\16\2\0\0%\3\a\0>\1\3\0014\1\b\0\16\2\0\0>\1\2\4D\4:€+\6\0\0>\6\1\2\a\5\t\0T\a\4€4\a\0\0%\b\v\0>\a\2\2:\a\n\6\a\5\a\0T\a\2€3\a\r\0:\a\f\6\a\5\6\0T\a\2€3\a\14\0:\a\f\6\a\5\15\0T\a!€4\a\0\0%\b\16\0>\a\2\0027\b\17\a:\b\17\0067\b\n\a:\b\n\0067\b\18\a:\b\18\0067\b\19\0067\b\20\b)\t\2\0:\t\21\b7\b\19\0067\b\22\b3\t\24\0003\n\26\0003\v\25\0:\v\27\n:\n\28\t3\n \0003\v\30\0003\f\29\0:\f\31\v:\v!\n:\n\"\t:\t\23\b7\b#\a:\b#\0063\b$\0:\b\f\0063\b&\0:\b%\0064\a\0\0%\b'\0>\a\2\0026\a\5\a7\a\2\a\16\b\6\0>\a\2\1B\4\3\3N\4ÄG\0\1\0\3À\14lspconfig\1\0\1\27allow_incremental_sync\2\nflags\1\2\0\0\tjava\bcmd\29codeActionLiteralSupport\19codeActionKind\1\0\0\rvalueSet\1\0\0\1\4\0\0\29source.generate.toString#source.generate.hashCodeEquals\27source.organizeImports\19resolveSupport\15properties\1\0\0\1\2\0\0\tedit\1\0\1\16dataSupport\2\15codeAction\17textDocument\18configuration\14workspace\17capabilities\fon_init\17init_options\22lsp.java.settings\tjava\1\3\0\0\6c\bcpp\1\4\0\0\nswift\16objective-c\18objective-cpp\14filetypes\21lsp.lua.settings\rsettings\blua\npairs\14sourcekit\vclangd\vinsert\ntable\22installed_servers\nsetup\15lspinstall\frequireG\0\0\2\1\4\0\b+\0\0\0007\0\0\0>\0\1\0014\0\1\0007\0\2\0%\1\3\0>\0\2\1G\0\1\0\0À\fbufdo e\bcmd\bvim\18setup_serversŽ\1\1\0\6\0\t\0\0152\0\0\0003\1\0\0001\2\1\0001\3\2\0001\4\4\0:\4\3\0007\4\3\0>\4\1\0014\4\5\0%\5\6\0>\4\2\0021\5\b\0:\5\a\0040\0\0€G\0\1\0\0\22post_install_hook\15lspinstall\frequire\0\18setup_servers\0\0\1\0\2\vsilent\2\fnoremap\2\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/nvim-lspinstall"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\1\2©\3\0\0\4\0\18\0\0234\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\6\0003\2\3\0003\3\4\0:\3\5\2:\2\a\0012\2\0\0:\2\b\0013\2\t\0002\3\0\0:\3\n\2:\2\v\0013\2\f\0:\2\r\0013\2\14\0003\3\15\0:\3\16\2:\2\17\1>\0\2\1G\0\1\0\frainbow\vcolors\1\6\0\0\f#8be9fd\f#50fa7b\f#ffb86c\f#ff79c6\f#bd93f9\1\0\3\19max_file_lines\3è\a\18extended_mode\2\venable\2\14autopairs\1\0\1\venable\2\14highlight\fdisable\1\0\1\venable\2\19ignore_install\fautotag\1\0\1\21ensure_installed\ball\14filetypes\1\b\0\0\thtml\15javascript\20javascriptreact\20typescriptreact\vsvelte\bvue\bxml\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
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
  ["presence.nvim"] = {
    config = { "\27LJ\1\2½\3\0\0\4\0\5\0\n4\0\0\0%\1\1\0>\0\2\2\16\1\0\0007\0\2\0003\2\3\0002\3\0\0:\3\4\2>\0\3\1G\0\1\0\14blacklist\1\0\14\23enable_line_number\2\15main_image\vneovim\16auto_update\2\17editing_text\15Editing %s\20git_commit_text\23Committing changes\14client_id\023793271441293967371\21line_number_text\22Line %s out of %s\fbuttons\2\24plugin_manager_text\21Managing plugins\17reading_text\15Reading %s\22neovim_image_text\25The Only True Editor\21debounce_timeout\3\n\23file_explorer_text\16Browsing %s\19workspace_text\18Working on %s\nsetup\rpresence\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/presence.nvim"
  },
  rnvimr = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/rnvimr"
  },
  ["session-lens"] = {
    config = { "\27LJ\1\2‹\1\0\0\3\0\b\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\0013\2\6\0:\2\a\1>\0\2\1G\0\1\0\15theme_conf\1\0\1\vborder\1\17path_display\1\0\1\14previewer\2\1\2\0\0\fshorten\nsetup\17session-lens\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/session-lens"
  },
  ["startuptime.vim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/startuptime.vim"
  },
  ["suda.vim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/suda.vim"
  },
  ["surround.nvim"] = {
    config = { "\27LJ\1\2U\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\1\19mappings_style\rsandwich\nsetup\rsurround\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/surround.nvim"
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
    config = { "\27LJ\1\2»\1\0\1\5\1\n\0\0173\1\1\0+\2\0\0007\2\0\2:\2\2\1+\2\0\0007\2\3\2:\2\4\0014\2\5\0%\3\6\0>\2\2\0027\2\a\0027\2\b\0027\2\t\2\16\3\0\0\16\4\1\0>\2\3\1G\0\1\0\0À\14_hop_loop\bhop\15extensions\14telescope\frequire\18loop_callback\28send_selected_to_qflist\rcallback\1\0\0\21toggle_selectionö\4\1\0\b\0\29\0>4\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0027\1\3\0013\2\18\0003\3\16\0003\4\14\0003\5\6\0007\6\4\0007\a\5\0\30\6\a\6:\6\a\0054\6\b\0%\a\2\0>\6\2\0027\6\t\0067\6\n\0067\6\n\6:\6\v\0051\6\f\0:\6\r\5:\5\15\4:\4\17\3:\3\19\0023\3\21\0003\4\20\0:\4\22\0033\4\23\0:\4\n\0033\4\24\0:\4\25\3:\3\t\2>\1\2\0014\1\0\0%\2\2\0>\1\2\0027\1\26\1%\2\22\0>\1\2\0014\1\0\0%\2\2\0>\1\2\0027\1\26\1%\2\n\0>\1\2\0014\1\0\0%\2\2\0>\1\2\0027\1\26\1%\2\27\0>\1\2\0014\1\0\0%\2\2\0>\1\2\0027\1\26\1%\2\28\0>\1\2\0010\0\0€G\0\1\0\17session-lens\bcoc\19load_extension\15fzf_writer\1\0\3\28minimum_grep_characters\3\2\20use_highlighter\2\29minimum_files_characters\3\2\1\0\2\16trace_entry\2\20reset_selection\2\bfzf\1\0\0\1\0\4\28override_generic_sorter\1\14case_mode\15smart_case\25override_file_sorter\2\nfuzzy\2\rdefaults\1\0\0\rmappings\1\0\0\6i\1\0\0\14<C-space>\0\n<C-h>\bhop\15extensions\6R\n<C-t>\1\0\0\16open_qflist\19send_to_qflist\nsetup\14telescope\22telescope.actions\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/tokyonight.nvim"
  },
  ultisnips = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/ultisnips"
  },
  ["vim-ipython-cell"] = {
    commands = { "IPythonCellExecuteCellVerboseJump", "IPythonCellPrevCell", "IPythonCellNextCell", "IPythonOpen", "IPythonCellInsertAbove", "IPythonCellInsertBelow" },
    loaded = false,
    needs_bufread = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/vim-ipython-cell"
  },
  ["vim-latex-objects"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/vim-latex-objects"
  },
  ["vim-markdown"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/vim-markdown"
  },
  ["vim-slime"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/vim-slime"
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
-- Config for: surround.nvim
time([[Config for surround.nvim]], true)
try_loadstring("\27LJ\1\2U\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\1\19mappings_style\rsandwich\nsetup\rsurround\frequire\0", "config", "surround.nvim")
time([[Config for surround.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\1\2©\3\0\0\4\0\18\0\0234\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\6\0003\2\3\0003\3\4\0:\3\5\2:\2\a\0012\2\0\0:\2\b\0013\2\t\0002\3\0\0:\3\n\2:\2\v\0013\2\f\0:\2\r\0013\2\14\0003\3\15\0:\3\16\2:\2\17\1>\0\2\1G\0\1\0\frainbow\vcolors\1\6\0\0\f#8be9fd\f#50fa7b\f#ffb86c\f#ff79c6\f#bd93f9\1\0\3\19max_file_lines\3è\a\18extended_mode\2\venable\2\14autopairs\1\0\1\venable\2\14highlight\fdisable\1\0\1\venable\2\19ignore_install\fautotag\1\0\1\21ensure_installed\ball\14filetypes\1\b\0\0\thtml\15javascript\20javascriptreact\20typescriptreact\vsvelte\bvue\bxml\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: AutoSave.nvim
time([[Config for AutoSave.nvim]], true)
try_loadstring("\27LJ\1\2ê\2\0\0\5\0\15\0\0214\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0%\2\4\0004\3\5\0007\3\6\0037\3\a\3%\4\b\0>\3\2\2$\2\3\2:\2\t\0013\2\n\0:\2\v\0013\2\f\0002\3\0\0:\3\r\2:\2\14\1>\0\2\1G\0\1\0\15conditions\20filetype_is_not\1\0\2\15modifiable\2\vexists\2\vevents\1\3\0\0\16InsertLeave\16TextChanged\22execution_message\r%H:%M:%S\rstrftime\afn\bvim\28ï€Œ AutoSave: saved at \1\0\5\19debounce_delay\3‡\1\22write_all_buffers\1\20on_off_commands\2 clean_command_line_interval\3\0\fenabled\2\nsetup\rautosave\frequire\0", "config", "AutoSave.nvim")
time([[Config for AutoSave.nvim]], false)
-- Config for: indent-guides.nvim
time([[Config for indent-guides.nvim]], true)
try_loadstring("\27LJ\1\2Ç\2\0\0\3\0\b\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\0013\2\6\0:\2\a\1>\0\2\1G\0\1\0\15odd_colors\1\0\2\abg\f#44475a\afg\f#44475a\22exclude_filetypes\1\a\0\0\thelp\14dashboard\16dashpreview\rNvimTree\nvista\14sagahover\1\0\a\22indent_guide_size\3\1\24indent_soft_pattern\a\\s\23indent_start_level\3\1\18indent_levels\3\30\18indent_enable\2\24indent_space_guides\2\22indent_tab_guides\2\nsetup\18indent_guides\frequire\0", "config", "indent-guides.nvim")
time([[Config for indent-guides.nvim]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
try_loadstring("\27LJ\1\2/\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\20plugins.eviline\frequire\0", "config", "galaxyline.nvim")
time([[Config for galaxyline.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\1\2M\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\1\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: hop
time([[Config for hop]], true)
try_loadstring("\27LJ\1\0021\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\bhop\frequire\0", "config", "hop")
time([[Config for hop]], false)
-- Config for: nvim-bufferline.lua
time([[Config for nvim-bufferline.lua]], true)
try_loadstring("\27LJ\1\2}\0\4\14\0\a\0\21%\4\0\0004\5\1\0\16\6\2\0>\5\2\4D\b\r€\a\b\2\0T\n\2€%\n\3\0T\v\5€\a\b\4\0T\n\2€%\n\5\0T\v\1€%\n\6\0\16\v\4\0\16\f\n\0\16\r\t\0$\4\r\vB\b\3\3N\bñH\4\2\0\bïª\bï±\fwarning\bï—\nerror\npairs\6 ¾\1\1\0\4\0\b\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\6\0003\2\3\0001\3\4\0:\3\5\2:\2\a\1>\0\2\1G\0\1\0\foptions\1\0\0\26diagnostics_indicator\0\1\0\4\20show_close_icon\1\22show_buffer_icons\2\16diagnostics\bcoc\28show_buffer_close_icons\1\nsetup\15bufferline\frequire\0", "config", "nvim-bufferline.lua")
time([[Config for nvim-bufferline.lua]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\1\2»\1\0\1\5\1\n\0\0173\1\1\0+\2\0\0007\2\0\2:\2\2\1+\2\0\0007\2\3\2:\2\4\0014\2\5\0%\3\6\0>\2\2\0027\2\a\0027\2\b\0027\2\t\2\16\3\0\0\16\4\1\0>\2\3\1G\0\1\0\0À\14_hop_loop\bhop\15extensions\14telescope\frequire\18loop_callback\28send_selected_to_qflist\rcallback\1\0\0\21toggle_selectionö\4\1\0\b\0\29\0>4\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0027\1\3\0013\2\18\0003\3\16\0003\4\14\0003\5\6\0007\6\4\0007\a\5\0\30\6\a\6:\6\a\0054\6\b\0%\a\2\0>\6\2\0027\6\t\0067\6\n\0067\6\n\6:\6\v\0051\6\f\0:\6\r\5:\5\15\4:\4\17\3:\3\19\0023\3\21\0003\4\20\0:\4\22\0033\4\23\0:\4\n\0033\4\24\0:\4\25\3:\3\t\2>\1\2\0014\1\0\0%\2\2\0>\1\2\0027\1\26\1%\2\22\0>\1\2\0014\1\0\0%\2\2\0>\1\2\0027\1\26\1%\2\n\0>\1\2\0014\1\0\0%\2\2\0>\1\2\0027\1\26\1%\2\27\0>\1\2\0014\1\0\0%\2\2\0>\1\2\0027\1\26\1%\2\28\0>\1\2\0010\0\0€G\0\1\0\17session-lens\bcoc\19load_extension\15fzf_writer\1\0\3\28minimum_grep_characters\3\2\20use_highlighter\2\29minimum_files_characters\3\2\1\0\2\16trace_entry\2\20reset_selection\2\bfzf\1\0\0\1\0\4\28override_generic_sorter\1\14case_mode\15smart_case\25override_file_sorter\2\nfuzzy\2\rdefaults\1\0\0\rmappings\1\0\0\6i\1\0\0\14<C-space>\0\n<C-h>\bhop\15extensions\6R\n<C-t>\1\0\0\16open_qflist\19send_to_qflist\nsetup\14telescope\22telescope.actions\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\1\0027\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
try_loadstring("\27LJ\1\2Õ\1\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\1>\0\2\1G\0\1\0\rmappings\1\0\5\24use_local_scrolloff\1\22respect_scrolloff\1\16hide_cursor\2\25cursor_scrolls_alone\2\rstop_eof\2\1\n\0\0\n<C-u>\n<C-d>\n<C-b>\n<C-f>\n<C-y>\n<C-e>\azt\azz\azb\nsetup\14neoscroll\frequire\0", "config", "neoscroll.nvim")
time([[Config for neoscroll.nvim]], false)
-- Config for: lspkind-nvim
time([[Config for lspkind-nvim]], true)
try_loadstring("\27LJ\1\2ã\1\0\2\6\2\f\0!+\2\0\0007\2\1\0027\2\2\0027\3\0\0016\2\3\2:\2\0\1+\2\1\0007\3\3\0007\3\4\0036\2\3\0027\3\3\0007\3\4\3\a\3\5\0T\3\17€7\3\6\0007\3\a\3\n\3\0\0T\3\v€7\3\6\0007\3\a\0037\3\b\3\n\3\0\0T\3\6€7\3\6\0007\3\a\0037\3\b\3%\4\t\0\16\5\2\0$\2\5\3%\3\n\0:\3\0\1:\2\v\1H\1\2\0\0À\1À\tmenu\bïƒ§\6 \vdetail\tdata\20completion_item\16cmp_tabnine\tname\vsource\fdefault\fpresets\tkindô\1\1\0\6\0\f\0\0204\0\0\0%\1\1\0>\0\2\0023\1\2\0004\2\0\0%\3\3\0>\2\2\0027\2\4\0023\3\6\0002\4\3\0003\5\5\0;\5\1\4:\4\a\0033\4\t\0001\5\b\0:\5\n\4:\4\v\3>\2\2\0010\0\0€G\0\1\0\15formatting\vformat\1\0\0\0\fsources\1\0\0\1\0\1\tname\16cmp_tabnine\nsetup\bcmp\1\0\5\rnvim_lua\n[Lua]\rnvim_lsp\n[LSP]\vbuffer\r[Buffer]\16cmp_tabnine\t[TN]\tpath\v[Path]\flspkind\frequire\0", "config", "lspkind-nvim")
time([[Config for lspkind-nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\1\2˜\15\0\0\4\0 \0#4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\14\0003\2\4\0003\3\3\0:\3\5\0023\3\6\0:\3\a\0023\3\b\0:\3\t\0023\3\n\0:\3\v\0023\3\f\0:\3\r\2:\2\15\0013\2\16\0003\3\17\0:\3\18\0023\3\19\0:\3\20\2:\2\21\0013\2\22\0:\2\23\0013\2\24\0:\2\25\0013\2\26\0:\2\27\0013\2\28\0:\2\29\0013\2\30\0:\2\31\1>\0\2\1G\0\1\0\tyadm\1\0\1\venable\1\19preview_config\1\0\5\brow\3\0\rrelative\vcursor\nstyle\fminimal\bcol\3\1\vborder\vsingle&current_line_blame_formatter_opts\1\0\1\18relative_time\1\28current_line_blame_opts\1\0\3\14virt_text\2\ndelay\3d\18virt_text_pos\beol\16watch_index\1\0\2\rinterval\3è\a\17follow_files\2\fkeymaps\tn [c\1\2\1\0H&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'\texpr\2\tn ]c\1\2\1\0H&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'\texpr\2\1\0\r\fnoremap\2\17v <leader>hrT<cmd>lua require\"gitsigns\".reset_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\17n <leader>hR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\17n <leader>hs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\17n <leader>hb4<cmd>lua require\"gitsigns\".blame_line(true)<CR>\to ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\tx ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17n <leader>hr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\17n <leader>hU8<cmd>lua require\"gitsigns\".reset_buffer_index()<CR>\17v <leader>hsT<cmd>lua require\"gitsigns\".stage_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\17n <leader>hp2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\17n <leader>hS2<cmd>lua require\"gitsigns\".stage_buffer()<CR>\17n <leader>hu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\nsigns\1\0\t\20max_file_length\3À¸\2\vlinehl\1\24attach_to_untracked\2\nnumhl\1\18sign_priority\3\6\15signcolumn\2\20update_debounce\3d\23current_line_blame\2\14word_diff\1\17changedelete\1\0\4\ttext\6~\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\14topdelete\1\0\4\ttext\bâ€¾\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\vdelete\1\0\4\ttext\6_\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\vchange\1\0\4\ttext\bâ”‚\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\badd\1\0\0\1\0\4\ttext\bâ”‚\nnumhl\18GitSignsAddNr\vlinehl\18GitSignsAddLn\ahl\16GitSignsAdd\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: session-lens
time([[Config for session-lens]], true)
try_loadstring("\27LJ\1\2‹\1\0\0\3\0\b\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\0013\2\6\0:\2\a\1>\0\2\1G\0\1\0\15theme_conf\1\0\1\vborder\1\17path_display\1\0\1\14previewer\2\1\2\0\0\fshorten\nsetup\17session-lens\frequire\0", "config", "session-lens")
time([[Config for session-lens]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\1\2F\0\1\6\0\3\0\b4\1\0\0007\1\1\0017\1\2\1\16\2\0\0)\3\2\0)\4\2\0)\5\2\0@\1\5\0\27nvim_replace_termcodes\bapi\bvim›\1\0\0\5\0\b\2\0284\0\0\0007\0\1\0007\0\2\0%\1\3\0>\0\2\2\21\0\0\0\b\0\1\0T\1\18€4\1\0\0007\1\1\0017\1\4\1%\2\3\0>\1\2\2\16\2\1\0007\1\5\1\16\3\0\0\16\4\0\0>\1\4\2\16\2\1\0007\1\6\1%\3\a\0>\1\3\2\v\1\0\0T\1\2€)\1\1\0T\2\1€)\1\2\0H\1\2\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0:\0\1\3\0\4\0\0064\1\0\0007\1\1\0017\1\2\0017\2\3\0>\1\2\1G\0\1\0\tbody\19UltiSnips#Anon\afn\bvim£\2\0\1\4\2\t\1,4\1\0\0007\1\1\0017\1\2\1>\1\1\2\t\1\0\0T\1\22€4\1\0\0007\1\1\0017\1\3\1>\1\1\2\t\1\0\0T\1\a€4\1\0\0007\1\1\0017\1\4\1+\2\0\0%\3\5\0>\2\2\0?\1\0\0004\1\0\0007\1\1\0017\1\4\1+\2\0\0%\3\6\0>\2\2\2%\3\a\0>\1\3\1T\1\15€+\1\1\0>\1\1\2\15\0\1\0T\2\t€4\1\0\0007\1\1\0017\1\4\1+\2\0\0%\3\b\0>\2\2\2%\3\a\0>\1\3\1T\1\2€\16\1\0\0>\1\1\1G\0\1\0\1À\2À\t<cr>\6n\n<C-n>(<C-R>=UltiSnips#ExpandSnippet()<CR>\rfeedkeys\31UltiSnips#CanExpandSnippet\15pumvisible\afn\bvim\2Ú\3\0\1\4\2\r\2B4\1\0\0007\1\1\0017\1\2\1>\1\1\0027\1\3\1\t\1\0\0T\1\14€4\1\0\0007\1\1\0017\1\4\1>\1\1\2\t\1\1\0T\1\b€4\1\0\0007\1\1\0017\1\5\1+\2\0\0%\3\6\0>\2\2\0=\1\0\1T\1,€4\1\0\0007\1\1\0017\1\a\1>\1\1\2\t\1\1\0T\1\b€4\1\0\0007\1\1\0017\1\5\1+\2\0\0%\3\b\0>\2\2\0=\1\0\1T\1\30€4\1\0\0007\1\1\0017\1\t\1>\1\1\2\t\1\1\0T\1\t€4\1\0\0007\1\1\0017\1\5\1+\2\0\0%\3\n\0>\2\2\2%\3\v\0>\1\3\1T\1\15€+\1\1\0>\1\1\2\15\0\1\0T\2\t€4\1\0\0007\1\1\0017\1\5\1+\2\0\0%\3\f\0>\2\2\2%\3\v\0>\1\3\1T\1\2€\16\1\0\0>\1\1\1G\0\1\0\1À\2À\n<tab>\6n\n<C-n>\15pumvisible,<ESC>:call UltiSnips#JumpForwards()<CR>\30UltiSnips#CanJumpForwards(<C-R>=UltiSnips#ExpandSnippet()<CR>\rfeedkeys\31UltiSnips#CanExpandSnippet\rselected\18complete_info\afn\bvimþÿÿÿ\31\2ì\1\0\1\4\1\b\1 4\1\0\0007\1\1\0017\1\2\1>\1\1\2\t\1\0\0T\1\b€4\1\0\0007\1\1\0017\1\3\1+\2\0\0%\3\4\0>\2\2\0?\1\0\0T\1\17€4\1\0\0007\1\1\0017\1\5\1>\1\1\2\t\1\0\0T\1\t€4\1\0\0007\1\1\0017\1\3\1+\2\0\0%\3\6\0>\2\2\2%\3\a\0>\1\3\1T\1\2€\16\1\0\0>\1\1\1G\0\1\0\1À\6n\n<C-p>\15pumvisible(<C-R>=UltiSnips#JumpBackwards()<CR>\rfeedkeys\31UltiSnips#CanJumpBackwards\afn\bvim\2¡\3\1\0\t\0\29\0/4\0\0\0%\1\1\0>\0\2\0021\1\2\0001\2\3\0007\3\4\0003\4\b\0003\5\6\0001\6\5\0:\6\a\5:\5\t\0042\5\b\0003\6\n\0;\6\1\0053\6\v\0;\6\2\0053\6\f\0;\6\3\0053\6\r\0;\6\4\0053\6\14\0;\6\5\0053\6\15\0;\6\6\0053\6\16\0;\6\a\5:\5\17\0043\5\21\0007\6\18\0001\a\19\0003\b\20\0>\6\3\2:\6\22\0057\6\18\0001\a\23\0003\b\24\0>\6\3\2:\6\25\0057\6\18\0001\a\26\0003\b\27\0>\6\3\2:\6\28\5:\5\18\4>\3\2\0010\0\0€G\0\1\0\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\14<C-Space>\1\0\0\1\3\0\0\6i\6s\0\fmapping\fsources\1\0\1\tname\nspell\1\0\1\tname\ttags\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\16cmp_tabnine\1\0\1\tname\rnvim_lsp\1\0\1\tname\14ultisnips\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\0\0\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\1\2¥\2\0\0\n\0\16\0\0294\0\0\0%\1\1\0>\0\2\0023\1\2\0004\2\3\0007\2\4\0027\2\5\0027\2\6\2>\2\1\0027\3\a\0027\3\b\0037\3\t\3)\4\2\0:\4\n\0034\3\v\0\16\4\1\0>\3\2\4T\6\b€4\b\0\0%\t\f\0>\b\2\0026\b\a\b7\b\r\b3\t\14\0:\2\15\t>\b\2\1A\6\3\3N\6öG\0\1\0\17capabilities\1\0\0\nsetup\14lspconfig\vipairs\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim\1\2\0\0\fpyright\19lspconfig/util\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: auto-session
time([[Config for auto-session]], true)
try_loadstring("\27LJ\1\2†\2\0\0\4\0\n\0\0154\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0004\2\4\0007\2\5\0027\2\6\2%\3\a\0>\2\2\2%\3\b\0$\2\3\2:\2\t\1>\0\2\1G\0\1\0\26auto_session_root_dir\15/sessions/\tdata\fstdpath\afn\bvim\1\0\5%auto_session_enable_last_session\1\14log_level\tinfo\25auto_restore_enabled\1\22auto_save_enabled\2\25auto_session_enabled\2\nsetup\17auto-session\frequire\0", "config", "auto-session")
time([[Config for auto-session]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd cmp-spell ]]
vim.cmd [[ packadd cmp-path ]]
vim.cmd [[ packadd cmp-nvim-ultisnips ]]
vim.cmd [[ packadd cmp-buffer ]]
vim.cmd [[ packadd cmp-nvim-lsp ]]
vim.cmd [[ packadd nvim-lspinstall ]]

-- Config for: nvim-lspinstall
try_loadstring("\27LJ\1\2A\2\0\3\1\3\0\a4\0\0\0007\0\1\0007\0\2\0+\1\0\0C\2\0\0=\0\1\1G\0\1\0\1À\24nvim_buf_set_keymap\bapi\bvimA\2\0\3\1\3\0\a4\0\0\0007\0\1\0007\0\2\0+\1\0\0C\2\0\0=\0\1\1G\0\1\0\1À\24nvim_buf_set_option\bapi\bvimÿ\21\1\2\t\1K\0Õ\0011\2\0\0001\3\1\0007\4\2\0\a\4\3\0T\4\15€4\4\4\0%\5\5\0>\4\2\0027\4\6\4>\4\1\0014\4\4\0%\5\a\0>\4\2\0027\4\b\4>\4\1\0014\4\4\0%\5\t\0>\4\2\0027\4\n\4>\4\1\1\16\4\3\0%\5\v\0%\6\f\0>\4\3\1\16\4\2\0%\5\r\0%\6\14\0%\a\15\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\6\16\0%\a\17\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\6\18\0%\a\19\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\6\20\0%\a\21\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\6\22\0%\a\23\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\6\24\0%\a\25\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\6\26\0%\a\27\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\6\28\0%\a\29\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\6\30\0%\a\31\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\6 \0%\a!\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\6\"\0%\a#\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\6$\0%\a%\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\6&\0%\a'\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\6(\0%\a)\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\6*\0%\a+\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\6,\0%\a-\0+\b\0\0>\4\5\1\16\4\2\0%\5.\0%\6,\0%\a/\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\0060\0%\a1\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\0062\0%\a3\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\0064\0%\a5\0+\b\0\0>\4\5\1\16\4\2\0%\5.\0%\0064\0%\a6\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\0067\0%\a8\0+\b\0\0>\4\5\1\16\4\2\0%\5.\0%\0067\0%\a9\0+\b\0\0>\4\5\1\16\4\2\0%\5.\0%\6:\0%\a;\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\6<\0%\a=\0+\b\0\0>\4\5\1\16\4\2\0%\5\r\0%\6>\0%\a?\0+\b\0\0>\4\5\0017\4@\0007\4A\4\15\0\4\0T\5\a€\16\4\2\0%\5\r\0%\6B\0%\aC\0+\b\0\0>\4\5\1T\4\n€7\4@\0007\4D\4\15\0\4\0T\5\6€\16\4\2\0%\5\r\0%\6B\0%\aE\0+\b\0\0>\4\5\0017\4@\0007\4F\4\15\0\4\0T\5\6€4\4G\0007\4H\0047\4I\4%\5J\0)\6\1\0>\4\3\0010\0\0€G\0\1\0\1ÀÝ\1    augroup lsp_document_highlight\n    autocmd! * <buffer>\n    autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()\n    autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()\n    augroup END\n    \14nvim_exec\bapi\bvim\23document_highlight0<cmd>lua vim.lsp.buf.range_formatting()<CR>\30document_range_formatting*<cmd>lua vim.lsp.buf.formatting()<CR>\15<leader>fm\24document_formatting\26resolved_capabilities8<Cmd>lua require('jdtls').test_nearest_method()<CR>\16<leader>cjn/<Cmd>lua require('jdtls').test_class()<CR>\16<leader>cjt7<Cmd>lua require('jdtls').extract_method(true)<CR>\15<leader>cm9<Cmd>lua require('jdtls').extract_constant(true)<CR>5<Cmd>lua require('jdtls').extract_constant()<CR>\15<leader>ct9<Cmd>lua require('jdtls').extract_variable(true)<CR>5<Cmd>lua require('jdtls').extract_variable()<CR>\15<leader>cv5<Cmd>lua require('jdtls').organize_imports()<CR>\15<leader>coA<Cmd>lua require('jdtls').code_action(false, 'refactor')<CR>\15<leader>cr4<Cmd>lua require('jdtls').code_action(true)<CR>\6v0<Cmd>lua require('jdtls').code_action()<CR>\15<leader>ca2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\14<leader>q0<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\a]d0<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\a[d<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>\14<leader>e*<cmd>lua vim.lsp.buf.references()<CR>\agr&<cmd>lua vim.lsp.buf.rename()<CR>\15<leader>rn,<cmd>Telescope lsp_type_definitions<CR>\14<leader>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\15<leader>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\15<leader>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\15<leader>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>+<cmd>Telescope lsp_implementations<CR>\agi%<Cmd>lua vim.lsp.buf.hover()<CR>\6K'<Cmd>Telescope lsp_definitions<CR>\agd+<Cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\27v:lua.vim.lsp.omnifunc\romnifunc\17add_commands\16jdtls.setup\14setup_dap\njdtls!setup_dap_main_class_configs\14jdtls.dap\frequire\tjava\tname\0\0ê\2\0\0\4\1\18\0\0294\0\0\0007\0\1\0007\0\2\0007\0\3\0>\0\1\0024\1\4\0%\2\5\0>\1\2\0027\1\6\1\16\2\0\0>\1\2\2\16\0\1\0007\1\a\0007\1\b\0017\1\t\1)\2\2\0:\2\n\0017\1\a\0007\1\b\0017\1\t\0013\2\r\0003\3\f\0:\3\14\2:\2\v\0013\1\15\0:\0\16\1+\2\0\0:\2\17\1H\1\2\0\2À\14on_attach\17capabilities\1\0\0\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\24update_capabilities\17cmp_nvim_lsp\frequire\29make_client_capabilities\rprotocol\blsp\bvimã\6\0\0\r\1(\0U4\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\0\0%\1\1\0>\0\2\0027\0\3\0>\0\1\0024\1\4\0007\1\5\1\16\2\0\0%\3\6\0>\1\3\0014\1\4\0007\1\5\1\16\2\0\0%\3\a\0>\1\3\0014\1\b\0\16\2\0\0>\1\2\4D\4:€+\6\0\0>\6\1\2\a\5\t\0T\a\4€4\a\0\0%\b\v\0>\a\2\2:\a\n\6\a\5\a\0T\a\2€3\a\r\0:\a\f\6\a\5\6\0T\a\2€3\a\14\0:\a\f\6\a\5\15\0T\a!€4\a\0\0%\b\16\0>\a\2\0027\b\17\a:\b\17\0067\b\n\a:\b\n\0067\b\18\a:\b\18\0067\b\19\0067\b\20\b)\t\2\0:\t\21\b7\b\19\0067\b\22\b3\t\24\0003\n\26\0003\v\25\0:\v\27\n:\n\28\t3\n \0003\v\30\0003\f\29\0:\f\31\v:\v!\n:\n\"\t:\t\23\b7\b#\a:\b#\0063\b$\0:\b\f\0063\b&\0:\b%\0064\a\0\0%\b'\0>\a\2\0026\a\5\a7\a\2\a\16\b\6\0>\a\2\1B\4\3\3N\4ÄG\0\1\0\3À\14lspconfig\1\0\1\27allow_incremental_sync\2\nflags\1\2\0\0\tjava\bcmd\29codeActionLiteralSupport\19codeActionKind\1\0\0\rvalueSet\1\0\0\1\4\0\0\29source.generate.toString#source.generate.hashCodeEquals\27source.organizeImports\19resolveSupport\15properties\1\0\0\1\2\0\0\tedit\1\0\1\16dataSupport\2\15codeAction\17textDocument\18configuration\14workspace\17capabilities\fon_init\17init_options\22lsp.java.settings\tjava\1\3\0\0\6c\bcpp\1\4\0\0\nswift\16objective-c\18objective-cpp\14filetypes\21lsp.lua.settings\rsettings\blua\npairs\14sourcekit\vclangd\vinsert\ntable\22installed_servers\nsetup\15lspinstall\frequireG\0\0\2\1\4\0\b+\0\0\0007\0\0\0>\0\1\0014\0\1\0007\0\2\0%\1\3\0>\0\2\1G\0\1\0\0À\fbufdo e\bcmd\bvim\18setup_serversŽ\1\1\0\6\0\t\0\0152\0\0\0003\1\0\0001\2\1\0001\3\2\0001\4\4\0:\4\3\0007\4\3\0>\4\1\0014\4\5\0%\5\6\0>\4\2\0021\5\b\0:\5\a\0040\0\0€G\0\1\0\0\22post_install_hook\15lspinstall\frequire\0\18setup_servers\0\0\1\0\2\vsilent\2\fnoremap\2\0", "config", "nvim-lspinstall")

vim.cmd [[ packadd cmp-nvim-tags ]]
time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file IPythonCellExecuteCellVerboseJump lua require("packer.load")({'vim-ipython-cell'}, { cmd = "IPythonCellExecuteCellVerboseJump", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file IPythonCellInsertAbove lua require("packer.load")({'vim-ipython-cell'}, { cmd = "IPythonCellInsertAbove", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file IPythonCellPrevCell lua require("packer.load")({'vim-ipython-cell'}, { cmd = "IPythonCellPrevCell", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file IPythonCellInsertBelow lua require("packer.load")({'vim-ipython-cell'}, { cmd = "IPythonCellInsertBelow", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file IPythonOpen lua require("packer.load")({'vim-ipython-cell'}, { cmd = "IPythonOpen", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file IPythonCellNextCell lua require("packer.load")({'vim-ipython-cell'}, { cmd = "IPythonCellNextCell", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType rmd ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "rmd" }, _G.packer_plugins)]]
vim.cmd [[au FileType python ++once lua require("packer.load")({'vim-ipython-cell'}, { ft = "python" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufReadPre * ++once lua require("packer.load")({'presence.nvim'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles(1) end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
