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
  ["AutoSave.nvim"] = {
    config = { "\27LJ\1\2Í\2\0\0\5\0\15\0\0214\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0%\2\4\0004\3\5\0007\3\6\0037\3\a\3%\4\b\0>\3\2\2$\2\3\2:\2\t\0013\2\n\0:\2\v\0013\2\f\0002\3\0\0:\3\r\2:\2\14\1>\0\2\1G\0\1\0\15conditions\20filetype_is_not\1\0\2\vexists\2\15modifiable\2\vevents\1\3\0\0\16InsertLeave\16TextChanged\22execution_message\r%H:%M:%S\rstrftime\afn\bvim\28ÔÄå AutoSave: saved at \1\0\5\19debounce_delay\3á\1\22write_all_buffers\1\fenabled\2\20on_off_commands\2 clean_command_line_interval\3\0\nsetup\rautosave\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/AutoSave.nvim",
    url = "https://github.com/Pocco81/AutoSave.nvim"
  },
  ["clever-f.vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/clever-f.vim",
    url = "https://github.com/rhysd/clever-f.vim"
  },
  ["clipboard-image.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/clipboard-image.nvim",
    url = "https://github.com/ekickx/clipboard-image.nvim"
  },
  ["coq.artifacts"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/coq.artifacts",
    url = "https://github.com/ms-jpq/coq.artifacts"
  },
  ["coq.thirdparty"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/coq.thirdparty",
    url = "https://github.com/ms-jpq/coq.thirdparty"
  },
  coq_nvim = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/coq_nvim",
    url = "https://github.com/zeertzjq/coq_nvim"
  },
  ["dashboard-nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["dracula.nvim"] = {
    config = { "\27LJ\1\2Ê\3\0\0\2\0\r\0%4\0\0\0007\0\1\0%\1\2\0>\0\2\0014\0\0\0007\0\3\0)\1\2\0:\1\4\0004\0\0\0007\0\3\0)\1\2\0:\1\5\0004\0\0\0007\0\3\0%\1\a\0:\1\6\0004\0\0\0007\0\1\0%\1\b\0>\0\2\0014\0\0\0007\0\1\0%\1\t\0>\0\2\0014\0\0\0007\0\1\0%\1\n\0>\0\2\0014\0\0\0007\0\1\0%\1\v\0>\0\2\0014\0\0\0007\0\1\0%\1\f\0>\0\2\1G\0\1\0002hi CursorColumn cterm=underline guibg=#44475a-hi link GitSignsCurrentLineBlame Comment<hi IndentBlanklineSpaceChar guifg=#444d56 gui=nocombine7hi IndentBlanklineChar guifg=#444d56 gui=nocombine\28hi Visual guibg=#8be9fd\f#44475a\29dracula_lualine_bg_color\27dracula_transparent_bg\31dracula_show_end_of_buffer\6g\24colorscheme dracula\bcmd\bvim\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/dracula.nvim",
    url = "https://github.com/Mofiqul/dracula.nvim"
  },
  ["filetype.nvim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/filetype.nvim",
    url = "https://github.com/nathom/filetype.nvim"
  },
  firenvim = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/firenvim",
    url = "https://github.com/glacambre/firenvim"
  },
  ["fzy-lua-native"] = {
    load_after = {
      ["wilder.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/fzy-lua-native",
    url = "https://github.com/romgrk/fzy-lua-native"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\1\2ä\3\0\0\3\0\f\0\0154\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\0013\2\6\0:\2\a\0013\2\b\0:\2\t\0013\2\n\0:\2\v\1>\0\2\1G\0\1\0\tyadm\1\0\1\venable\1\19preview_config\1\0\5\brow\3\0\rrelative\vcursor\nstyle\fminimal\bcol\3\1\vborder\vsingle&current_line_blame_formatter_opts\1\0\1\18relative_time\1\28current_line_blame_opts\1\0\3\14virt_text\2\ndelay\3d\18virt_text_pos\beol\1\0\5\20update_debounce\3d\18sign_priority\3\6\24attach_to_untracked\2\23current_line_blame\2\20max_file_length\3¿∏\2\nsetup\rgitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  hop = {
    commands = { "HopWord", "HopLine", "HopChar1", "HopChar2", "HopPattern", "HopLineStart" },
    config = { "\27LJ\1\0021\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\bhop\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/hop",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\1\2¬\4\0\0\3\0\17\0!4\0\0\0007\0\1\0)\1\2\0:\1\2\0004\0\0\0007\0\1\0007\0\3\0\16\1\0\0007\0\4\0%\2\5\0>\0\3\0014\0\0\0007\0\1\0007\0\3\0\16\1\0\0007\0\4\0%\2\6\0>\0\3\0014\0\a\0%\1\b\0>\0\2\0027\0\t\0003\1\v\0003\2\n\0:\2\f\0013\2\r\0:\2\14\1>\0\2\0014\0\0\0007\0\15\0%\1\16\0>\0\2\1G\0\1\0001autocmd CursorMoved * IndentBlanklineRefresh\bcmd\20buftype_exclude\1\3\0\0\rterminal\vnofile\21filetype_exclude\1\0\4\25show_current_context\2\28show_first_indent_level\2\21show_end_of_line\2\25space_char_blankline\6 \1\19\0\0\rstartify\14dashboard\16dotooagenda\blog\rfugitive\14gitcommit\vpacker\fvimwiki\nvista\thelp\ftodoist\rNvimTree\rpeekaboo\bgit\20TelescopePrompt\rundotree\24flutterToolsOutline\fOutline\nsetup\21indent_blankline\frequire\feol:‚Ü¥\14space:‚ãÖ\vappend\14listchars\tlist\bopt\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["jupyter_ascending.vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/jupyter_ascending.vim",
    url = "https://github.com/untitled-ai/jupyter_ascending.vim"
  },
  ["lazygit.nvim"] = {
    commands = { "LazyGit" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/lazygit.nvim",
    url = "https://github.com/kdheepak/lazygit.nvim"
  },
  ["lualine-lsp-progress"] = {
    after = { "lualine.nvim" },
    load_after = {
      ["nvim-gps"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/lualine-lsp-progress",
    url = "https://github.com/arkav/lualine-lsp-progress"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\1\2/\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\20plugins.lualine\frequire\0" },
    load_after = {
      ["lualine-lsp-progress"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/lualine.nvim",
    url = "https://github.com/hoob3rt/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\1\2F\0\1\6\0\3\0\b4\1\0\0007\1\1\0017\1\2\1\16\2\0\0)\3\2\0)\4\2\0)\5\2\0@\1\5\0\27nvim_replace_termcodes\bapi\bvim”\2\0\0\2\2\f\2+4\0\0\0007\0\1\0007\0\2\0>\0\1\2\b\0\0\0T\0\4Ä+\0\0\0%\1\3\0@\0\2\0T\0 Ä4\0\0\0007\0\1\0007\0\4\0>\0\1\2\b\0\0\0T\0\23Ä4\0\0\0007\0\1\0007\0\5\0003\1\6\0>\0\2\0027\0\a\0\b\0\1\0T\0\5Ä+\0\1\0007\0\b\0%\1\t\0@\0\2\0T\0\rÄ+\0\1\0007\0\b\0%\1\n\0>\0\2\2+\1\1\0007\1\v\1>\1\1\2$\0\1\0H\0\2\0T\0\3Ä+\0\1\0007\0\v\0@\0\1\0G\0\1\0\2¿\1¿\17autopairs_cr\n<c-e>\n<c-y>\besc\rselected\1\2\0\0\rselected\18complete_info\15pumvisible,<cmd>call UltiSnips#ExpandSnippet()<CR>\31UltiSnips#CanExpandSnippet\afn\bvim\0˛ˇˇˇ\31Û\1\1\0\b\0\16\0\0244\0\0\0007\0\1\0007\0\2\0004\1\3\0%\2\4\0>\1\2\0021\2\5\0007\3\6\0013\4\a\0>\3\2\0014\3\b\0002\4\0\0:\4\t\0034\3\t\0001\4\v\0:\4\n\3\16\3\0\0%\4\f\0%\5\r\0%\6\14\0003\a\15\0>\3\5\0010\0\0ÄG\0\1\0\1\0\2\texpr\2\fnoremap\2\22v:lua.MUtils.CR()\t<cr>\6i\0\aCR\vMUtils\a_G\1\0\3\vmap_bs\1\rcheck_ts\2\vmap_cr\1\nsetup\0\19nvim-autopairs\frequire\20nvim_set_keymap\bapi\bvim\0" },
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\1\2»\1\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\1>\0\2\1G\0\1\0\foptions\1\0\0\1\0\6\22show_buffer_icons\2\27always_show_bufferline\2\20show_close_icon\1\28show_buffer_close_icons\1\20separator_style\tthin\vnumber\tnone\nsetup\15bufferline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/nvim-bufferline.lua",
    url = "https://github.com/akinsho/nvim-bufferline.lua"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\1\0027\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    config = { "\27LJ\1\2^\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequireO\1\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0001\2\3\0:\2\5\1>\0\2\1G\0\1\0\thook\1\0\0\0\nsetup\17nvim_comment\frequire\0" },
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/nvim-comment",
    url = "https://github.com/terrortylor/nvim-comment"
  },
  ["nvim-gps"] = {
    after = { "lualine-lsp-progress" },
    config = { "\27LJ\1\2˜\1\0\0\3\0\b\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\0013\2\6\0:\2\a\1>\0\2\1G\0\1\0\14languages\1\0\b\bcpp\2\6c\2\trust\2\tjava\2\ago\2\vpython\2\15javascript\2\blua\2\nicons\1\0\1\14separator\b > \1\0\5\15class-name\tÔ†ñ \19container-name\tÓò§ \16method-name\tÔö¶ \rtag-name\bÔßª\18function-name\tÔûî \nsetup\rnvim-gps\frequire\0" },
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/nvim-gps",
    url = "https://github.com/SmiteshP/nvim-gps"
  },
  ["nvim-hlslens"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/nvim-hlslens",
    url = "https://github.com/kevinhwang91/nvim-hlslens"
  },
  ["nvim-lsp-installer"] = {
    config = { "\27LJ\1\2A\2\0\3\1\3\0\a4\0\0\0007\0\1\0007\0\2\0+\1\0\0C\2\0\0=\0\1\1G\0\1\0\1¿\24nvim_buf_set_keymap\bapi\bvimA\2\0\3\1\3\0\a4\0\0\0007\0\1\0007\0\2\0+\1\0\0C\2\0\0=\0\1\1G\0\1\0\1¿\24nvim_buf_set_option\bapi\bvimﬁ\a\1\2\n\0 \0W1\2\0\0001\3\1\0\16\4\3\0%\5\2\0%\6\3\0>\4\3\0013\4\4\0\16\5\2\0%\6\5\0%\a\6\0%\b\a\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\b\0%\b\t\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\n\0%\b\v\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\f\0%\b\r\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\14\0%\b\15\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\16\0%\b\17\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\18\0%\b\19\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\20\0%\b\21\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\22\0%\b\23\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\24\0%\b\25\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\26\0%\b\27\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\28\0%\b\29\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\30\0%\b\31\0\16\t\4\0>\5\5\0010\0\0ÄG\0\1\0*<cmd>lua vim.lsp.buf.formatting()<CR>\r<space>f-<cmd>lua vim.diagnostic.setloclist()<CR>\r<space>q,<cmd>lua vim.diagnostic.goto_next()<CR>\a]d,<cmd>lua vim.diagnostic.goto_prev()<CR>\a[d-<cmd>lua vim.diagnostic.open_float()<CR>\14<space>dg*<cmd>lua vim.lsp.buf.references()<CR>\agr+<cmd>lua vim.lsp.buf.code_action()<CR>\14<space>ca&<cmd>lua vim.lsp.buf.rename()<CR>\14<space>rn.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<cmd>lua vim.lsp.buf.hover()<CR>\6D*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\1\0\2\fnoremap\2\vsilent\2\27v:lua.vim.lsp.omnifunc\romnifunc\0\0˝\3\0\1\b\2\27\0002+\1\0\0007\2\0\0006\1\2\1\15\0\1\0T\2,Ä7\2\0\0\a\2\1\0T\2\28Ä3\2\18\0003\3\6\0003\4\4\0003\5\3\0:\5\5\4:\4\a\0033\4\r\0002\5\0\b4\6\b\0007\6\t\0067\6\n\6%\a\v\0>\6\2\2)\a\2\0009\a\6\0054\6\b\0007\6\t\0067\6\n\6%\a\f\0>\6\2\2)\a\2\0009\a\6\5:\5\14\4:\4\15\0033\4\16\0:\4\17\3:\3\19\2:\2\2\1+\2\1\0:\2\20\0013\2\22\0:\2\21\0014\2\23\0%\3\24\0>\2\2\2\16\4\0\0007\3\25\0007\5\26\2\16\6\1\0>\5\2\0=\3\1\1G\0\1\0\1¿\2¿\28lsp_ensure_capabilities\nsetup\bcoq\frequire\1\0\1\26debounce_text_changes\3ñ\1\nflags\14on_attach\bLua\1\0\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\2\15maxPreload\3†ç\6\20preloadFileSize\3êN\28$VIMRUNTIME/lua/vim/lsp\20$VIMRUNTIME/lua\vexpand\afn\bvim\16diagnostics\1\0\0\fglobals\1\0\0\1\3\0\0\bvim\19packer_plugins\rsettings\16sumneko_lua\tnameª\4\1\0\f\0\26\0E4\0\0\0007\0\1\0%\1\2\0%\2\3\0%\3\4\0$\1\3\1>\0\2\0014\0\5\0007\0\6\0007\0\a\0\14\0\0\0T\0\4Ä4\0\0\0007\0\1\0%\1\b\0>\0\2\0014\0\5\0007\0\t\0007\0\a\0\14\0\0\0T\0\4Ä4\0\0\0007\0\1\0%\1\n\0>\0\2\0014\0\v\0%\1\t\0>\0\2\0023\1\f\0002\2\0\0:\2\r\0014\2\v\0%\3\14\0>\2\2\2:\2\15\0014\2\16\0\16\3\1\0>\2\2\4D\5\18Ä7\a\17\0\16\b\5\0>\a\2\3\15\0\a\0T\t\rÄ\16\n\b\0007\t\18\b>\t\2\2\14\0\t\0T\t\bÄ4\t\19\0%\n\20\0\16\v\5\0$\n\v\n>\t\2\1\16\n\b\0007\t\21\b>\t\2\1B\5\3\3N\5Ï1\2\22\0007\3\23\0001\4\24\0>\3\2\0014\3\0\0007\3\1\3%\4\25\0>\3\2\0010\0\0ÄG\0\1\0\vCOQnow\0\20on_server_ready\0\finstall\16Installing \nprint\17is_installed\15get_server\npairs\25jedi_language_server\rlsp.jedi\16sumneko_lua\1\0\0\frequire\31packadd nvim-lsp-installer\23nvim-lsp-installer\27packadd nvim-lspconfig\vloaded\19nvim-lspconfig\19packer_plugins\21/lua/lsp/coq.vim\19~/.config/nvim\fsource \bcmd\bvim\0" },
    load_after = {
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    after = { "nvim-lsp-installer" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-ts-hint-textobject", "nvim-gps", "nvim-ts-context-commentstring", "nvim-autopairs", "nvim-ts-rainbow", "nvim-treesitter-context", "nvim-comment", "nvim-treesitter-textobjects" },
    config = { "\27LJ\1\0022\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\23plugins.treesitter\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-context",
    url = "https://github.com/romgrk/nvim-treesitter-context"
  },
  ["nvim-treesitter-textobjects"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-ts-context-commentstring"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-ts-hint-textobject"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/nvim-ts-hint-textobject",
    url = "https://github.com/mfussenegger/nvim-ts-hint-textobject"
  },
  ["nvim-ts-rainbow"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["presence.nvim"] = {
    config = { "\27LJ\1\2Ω\3\0\0\4\0\5\0\n4\0\0\0%\1\1\0>\0\2\2\16\1\0\0007\0\2\0003\2\3\0002\3\0\0:\3\4\2>\0\3\1G\0\1\0\14blacklist\1\0\14\14client_id\023793271441293967371\15main_image\vneovim\16auto_update\2\21line_number_text\22Line %s out of %s\fbuttons\2\17editing_text\15Editing %s\21debounce_timeout\3\n\20git_commit_text\23Committing changes\24plugin_manager_text\21Managing plugins\17reading_text\15Reading %s\22neovim_image_text\25The Only True Editor\23enable_line_number\2\23file_explorer_text\16Browsing %s\19workspace_text\18Working on %s\nsetup\rpresence\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/presence.nvim",
    url = "https://github.com/andweeb/presence.nvim"
  },
  ["project.nvim"] = {
    config = { "\27LJ\1\2◊\1\0\0\3\0\b\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\0013\2\6\0:\2\a\1>\0\2\1G\0\1\0\rpatterns\1\t\0\0\t.git\v_darcs\b.hg\t.bzr\t.svn\rMakefile\17package.json\16__init__.py\22detection_methods\1\0\2\17silent_chdir\1\16show_hidden\2\1\3\0\0\blsp\fpattern\nsetup\17project_nvim\frequire\0" },
    load_after = {
      ["telescope.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  rnvimr = {
    commands = { "RnvimrToggle" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/rnvimr",
    url = "https://github.com/kevinhwang91/rnvimr"
  },
  ["specs.nvim"] = {
    config = { "\27LJ\1\2ü\2\0\0\5\0\r\0\0234\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0004\3\0\0%\4\1\0>\3\2\0027\3\5\3:\3\6\0024\3\0\0%\4\1\0>\3\2\0027\3\a\3:\3\b\2:\2\t\0012\2\0\0:\2\n\0013\2\v\0:\2\f\1>\0\2\1G\0\1\0\20ignore_buftypes\1\0\1\vnofile\2\21ignore_filetypes\npopup\fresizer\19shrink_resizer\nfader\16pulse_fader\1\0\5\vinc_ms\3\n\nwidth\3\n\nblend\3\n\rdelay_ms\3\0\nwinhl\nPMenu\1\0\2\15show_jumps\2\rmin_jump\3\n\nsetup\nspecs\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/specs.nvim",
    url = "https://github.com/edluffy/specs.nvim"
  },
  ["suda.vim"] = {
    commands = { "SudaRead", "SudaWrite" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/suda.vim",
    url = "https://github.com/lambdalisue/suda.vim"
  },
  ["surround.nvim"] = {
    config = { "\27LJ\1\2U\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\1\19mappings_style\rsandwich\nsetup\rsurround\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/surround.nvim",
    url = "https://github.com/blackCauldron7/surround.nvim"
  },
  ["symbols-outline.nvim"] = {
    commands = { "SymbolsOutline", "SymbolsOutlineOpen" },
    config = { "\27LJ\1\2ô\v\0\0\4\0=\0A4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\0012\2\0\0:\2\6\0013\2\b\0003\3\a\0:\3\t\0023\3\n\0:\3\v\0023\3\f\0:\3\r\0023\3\14\0:\3\15\0023\3\16\0:\3\17\0023\3\18\0:\3\19\0023\3\20\0:\3\21\0023\3\22\0:\3\23\0023\3\24\0:\3\25\0023\3\26\0:\3\27\0023\3\28\0:\3\29\0023\3\30\0:\3\31\0023\3 \0:\3!\0023\3\"\0:\3#\0023\3$\0:\3%\0023\3&\0:\3'\0023\3(\0:\3)\0023\3*\0:\3+\0023\3,\0:\3-\0023\3.\0:\3/\0023\0030\0:\0031\0023\0032\0:\0033\0023\0034\0:\0035\0023\0036\0:\0037\0023\0038\0:\0039\0023\3:\0:\3;\2:\2<\1>\0\2\1G\0\1\0\fsymbols\18TypeParameter\1\0\2\ticon\tùôè\ahl\16TSParameter\rOperator\1\0\2\ticon\6+\ahl\15TSOperator\nEvent\1\0\2\ticon\tüó≤\ahl\vTSType\vStruct\1\0\2\ticon\tùì¢\ahl\vTSType\15EnumMember\1\0\2\ticon\bÔÖù\ahl\fTSField\tNull\1\0\2\ticon\tNULL\ahl\vTSType\bKey\1\0\2\ticon\tüîê\ahl\vTSType\vObject\1\0\2\ticon\b‚¶ø\ahl\vTSType\nArray\1\0\2\ticon\bÔô©\ahl\15TSConstant\fBoolean\1\0\2\ticon\b‚ä®\ahl\14TSBoolean\vNumber\1\0\2\ticon\6#\ahl\rTSNumber\vString\1\0\2\ticon\tùìê\ahl\rTSString\rConstant\1\0\2\ticon\bÓà¨\ahl\15TSConstant\rVariable\1\0\2\ticon\bÓûõ\ahl\15TSConstant\rFunction\1\0\2\ticon\bÔÇö\ahl\15TSFunction\14Interface\1\0\2\ticon\bÔ∞Æ\ahl\vTSType\tEnum\1\0\2\ticon\b‚Ñ∞\ahl\vTSType\16Constructor\1\0\2\ticon\bÓàè\ahl\18TSConstructor\nField\1\0\2\ticon\bÔöß\ahl\fTSField\rProperty\1\0\2\ticon\bÓò§\ahl\rTSMethod\vMethod\1\0\2\ticon\a∆í\ahl\rTSMethod\nClass\1\0\2\ticon\tùìí\ahl\vTSType\fPackage\1\0\2\ticon\bÔ£ñ\ahl\16TSNamespace\14Namespace\1\0\2\ticon\bÔô©\ahl\16TSNamespace\vModule\1\0\2\ticon\bÔö¶\ahl\16TSNamespace\tFile\1\0\0\1\0\2\ticon\bÔúì\ahl\nTSURI\18lsp_blacklist\fkeymaps\1\0\6\17code_actions\6a\18rename_symbol\6r\17hover_symbol\14<C-space>\18goto_location\t<Cr>\19focus_location\6o\nclose\n<Esc>\1\0\t\16show_guides\2\24show_symbol_details\2\27highlight_hovered_item\2\26show_relative_numbers\2\17auto_preview\2\25preview_bg_highlight\nPmenu\17show_numbers\2\rposition\nright\nwidth\3<\nsetup\20symbols-outline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["tabout.nvim"] = {
    config = { "\27LJ\1\2ﬂ\2\0\0\4\0\f\0\0234\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0002\2\a\0003\3\4\0;\3\1\0023\3\5\0;\3\2\0023\3\6\0;\3\3\0023\3\a\0;\3\4\0023\3\b\0;\3\5\0023\3\t\0;\3\6\2:\2\n\0012\2\0\0:\2\v\1>\0\2\1G\0\1\0\fexclude\ftabouts\1\0\2\topen\6{\nclose\6}\1\0\2\topen\6[\nclose\6]\1\0\2\topen\6(\nclose\6)\1\0\2\topen\6`\nclose\6`\1\0\2\topen\6\"\nclose\6\"\1\0\2\topen\6'\nclose\6'\1\0\a\21act_as_shift_tab\2\21backwards_tabkey\5\21enable_backwards\2\21ignore_beginning\2\15act_as_tab\2\vtabkey\5\15completion\2\nsetup\vtabout\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/tabout.nvim",
    url = "https://github.com/abecodes/tabout.nvim"
  },
  ["telescope.nvim"] = {
    after = { "project.nvim" },
    commands = { "Telescope" },
    config = { "\27LJ\1\2⁄\2\0\0\5\0\14\0\0274\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\f\0003\2\3\0004\3\0\0%\4\4\0>\3\2\0027\3\5\0037\3\6\3:\3\a\0024\3\0\0%\4\4\0>\3\2\0027\3\b\0037\3\6\3:\3\t\0024\3\0\0%\4\4\0>\3\2\0027\3\n\0037\3\6\3:\3\v\2:\2\r\1>\0\2\1G\0\1\0\rdefaults\1\0\0\21qflist_previewer\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\25telescope.previewers\1\0\3\21sorting_strategy\14ascending\18prompt_prefix\nüî≠ \20selection_caret\tÔÅ° \nsetup\14telescope\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ultisnips = {
    after_files = { "/home/rok/.local/share/nvim/site/pack/packer/opt/ultisnips/after/plugin/UltiSnips_after.vim" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/ultisnips",
    url = "https://github.com/SirVer/ultisnips"
  },
  ["vim-ipython-cell"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/vim-ipython-cell",
    url = "https://github.com/hanschen/vim-ipython-cell"
  },
  ["vim-pandoc"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/vim-pandoc",
    url = "https://github.com/vim-pandoc/vim-pandoc"
  },
  ["vim-pandoc-syntax"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/vim-pandoc-syntax",
    url = "https://github.com/vim-pandoc/vim-pandoc-syntax"
  },
  ["vim-rmarkdown"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/vim-rmarkdown",
    url = "https://github.com/vim-pandoc/vim-rmarkdown"
  },
  ["vim-slime"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/vim-slime",
    url = "https://github.com/adavidwilson/vim-slime"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/vim-snippets",
    url = "https://github.com/fecet/vim-snippets"
  },
  ["vim-startuptime"] = {
    commands = { "StartupTime" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/vim-startuptime",
    url = "https://github.com/dstein64/vim-startuptime"
  },
  vimtex = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/vimtex",
    url = "https://github.com/lervag/vimtex"
  },
  ["wilder.nvim"] = {
    after = { "fzy-lua-native" },
    config = { "\27LJ\1\2^\0\0\4\0\5\0\b4\0\0\0007\0\1\0%\1\2\0%\2\3\0%\3\4\0$\1\3\1>\0\2\1G\0\1\0\28/lua/plugins/wilder.vim\19~/.config/nvim\fsource \bcmd\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/wilder.nvim",
    url = "https://github.com/gelguy/wilder.nvim"
  },
  ["wildfire.vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rok/.local/share/nvim/site/pack/packer/opt/wildfire.vim",
    url = "https://github.com/gcmt/wildfire.vim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: dracula.nvim
time([[Config for dracula.nvim]], true)
try_loadstring("\27LJ\1\2Ê\3\0\0\2\0\r\0%4\0\0\0007\0\1\0%\1\2\0>\0\2\0014\0\0\0007\0\3\0)\1\2\0:\1\4\0004\0\0\0007\0\3\0)\1\2\0:\1\5\0004\0\0\0007\0\3\0%\1\a\0:\1\6\0004\0\0\0007\0\1\0%\1\b\0>\0\2\0014\0\0\0007\0\1\0%\1\t\0>\0\2\0014\0\0\0007\0\1\0%\1\n\0>\0\2\0014\0\0\0007\0\1\0%\1\v\0>\0\2\0014\0\0\0007\0\1\0%\1\f\0>\0\2\1G\0\1\0002hi CursorColumn cterm=underline guibg=#44475a-hi link GitSignsCurrentLineBlame Comment<hi IndentBlanklineSpaceChar guifg=#444d56 gui=nocombine7hi IndentBlanklineChar guifg=#444d56 gui=nocombine\28hi Visual guibg=#8be9fd\f#44475a\29dracula_lualine_bg_color\27dracula_transparent_bg\31dracula_show_end_of_buffer\6g\24colorscheme dracula\bcmd\bvim\0", "config", "dracula.nvim")
time([[Config for dracula.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file StartupTime lua require("packer.load")({'vim-startuptime'}, { cmd = "StartupTime", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file RnvimrToggle lua require("packer.load")({'rnvimr'}, { cmd = "RnvimrToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SudaWrite lua require("packer.load")({'suda.vim'}, { cmd = "SudaWrite", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopWord lua require("packer.load")({'hop'}, { cmd = "HopWord", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopChar2 lua require("packer.load")({'hop'}, { cmd = "HopChar2", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file LazyGit lua require("packer.load")({'lazygit.nvim'}, { cmd = "LazyGit", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SudaRead lua require("packer.load")({'suda.vim'}, { cmd = "SudaRead", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopPattern lua require("packer.load")({'hop'}, { cmd = "HopPattern", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SymbolsOutline lua require("packer.load")({'symbols-outline.nvim'}, { cmd = "SymbolsOutline", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SymbolsOutlineOpen lua require("packer.load")({'symbols-outline.nvim'}, { cmd = "SymbolsOutlineOpen", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopLine lua require("packer.load")({'hop'}, { cmd = "HopLine", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopLineStart lua require("packer.load")({'hop'}, { cmd = "HopLineStart", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopChar1 lua require("packer.load")({'hop'}, { cmd = "HopChar1", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'clipboard-image.nvim', 'vim-pandoc-syntax', 'markdown-preview.nvim', 'vimtex', 'vim-pandoc'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType sh ++once lua require("packer.load")({'vim-slime'}, { ft = "sh" }, _G.packer_plugins)]]
vim.cmd [[au FileType r ++once lua require("packer.load")({'jupyter_ascending.vim', 'vim-slime'}, { ft = "r" }, _G.packer_plugins)]]
vim.cmd [[au FileType python ++once lua require("packer.load")({'jupyter_ascending.vim', 'vim-ipython-cell', 'vim-slime'}, { ft = "python" }, _G.packer_plugins)]]
vim.cmd [[au FileType rmd ++once lua require("packer.load")({'vim-rmarkdown', 'clipboard-image.nvim', 'vim-pandoc-syntax', 'markdown-preview.nvim', 'vimtex', 'vim-pandoc'}, { ft = "rmd" }, _G.packer_plugins)]]
vim.cmd [[au FileType tex ++once lua require("packer.load")({'vim-pandoc-syntax', 'vimtex', 'vim-pandoc'}, { ft = "tex" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufNewFile * ++once lua require("packer.load")({'gitsigns.nvim'}, { event = "BufNewFile *" }, _G.packer_plugins)]]
vim.cmd [[au CmdlineEnter * ++once lua require("packer.load")({'wilder.nvim'}, { event = "CmdlineEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufReadPost * ++once lua require("packer.load")({'presence.nvim'}, { event = "BufReadPost *" }, _G.packer_plugins)]]
vim.cmd [[au CursorMoved * ++once lua require("packer.load")({'specs.nvim'}, { event = "CursorMoved *" }, _G.packer_plugins)]]
vim.cmd [[au BufReadPre * ++once lua require("packer.load")({'AutoSave.nvim', 'nvim-lspconfig'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'surround.nvim', 'nvim-treesitter', 'indent-blankline.nvim', 'nvim-hlslens', 'wildfire.vim', 'clever-f.vim', 'gitsigns.nvim', 'nvim-bufferline.lua', 'nvim-colorizer.lua'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'tabout.nvim', 'ultisnips'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'dashboard-nvim'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/rok/.local/share/nvim/site/pack/packer/opt/vim-rmarkdown/ftdetect/rmarkdown.vim]], true)
vim.cmd [[source /home/rok/.local/share/nvim/site/pack/packer/opt/vim-rmarkdown/ftdetect/rmarkdown.vim]]
time([[Sourcing ftdetect script at: /home/rok/.local/share/nvim/site/pack/packer/opt/vim-rmarkdown/ftdetect/rmarkdown.vim]], false)
time([[Sourcing ftdetect script at: /home/rok/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/cls.vim]], true)
vim.cmd [[source /home/rok/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/cls.vim]]
time([[Sourcing ftdetect script at: /home/rok/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/cls.vim]], false)
time([[Sourcing ftdetect script at: /home/rok/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]], true)
vim.cmd [[source /home/rok/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]]
time([[Sourcing ftdetect script at: /home/rok/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]], false)
time([[Sourcing ftdetect script at: /home/rok/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tikz.vim]], true)
vim.cmd [[source /home/rok/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tikz.vim]]
time([[Sourcing ftdetect script at: /home/rok/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tikz.vim]], false)
time([[Sourcing ftdetect script at: /home/rok/.local/share/nvim/site/pack/packer/opt/vim-pandoc/ftdetect/pandoc.vim]], true)
vim.cmd [[source /home/rok/.local/share/nvim/site/pack/packer/opt/vim-pandoc/ftdetect/pandoc.vim]]
time([[Sourcing ftdetect script at: /home/rok/.local/share/nvim/site/pack/packer/opt/vim-pandoc/ftdetect/pandoc.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles(1) end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
