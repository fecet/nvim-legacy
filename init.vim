"  __  ____   __  _   ___     _____ __  __ ____   ____
" |  \/  \ \ / / | \ | \ \   / /_ _|  \/  |  _ \ / ___|
" | |\/| |\ V /  |  \| |\ \ / / | || |\/| | |_) | |
" | |  | | | |   | |\  | \ V /  | || |  | |  _ <| |___
" |_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|_| \_\\____|


" ===
" === Auto load for first time uses
" ===
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	"autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" ===
" === Create a _machine_specific.vim file to adjust machine specific stuff, like python interpreter location
" ===
let has_machine_specific_file = 1
if empty(glob('~/.config/nvim/_machine_specific.vim'))
	let has_machine_specific_file = 0
	silent! exec "!cp ~/.config/nvim/Diff_machine_configs/_machine_specific_default.vim ~/.config/nvim/_machine_specific.vim"
endif
source ~/.config/nvim/_machine_specific.vim

" ====================
" === Editor Setup ===
" ====================
" ===
" === System
" ===

set clipboard=unnamedplus
set modifiable

" ===
" === Editor behavior
" ===
set number
"set relativenumber
set cursorline
" set noexpandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set fileformat=unix

autocmd BufNewFile,BufRead *.vim setlocal noexpandtab tabstop=2 softtabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.json setlocal noexpandtab tabstop=2 softtabstop=2 shiftwidth=2
" autocmd FileType c :set autowrite
autocmd BufNewFile,BufRead *.c setlocal noexpandtab tabstop=4 softtabstop=4 shiftwidth=4
au BufNewFile,BufRead *.Rmd,*.rmd,*.Smd,*.smd		setf markdown
au Filetype markdown set spell
set autoindent
set list
set scrolloff=4
"set notimeout
"set ttimeoutlen=0
"set viewoptions=cursor,folds,slash,unix
set wrap
"set textwidth=0
set indentexpr=
set foldmethod=indent
set foldlevel=99
set foldenable
"set formatoptions-=tc
"set noshowmode
set showcmd
set wildmenu
set smartcase
set lazyredraw "same as above
set colorcolumn=80
set updatetime=100
set virtualedit=block
set syntax=on
set hidden
set nobackup
set nowritebackup
set noswapfile
set cmdheight=1
set dictionary+=/home/facet/.config/nvim/spell/en.utf-8.add

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


" ===
" === Terminal Behaviors
" ===
"let g:neoterm_autoscroll = 1
"autocmd TermOpen term://* startinsert
tnoremap <C-N> <C-\><C-N>
"tnoremap <C-O> <C-\><C-N><C-O>
let g:terminal_color_0  = '#000000'
let g:terminal_color_1  = '#FF5555'
let g:terminal_color_2  = '#50FA7B'
let g:terminal_color_3  = '#F1FA8C'
let g:terminal_color_4  = '#BD93F9'
let g:terminal_color_5  = '#FF79C6'
let g:terminal_color_6  = '#8BE9FD'
let g:terminal_color_7  = '#BFBFBF'
let g:terminal_color_8  = '#4D4D4D'
let g:terminal_color_9  = '#FF6E67'
let g:terminal_color_10 = '#5AF78E'
let g:terminal_color_11 = '#F4F99D'
let g:terminal_color_12 = '#CAA9FA'
let g:terminal_color_13 = '#FF92D0'
let g:terminal_color_14 = '#9AEDFE'

" ===
" === Basic Mappings
" ===

" Set <LEADER> as <SPACE>
let mapleader=" "

" Save & quit
noremap Q :qa<CR>
"noremap <C-q> :qa<CR>

" make Y to copy till the end of the line
nnoremap Y y$

" Copy to system clipboard
"vnoremap Y "+y

" Indentation
nnoremap < <<
nnoremap > >>

" Search
noremap <LEADER><CR> :nohlsearch<CR>

" Adjacent duplicate words
noremap <LEADER>dw /\(\<\w\+\>\)\_s*\1

" Space to Tab
"nnoremap <LEADER>tt :%s/    /\t/g
"vnoremap <LEADER>tt :s/    /\t/g

" Folding
"noremap <silent> <LEADER>o za

" Open up lazygit
"noremap \g :Git 
"noremap <c-g> :tabe<CR>:-tabmove<CR>:term lazygit<CR>


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
noremap <silent> H 0
" L key: go to the end of the line
noremap <silent> L $

inoremap <silent> <C-w> <C-W>


"  ____  _             _          ____             __ _
" |  _ \| |_   _  __ _(_)_ __    / ___|___  _ __  / _(_) __ _
" | |_) | | | | |/ _` | | '_ \  | |   / _ \| '_ \| |_| |/ _` |
" |  __/| | |_| | (_| | | | | | | |__| (_) | | | |  _| | (_| |
" |_|   |_|\__,_|\__, |_|_| |_|  \____\___/|_| |_|_| |_|\__, |
"                |___/                                  |___/



" ===
" === Dress up my vim
" ===
set termguicolors " enable true colors support

call plug#begin('~/.config/nvim/plugged')

"===============================================================
" Startify

Plug 'mhinz/vim-startify'

set viminfo='100,n$HOME/.vim/files/info/viminfo

let g:start_image_head = [
\ '             WWNXK0KXWW           WN0kxkkkOOOOOOkk0W      ', 
\ '           WWX0xocccclloxOXW WNX0xl;,,;cloooolllc;:lxXW   ', 
\ '         Nkdxd;....,::;;,,;coool:::loodxxxxxddolccoo:oX   ', 
\ '        Xdc:cc;;`. .ldo:..  .`,,:oolloddoolcc:::cccllo0   ', 
\ '       WXxllllc,.  .;:,..  .:::;,,`.,:c::ccccllcccclllOW  ', 
\ '       NNxcxd;;....,:c:,...,xkdlclolooooolcc:;,,,,,`,,lX  ', 
\ '      W0l.;dl::;,,;cll:;`,;codddxxxdol:;;;,,,`..`,,,;lOW  ', 
\ '     NOc,;clooollloddoc::cccccllll:;,`,,,;:,`....`:loON   ', 
\ '     X0kkkddxdlcooc:;,`....,::;,,,,,``,,;::;;;;:dxONNW    ', 
\ '   WNKo`,cokKKKd,...  .....`;:ccloollddxdxdxK0xkWWW       ', 
\ '   W0;. .dN    Nl... .cxOKKXNWW   WWW  WWNNNWWNN          ', 
\ '    No.  .,dKW 0,   .lKNW                                 ', 
\ '     Nd.    .ckKl. ...;lkX                                ', 
\ '      Wx.   ...ll......  ;0                               ', 
\ '       Wx..`````...  ..   cN                              ', 
\ '        W0l,```. ..`...   ;KW                             ', 
\ '          WXkl,. ..`;;;.. .,ok0KXW                        ', 
\ '             WKkd:`..`,:;`.  .`,lkXWW                     ', 
\ '                 N0d:..`,,,`... .`cxOOKW                  ', 
\ '                   WXk:`...`,,``....`:o0W                 ', 
\ '                      NOc......````...;kW                 ', 
\ '                        Nk:...   ...`l0W                  ', 
\ '                          W0xollldxO0N                    ']

let g:start_image_dc=[
\ '  ,--,   ,---.    ,---.    .--.  _______ .-. .-.,---.     .---.   .---.,     ',
\ '.` .`    | .-.\   | .-`   / /\ \|__   __||  \| || .-`    ( .-._) ( .-._)     ',
\ '|  |  __ | `-`/   | `-.  / /__\ \ )| |   |   | || `-.   (_) \   (_) \        ',
\ '\  \ ( _)|   (    | .-`  |  __  |(_) |   | |\  || .-`   _  \ \  _  \ \       ',
\ ' \  `-) )| |\ \   |  `--.| |  |)|  | |   | | |)||  `--.( `-`  )( `-`  )      ',
\ ' )\____/ |_| \)\  /( __.`|_|  (_)  `-`   /(  (_)/( __.` `----`  `----`       ',
\ '(__)         (__)(__)                   (__)   (__)                          ',
\ '                                                                             ',
\ '                 ____  _____    ____  _     ___  _   ____  ____  ____  _____ ',
\ '                /  _ \/__ __\  /  _ \/ \  /|\  \//  /   _\/  _ \/ ___\/__ __\',
\ '                | / \|  / \    | / \|| |\ || \  /   |  /  | / \||    \  / \  ',
\ '                | |-||  | |    | |-||| | \|| / /    |  \_ | \_/|\___ |  | |  ',
\ '                \_/ \|  \_/    \_/ \|\_/  \|/_/     \____/\____/\____/  \_/  ',
\ '                                                                             ']

let g:start_image=g:start_image_dc

"let g:startify_custom_header = 'startify#pad(g:start_image + startify#fortune#quote())'

let g:startify_custom_header = 'startify#pad(g:start_image)'

" returns all modified files of the current git repo
" `2>/dev/null` makes the command fail quietly, so that when we are not
" in a git repo, the list will be empty
function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" same as above, but show untracked files, honouring .gitignore
function! s:gitUntracked()
    let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

let g:startify_custom_indices = ['a', 'd', 'g', 'l', 'w', 'r', 'u', 'o', 'n', 'm', 'aa', 'af', 'ad', 'ag', 'aj', 'al', 'ak', 'da', 'df', 'dd', 'dg', 'dj', 'dl', 'dk', 'lf', 'ld', 'lg', 'lj', 'lh', 'll', 'lk', 'la', 'oa', 'of', 'od', 'og', 'oj', 'ol', 'ok']


let g:startify_commands = [
		\ ['Call doctor',':checkhealth'],
		\ ['Vim Reference', 'h ref'],
		\ {'h': ['Startify help','h startify']},
		\ ]

let g:startify_lists = [
        \ { 'type': function('s:gitModified'),  'header': ['   git modified']},
        \ { 'type': function('s:gitUntracked'), 'header': ['   git untracked']},
        \ { 'type': 'files',     'header': ['   Recently files']            },
        \ { 'type': 'dir',       'header': ['   Recently '. getcwd()] },
        \ { 'type': 'commands',  'header': ['   Commands']       },
        \ ]

"===============================================================

Plug 'gibiansky/vim-latex-objects'
Plug 'gcmt/wildfire.vim'
" use '*' to mean 'all other filetypes'
" in this example, html and xml share the same text objects
xnoremap <silent> im <ESC>:call SelectInMath(0)<CR>
xnoremap <silent> am <ESC>:call SelectInMath(1)<CR>
let g:wildfire_objects = {
    \ "*" : ["iw","i'", 'i"', "i)", "i]", "i}","im","am"],
    \ "html,xml" : ["at", "it"],
\ }

Plug 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
let g:UltiSnipsEditSplit="vertical"
Plug 'fecet/vim-snippets'


Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
let g:mkdp_browser = 'vivaldi'
let g:mkdp_auto_start = 1
let g:mkdp_command_for_global = 1
let g:mkdp_echo_preview_url = 1
let g:mkdp_open_to_the_world = 1
nmap <leader>v <Plug>MarkdownPreviewToggle


Plug '907th/vim-auto-save'
let g:auto_save = 1
let g:auto_save_silent = 1

Plug 'itchyny/lightline.vim'

Plug 'lervag/vimtex'
set conceallevel=2
let g:tex_conceal='abdmg'
let g:tex_flavor = "latex"

Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_math = 1

Plug 'easymotion/vim-easymotion'
" <Leader>f{char} to move to {char}
map  f <Plug>(easymotion-bd-f)
nmap f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)


Plug 'crusoexia/vim-monokai'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'weirongxu/coc-explorer', {'do': 'yarn install --frozen-lockfile'}
nmap <leader>e :CocCommand explorer<CR>


" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
nnoremap <silent> <leader>k :<C-u>CocList<cr>

call plug#end()


colorscheme monokai
hi clear Conceal


