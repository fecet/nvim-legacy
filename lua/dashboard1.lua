local g = vim.g
g.autoload_last_session = false
--[[ g.session_dir = vim.fn.stdpath('data').."/sessions/"
--require('telescope').load_extension('session_manager')
g.dashboard_session_directory = vim.fn.stdpath('data').."/sessions/" ]]
g.dashboard_default_executive ='telescope'
g.dashboard_custom_section = {
    a = {description = {"  Recents                   leader f h"}, command = "Telescope oldfiles"},
    -- b = {description = {"  Find File                 leader f f"}, command = "Telescope find_files"},
    c = {description = {"  Find Word                 leader f g"}, command = "Telescope live_grep"},
    d = {description = {"  New File                  leader e n"}, command = "DashboardNewFile"},
    e = {description = {"  Explorer                  leader e e"}, command = "RnvimrToggle"},
    -- f = {description = {"  Sessions                  leader s l"}, command = "Telescope session-lens search_session"},
    -- g = {description = {"  Update Plugins            leader u  "}, command = "PackerUpdate"},
    f = {description = {"  Lazy Git                  leader g g"}, command = "LazyGit"},
    g = {description = {"  StartupTime               leader u  "}, command = "StartupTime"},
    h = {description = {"  Settings                  leader e v"}, command = "edit $MYVIMRC"},
    i = {description = {"  Exit                             Q  "}, command = "exit"}
}

local home = os.getenv('HOME')
local db = require('dashboard')
db.preview_command = 'cat | lolcat -F 0.3'
-- db.custom_footer="NEVER"
-- db.preview_command = 'lolcat'
db.preview_file_path = home .. '/.config/nvim/neovim.cat'
db.preview_file_height = 12
db.preview_file_width = 80
db.hide_statusline = true
db.hide_tabline = true
db.custom_center = {
    {icon = '  ',
    desc = 'Recently opened files                   ',
    shortcut = 'SPC f h',
    action ='Telescope oldfiles'},
    {icon = '  ',
    desc = 'Find  word                              ',
    action = 'Telescope live_grep',
    shortcut = 'SPC f g'},
    {icon = '  ',
    desc = 'New file                                ',
    action = 'DashboardNewFile',
    shortcut = 'SPC e n'},
    -- {icon = '  ',
    -- desc = 'Recently opened files                   ',
    -- action =  'DashboardFindHistory',
    -- shortcut = 'SPC f h'},
    -- {icon = '  ',
    -- desc = 'Find  File                              ',
    -- action = 'Telescope find_files find_command=rg,--hidden,--files',
    -- shortcut = 'SPC f f'},
    {icon = '  ',
    desc ='File browser                            ',
    action =  'RnvimrToggle',
    shortcut = 'SPC e e'},
    {icon = '  ',
    desc ='Neovim startuptime                      ',
    action =  'StartupTime',
    shortcut = 'SPC u  '},
    {
    icon = '  ',
    desc = 'Open personal dotfiles                  ',
    -- action = 'Telescope dotfiles path=' .. home ..'/.dotfiles',
    action = 'Telescope dotfiles path=' .. home ..'/.config',
    shortcut = 'SPC e v'},
  }




