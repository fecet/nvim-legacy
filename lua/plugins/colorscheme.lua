return function()
    vim.cmd('colorscheme dracula')
    -- show the '~' characters after the end of buffers
    vim.g.dracula_show_end_of_buffer = true
    -- use transparent background
    vim.g.dracula_transparent_bg = true
    -- set custom lualine background color
    vim.g.dracula_lualine_bg_color = "#44475a"


    vim.cmd('hi Visual guibg=#8be9fd')
    vim.cmd('hi IndentBlanklineChar guifg=#444d56 gui=nocombine')
    vim.cmd('hi IndentBlanklineSpaceChar guifg=#444d56 gui=nocombine')
    vim.cmd('hi link GitSignsCurrentLineBlame Comment')
    vim.cmd('hi CursorColumn cterm=underline guibg=#44475a')
    vim.cmd('hi IPythonCell ctermbg=238 guifg=#50fa7b guibg=#444d56')
    vim.cmd('hi link RnvimrNormal CursorLine')
    vim.cmd('hi DiffText guibg=#bd93f9')
    -- vim.cmd('hi Conceal ctermfg=NONE guifg=#f8f8f2 ctermbg=NONE guibg=#f8f8f2')
    -- vim.cmd('hi link Conceal Visual')
    --[[ vim.cmd('hi link IndentBlanklineChar Conceal')
vim.cmd('hi link IndentBlanklineSpaceChar Conceal') ]]
    vim.cmd[[au TextYankPost * silent! lua vim.highlight.on_yank({timeout=300,on_visual=true})]]
    vim.cmd('hi DashboardShortCut ctermbg=238 guifg=#50fa7b')
    vim.cmd('hi DashboardFooter ctermbg=238 guifg=#50fa7b')
    vim.cmd('hi DashBoardHeader guifg=#fa541c')
    vim.cmd('hi DashboardCenter guifg=#fa541c')
    vim.cmd('hi DashboardCenterIcon guifg=#fa541c')
end

