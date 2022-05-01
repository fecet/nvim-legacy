"let mapleader=" "
" nnoremap j gj
" nnoremap gj j
" nnoremap k gk
" nnoremap gk k
" nmap <C-_> gcc
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
" silent! map <unique> K <Plug>(SmoothieUpwards)
" silent! map <unique> J <Plug>(SmoothieDownwards)
map K <C-u>
map J <C-d>

nnoremap <C-h> <left>
inoremap <C-h> <left>
cnoremap <C-h> <left>
xnoremap <C-h> <left>

nnoremap <C-j> <down>
inoremap <C-j> <down>
cnoremap <C-j> <down>
xnoremap <C-j> <down>

nnoremap <C-k> <up>
inoremap <C-k> <up>
cnoremap <C-k> <up>
xnoremap <C-k> <up>

nnoremap <C-l> <right>
inoremap <C-l> <right>
cnoremap <C-l> <right>
xnoremap <C-l> <right>
" map K 6k
" map J 6j
" H key: go to the start of the line
noremap <silent> H ^
" L key: go to the end of the line
noremap <silent> L $

" inoremap <silent> <C-w> <C-W>
" nnoremap <C-H> :tabprevious<cr>
" nnoremap <C-L> :tabnext<cr>

noremap <C-H> :BufferLineCyclePrev<CR>
noremap <C-S-h> :BufferLineCyclePrev<CR>
noremap <C-L> :BufferLineCycleNext<CR>
noremap <C-S-l> :BufferLineCycleNext<CR>

noremap <silent> <leader>bc :BufferLinePickClose<CR>
noremap <silent> <leader>gb :BufferLinePick<CR>

map <leader>aq :qa<CR>
map <leader>noh :noh<CR>
map <leader>toc :TOC<CR>
nnoremap <silent> <leader>gg :LazyGit<CR>

"nmap <Leader>sl :<C-u>SessionLoad<CR>
"nmap <Leader>ss :<C-u>SessionSave<CR>

"nnoremap <silent> <Leader>oh :DashboardFindHistory<CR>
"nnoremap <silent> <Leader>of :DashboardFindFile<CR>
"nnoremap <silent> <Leader>oc :DashboardChangeColorscheme<CR>
"nnoremap <silent> <Leader>oa :DashboardFindWord<CR>
"nnoremap <silent> <Leader>ob :DashboardJumpMark<CR>
"nnoremap <silent> <Leader>on :DashboardNewFile<CR>


nnoremap <silent> <Leader>ee :RnvimrToggl<CR>

" nnoremap <silent> <leader>k :<C-u>CocList<cr>
" nnoremap <silent> <leader>k :<C-u>Telescope<cr>


noremap <silent> <leader>w <cmd>HopWord<CR>
nnoremap <silent> <leader><leader>p :HopPattern<CR>
noremap <silent> <leader>l <cmd>HopLine<CR>
nnoremap <silent> <leader><leader>s :HopChar1<CR>

" map <CR> <Plug>(wildfire-fuel)
" map <leader>fo <Plug>(wildfire-quick-select)
" map <CR> <Plug>(wildfire-quick-select)
" This selects the previous closest text object.
" use '*' to mean 'all other filetypes'
" in this example, html and xml share the same text objects
" xnoremap <silent> im <ESC>:call SelectInMath(0)<CR>
" xnoremap <silent> am <ESC>:call SelectInMath(1)<CR>


" nmap <leader>sc <Plug>SlimeSendCell<bar><cmd>IpythonCellNextCell<CR>

command! -nargs=0 RunQtConsoleLocal
  " \ call jobstart("~/anaconda3/bin/jupyter qtconsole --stylesheet='~/scripts/dracula.css' --ConsoleWidget.font_size=12 
  \ call jobstart("~/anaconda3/bin/jupyter qtconsole --stylesheet='monokai' --ConsoleWidget.font_size=12 
  \ --JupyterWidget.include_other_output=True")
command! -nargs=0 RunQtConsoleRemote
  \ call jobstart("~/anaconda3/bin/jupyter qtconsole --existing='~/kernelx.json' --ssh Server --style='monokai' 
  \--ConsoleWidget.font_size=12  --JupyterWidget.include_other_output=True")
" let g:ipy_celldef = '^# %%' " regex for cell start and end

" nmap <silent> <leader>jql :RunQtConsoleLocal<Enter>
" nmap <silent> <leader>jqr :RunQtConsoleRemote<Enter>
" " nmap <silent> <leader>jk :IPython<Space>--existing<Space>--no-window<Enter>
" " nmap <silent> <leader>jk :IPython<Space>--existing<Enter>
" nmap <silent> <leader>jk :IPython --existing="~/kernelx.json" -ssh Server --no-window<Enter>
" " nmap <silent> <leader>jk :IPython<Space>--existing="~/kernelx.json"<Space>--ssh<Space>Server<Enter>
" nmap <silent> <leader>jc <Plug>(IPy-RunCell)
" nmap <silent> <leader>ja <Plug>(IPy-RunAll)

" let g:UltiSnipsExpandTrigger="<f21>"
" let g:UltiSnipsJumpForwardTrigger="<f20>"
" let g:UltiSnipsJumpBackwardTrigger="<s-f20>"
" let g:UltiSnipsEditSplit="vertical"
" let g:UltiSnipsSnippetDirectories=[$HOME.'/.local/share/nvim/site/pack/packer/start/vim-snippets/UltiSnips',$HOME.'/.local/share/nvim/site/pack/packer/opt/vim-snippets/UltiSnips']

nmap <leader>pv <Plug>MarkdownPreviewToggle
nmap <leader>sol :SymbolsOutline<CR>
nmap <leader>sw :ISwapWith<CR>

nnoremap <leader>ff :Telescope find_files<cr>
nnoremap <leader>fh :Telescope oldfiles<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>en <cmd>DashboardNewFile<cr>

omap     <silent> m :<C-U>lua require('tsht').nodes()<CR>
vnoremap <silent> m :lua require('tsht').nodes()<CR>

