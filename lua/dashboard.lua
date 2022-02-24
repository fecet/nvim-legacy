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

-- vim.cmd("let packages = len(globpath('~/.local/share/nvim/site/pack/packer/start', '*', 0, 1))")

g.dashboard_footer_icon = '🐬 '
-- vim.api.nvim_exec([[
--     let g:dashboard_custom_footer = ['neovim loaded '..packages..' packages']
-- ]], false)
-- -- g.dashboard_custom_footer = {'None are more hopelessly enslaved than those who falsely believe they are free'}
-- vim.cmd [[
-- augroup dashboard_au
--      autocmd! * <buffer>
--      autocmd User dashboardReady let &l:stl = 'Dashboard'
--      autocmd User dashboardReady nnoremap <buffer> <leader>q <cmd>exit<CR>
--      autocmd User dashboardReady nnoremap <buffer> <leader>u <cmd>PackerUpdate<CR>
--      autocmd User dashboardReady nnoremap <buffer> <leader>l <cmd>SessionLoad<CR>
-- augroup END
-- ]]


-- g.dashboard_custom_header = {
--    "                                   ",
--    "   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ",
--    "    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ",
--    "          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ",
--    "           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ",
--    "          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ",
--    "   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ",
--    "  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ",
--    " ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ",
--    " ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ",
--    "      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ",
--    "       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ",
--    "                                   ",
-- }

g.dashboard_disable_statusline = 1