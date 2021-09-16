"let mapleader=" "
nnoremap j gj
nnoremap gj j
nnoremap k gk
nnoremap gk k
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
noremap <silent> K 6k
noremap <silent> J 6j

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


nnoremap <silent> <Leader>oh :DashboardFindHistory<CR>
nnoremap <silent> <Leader>of :DashboardFindFile<CR>
nnoremap <silent> <Leader>oc :DashboardChangeColorscheme<CR>
nnoremap <silent> <Leader>oa :DashboardFindWord<CR>
nnoremap <silent> <Leader>ob :DashboardJumpMark<CR>
nnoremap <silent> <Leader>on :DashboardNewFile<CR>

nnoremap <silent> <Leader>e :RnvimrToggle<CR>

nnoremap <silent> <leader>k :<C-u>CocList<cr>
