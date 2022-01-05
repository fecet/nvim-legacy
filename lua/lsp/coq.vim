" 🐓 Coq completion settings

" Set recommended to false
let g:coq_settings = { "keymap.recommended": v:false,
            \"clients.tabnine.enabled": v:true,
            \"keymap.pre_select": v:true,
            \"auto_start": v:true,
            \"keymap.jump_to_mark": "<c-j>"
            \ }
" let coq_settings.clients.tabnine.enabled=true

" Keybindings
ino <silent><expr> <Esc>   pumvisible() ? "\<C-e><Esc>" : "\<Esc>"
ino <silent><expr> <C-c>   pumvisible() ? "\<C-e><C-c>" : "\<C-c>"
ino <silent><expr> <BS>    pumvisible() ? "\<C-e><BS>"  : "\<BS>"
inoremap <silent><expr> <c-e> "<left><right>"
" ino <silent><expr> <CR>    pumvisible() ? (complete_info().selected == -1 ? "\<C-e><CR>" : "\<C-y>") : "\<CR>"
" ino <silent><expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" ino <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<BS>"

" inoremap <silent><expr> <cr>
"             \ UltiSnips#CanExpandSnippet() ? "<C-R>=UltiSnips#ExpandSnippet()<CR>":
"             \ pumvisible() ? (complete_info().selected == -1 ? "\<C-e><CR>" : "\<C-y>") : "\<CR>"
"
" inoremap <silent><expr> <cr>
"             \ UltiSnips#CanExpandSnippet() ? "<C-R>=UltiSnips#ExpandSnippet()<CR>":
"             \ pumvisible() ? (complete_info().selected == -1 ? "\<C-e><CR>" : "\<C-y>") : "<cmd>lua require('nvim-autopairs').autopairs_cr()<CR>"

" < C-\><C-N><cmd>lua COQ.Nav_mark()<CR>


" ino <silent><expr> <Tab> 
"             \ UltiSnips#CanJumpForwards() ? "<C-R>=UltiSnips#JumpForwards()<CR>":
"             \ Marks_available() ? "<C-\><C-N><cmd>lua COQ.Nav_mark()<CR>" : "<Cmd>Tabout<CR>"


ino <silent><expr> <Tab> 
            \ UltiSnips#CanJumpForwards() ? "<C-R>=UltiSnips#JumpForwards()<CR>":
            \ Marks_available() ? "<C-\><C-N><cmd>lua COQ.Nav_mark()<CR>" : "<cmd> lua require('tabout').tabout()<CR>"

ino <silent><expr> <S-Tab> 
            \ UltiSnips#CanJumpBackwards() ? "<C-R>=UltiSnips#JumpBackwards()<CR>" : "<cmd> lua require('tabout').taboutBack()<CR>"

