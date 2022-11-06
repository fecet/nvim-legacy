local home = os.getenv('HOME')
local db = require('dashboard')
-- db.preview_command = 'cat | lolcat -F 0.3'
-- db.preview_command = 'cat'
-- -- db.preview_command = 'ueberzug'
-- -- db.custom_footer="NEVER"
-- -- db.preview_command = 'lolcat'
-- db.preview_file_path = home .. '/.config/nvim/nvchad.cat'
-- -- db.preview_file_path = home .. '/.config/nvim/LOGO.png'
-- --
-- db.preview_file_height = 11
-- db.preview_file_width = 70

db.custom_header = {
    '',
    '                                   ',
    '   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ',
    '    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ',
    '          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ',
    '           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ',
    '          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ',
    '   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ',
    '  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ',
    ' ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ',
    ' ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ',
    '      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ',
    '       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ',
    '                                   ',
    '',
    '',
}
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




