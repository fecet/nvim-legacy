"let mapleader=" "
nnoremap j gj
nnoremap gj j
nnoremap k gk
nnoremap gk k
nmap <C-_> gcc
" Save & quit
"
noremap Q :q<CR>
"noremap <C-q> :qa<CR>
" makE Y to copy till the end of the line
nnoremap Y y$

" Copy to system clipboard
"vnoremap Y "+y

" IndeNtation
nnoremap < <<
nnoremap > >>

" Search
"noremap <LEADER><CR> :nohlsearch<CR>

" Adjacent duplicate words

" Space to Tab
"nnoremap <LEADER>tt :%s/    /\t/g
"vnoremap <LEADER>tt :s/    /\t/g

" Folding
"noremap <silent> <LEADER>o za

" Open up lazygit
"noremap \g :Git 
"noremaP <C-G> :TABe<CR>:-tabmove<CR>:term lazygit<CR>


" ===
" === Cursor Movement
" ===
" Cursor movement (the default arrow keys are used for resizing windows)
"     ^
"     k
" < h   l >
"     j
"     v

" K/J keys for 5 times k/j (faster navigation)
silent! map <unique> K <Plug>(SmoothieUpwards)
silent! map <unique> J <Plug>(SmoothieDownwards)

" H key: go to the start of the line
noremap <silent> H ^
" L key: go to the end of the line
noremap <silent> L $

" inoremap <silent> <C-w> <C-W>
imap <C-H> :tabprevious<cr>
imap <C-L> :tabnext<cr>

nmap <C-H> :tabprevious<cr>
nmap <C-L> :tabnext<cr>

map <leader>aq :qa<CR>
map <leader>noh :noh<CR>

"nmap <Leader>sl :<C-u>SessionLoad<CR>
"nmap <Leader>ss :<C-u>SessionSave<CR>

"nnoremap <silent> <Leader>oh :DashboardFindHistory<CR>
"nnoremap <silent> <Leader>of :DashboardFindFile<CR>
"nnoremap <silent> <Leader>oc :DashboardChangeColorscheme<CR>
"nnoremap <silent> <Leader>oa :DashboardFindWord<CR>
"nnoremap <silent> <Leader>ob :DashboardJumpMark<CR>
"nnoremap <silent> <Leader>on :DashboardNewFile<CR>


nnoremap <silent> <Leader>e :RnvimrToggle<CR>

nnoremap <silent> <leader>k :<C-u>CocList<cr>


nnoremap <silent> <leader>w <cmd>lua require'hop'.hint_words()<cr>
nnoremap <silent> <leader><leader>p <cmd>lua require'hop'.hint_patterns()<cr>
nnoremap <silent> <leader>l <cmd>lua require'hop'.hint_lines()<cr>
nnoremap <silent> <leader><leader>s <cmd>lua require'hop'.hint_char1()<cr>


map <CR> <Plug>(wildfire-fuel)
" This selects the previous closest text object.
" use '*' to mean 'all other filetypes'
" in this example, html and xml share the same text objects
xnoremap <silent> im <ESC>:call SelectInMath(0)<CR>
xnoremap <silent> am <ESC>:call SelectInMath(1)<CR>

nmap <leader>sc <Plug>SlimeSendCell

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
let g:UltiSnipsEditSplit="vertical"


nmap <leader>pv <Plug>MarkdownPreviewToggle
