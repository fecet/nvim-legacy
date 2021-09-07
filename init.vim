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
"let g:clipboard = {
"          \   'name': 'win32yank-wsl',
"          \   'copy': {
"          \      '+': 'win32yank.exe -i --crlf',
"          \      '*': 'win32yank.exe -i --crlf',
"          \    },
"          \   'paste': {
"          \      '+': 'win32yank.exe -o --lf',
"          \      '*': 'win32yank.exe -o --lf',
"          \   },
"          \   'cache_enabled': 0,
"          \ }
"set modifiable

" ===
" === Editor behavior
" ===
set number
set relativenumber
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
"
"au Filetype *.rmd setf markdown
autocmd BufNewFile,BufRead *.c setlocal noexpandtab tabstop=4 softtabstop=4 shiftwidth=4
au BufNewFile,BufRead *.Rmd,*.rmd,*.Smd,*.smd		setf markdown

au BufWinLeave *.* silent mkview
au BufWinEnter *.* silent! loadview
au BufWinLeave .* silent mkview
au BufWinEnter .* silent! loadview

" Spell check only for writing
au Filetype markdown set spell
au Filetype markdown let b:coc_additional_keywords = ["-"]
"au Filetype markdown let b:coc_suggest_disable=1
"autocmd FileType markdown :call CocDisable()

set title 
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
set foldlevelstart=99
set foldenable
"set formatoptions-=tc
"set noshowmode
set showcmd
set wildmenu
set smartcase
set lazyredraw "same as above
"set colorcolumn=80
set updatetime=100
set virtualedit=block
set syntax=on
set hidden
set noswapfile
set cmdheight=1
set dictionary+='~/.config/nvim/spell/en.utf-8.add'
set mouse=a
set termguicolors " enable true colors support
set enc=utf8
set fencs=utf8,gbk,gb2312,gb18030

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" # Function to permanently delete views created by 'mkview'
function! MyDeleteView()
    let path = fnamemodify(bufname('%'),':p')
    " vim's odd =~ escaping for /
    let path = substitute(path, '=', '==', 'g')
    if empty($HOME)
    else
        let path = substitute(path, '^'.$HOME, '\~', '')
    endif
    let path = substitute(path, '/', '=+', 'g') . '='
    " view directory
    let path = &viewdir.'/'.path
    call delete(path)
    echo "Deleted: ".path
endfunction

" # Command Delview (and it's abbreviation 'delview')
command Delview call MyDeleteView()
" Lower-case user commands: http://vim.wikia.com/wiki/Replace_a_builtin_command_using_cabbrev
cabbrev delview <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'Delview' : 'delview')<CR>
    

" ===
" === Terminal Behaviors
" ===
"let g:neoterm_autoscroll = 1
"autocmd TermOpen term://* startinsert
tnoremap <C-N> <C-\><C-N>
"tnoremap <C-O> <C-\><C-N><C-O>
"let g:terminal_color_0  = '#000000'
"let g:terminal_color_1  = '#FF5555'
"let g:terminal_color_2  = '#50FA7B'
"let g:terminal_color_3  = '#F1FA8C'
"let g:terminal_color_4  = '#BD93F9'
"let g:terminal_color_5  = '#FF79C6'
"let g:terminal_color_6  = '#8BE9FD'
"let g:terminal_color_7  = '#BFBFBF'
"let g:terminal_color_8  = '#4D4D4D'
"let g:terminal_color_9  = '#FF6E67'
"let g:terminal_color_10 = '#5AF78E'
"let g:terminal_color_11 = '#F4F99D'
"let g:terminal_color_12 = '#CAA9FA'
"let g:terminal_color_13 = '#FF92D0'
"let g:terminal_color_14 = '#9AEDFE'

" ===
" === Basic Mappings
" ===

" Set <LEADER> as <SPACE>

let mapleader=" "
" Save & quit
"
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



"  ____  _             _          ____             __ _
" |  _ \| |_   _  __ _(_)_ __    / ___|___  _ __  / _(_) __ _
" | |_) | | | | |/ _` | | '_ \  | |   / _ \| '_ \| |_| |/ _` |
" |  __/| | |_| | (_| | | | | | | |__| (_) | | | |  _| | (_| |
" |_|   |_|\__,_|\__, |_|_| |_|  \____\___/|_| |_|_| |_|\__, |
"                |___/                                  |___/



" ===
" === Dress up my vim
" ===


if exists('g:vscode')
		
    " VSCode extension
		call plug#begin('~/.config/nvim/plugged')
		Plug 'gibiansky/vim-latex-objects'

		Plug 'gcmt/wildfire.vim'
		" This selects the next closest text object.
		map ' <Plug>(wildfire-fuel)
		" This selects the previous closest text object.
		vmap " <Plug>(wildfire-water)
		" use '*' to mean 'all other filetypes'
		" in this example, html and xml share the same text objects
		xnoremap <silent> im <ESC>:call SelectInMath(0)<CR>
		xnoremap <silent> am <ESC>:call SelectInMath(1)<CR>
		let g:wildfire_objects = {
				\ "*" : ["iw","i'", 'i"', "i)", "i]", "i}","im","am"],
				\ "html,xml" : ["at", "it"],
		\ }

		Plug 'machakann/vim-sandwich'

"		Plug 'SirVer/ultisnips'
"		let g:UltiSnipsExpandTrigger="<tab>"
"		let g:UltiSnipsJumpForwardTrigger="<tab>"
"		let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
"		let g:UltiSnipsEditSplit="vertical"
		Plug 'fecet/vim-snippets'

		Plug 'asvetliakov/vim-easymotion'
		nmap s <Plug>(easymotion-s2)
		nmap t <Plug>(easymotion-t2)

		" Move to line
		map <Leader>l <Plug>(easymotion-lineforward)
		map <Leader>j <Plug>(easymotion-j)
		map <Leader>k <Plug>(easymotion-k)
		map <Leader>h <Plug>(easymotion-linebackward)

		call plug#end()
else
		
		noremap Q :q<CR>
		
		call plug#begin('~/.config/nvim/plugged')

		"===============================================================
		" Startify

		Plug 'mhinz/vim-startify'

		set viminfo='100,n$HOME/.vim/files/info/viminfo


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

		"let g:startify_custom_header = 'startify#pad(g:start_image)'

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
				\ ['Check Health',':checkhealth'],
				\ ['Vim Reference', 'h ref'],
				\ {'h': ['Startify help','h startify']},
				\ {'p':['Plugin install','PlugInstall']},
				\ ]

        let g:startify_session_dir = '~/.vim/sessions'
        "let g:startify_session_persistence = 0

		let g:startify_lists = [
 						\ { 'type': 'sessions',  'header': ['   Sessions']       },
						\ { 'type': 'dir',       'header': ['   Recently '. getcwd()] },
						\ { 'type': function('s:gitModified'),  'header': ['   git modified']},
						\ { 'type': function('s:gitUntracked'), 'header': ['   git untracked']},
                        \ { 'type': 'files',     'header': ['   Recently files']            },
						\ { 'type': 'commands',  'header': ['   Commands']       },
						\ ]

		"===============================================================

		Plug 'gibiansky/vim-latex-objects'
		Plug 'gcmt/wildfire.vim'
		map <CR> <Plug>(wildfire-fuel)
		" This selects the previous closest text object.
		" use '*' to mean 'all other filetypes'
		" in this example, html and xml share the same text objects
		xnoremap <silent> im <ESC>:call SelectInMath(0)<CR>
		xnoremap <silent> am <ESC>:call SelectInMath(1)<CR>
		let g:wildfire_objects = {
				\ "*" : ["iw","i'", 'i"', "i)", "i]", "i}","im","am"],
				\ "html,xml" : ["at", "it"],
		\ }

		Plug 'machakann/vim-sandwich'

		Plug 'kevinhwang91/rnvimr'
		nnoremap <silent> <Leader>e :RnvimrToggle<CR>
" Make Ranger replace Netrw and be the file explorer
		let g:rnvimr_enable_ex = 1

		" Make Ranger to be hidden after picking a file
		let g:rnvimr_enable_picker = 1

		"0 for Disable a border for floating window
		let g:rnvimr_draw_border = 1

		" Hide the files included in gitignore
		let g:rnvimr_hide_gitignore = 1

		" Change the border's color
		"let g:rnvimr_border_attr = {'fg': 14, 'bg': -1}

		" Make Neovim wipe the buffers corresponding to the files deleted by Ranger
		let g:rnvimr_enable_bw = 1

		" Add a shadow window, value is equal to 100 will disable shadow
		"let g:rnvimr_shadow_winblend = 70

		" Draw border with both
		"let g:rnvimr_ranger_cmd = 'ranger --cmd="set draw_borders both"'

		" Link CursorLine into RnvimrNormal highlight in the Floating window

		" Map Rnvimr action
		let g:rnvimr_action = {
								\ '<C-t>': 'NvimEdit tabedit',
								\ '<C-x>': 'NvimEdit split',
								\ '<C-v>': 'NvimEdit vsplit',
								\ 'gw': 'JumpNvimCwd',
								\ 'yw': 'EmitRangerCwd'
								\ }

		" Add views for Ranger to adapt the size of floating window
        let g:rnvimr_ranger_views = [
                                \ {'minwidth': 90, 'ratio': []},
                                \ {'minwidth': 50, 'maxwidth': 89, 'ratio': [1,1]},
                                \ {'maxwidth': 49, 'ratio': [1]}
                                \ ]

		" Customize the initial layout
		"let g:rnvimr_layout = {
								"\ 'relative': 'editor',
								"\ 'width': float2nr(round(0.7 * &columns)),
								"\ 'height': float2nr(round(0.7 * &lines)),
								"\ 'col': float2nr(round(0.15 * &columns)),
								"\ 'row': float2nr(round(0.15 * &lines)),
								"\ 'style': 'minimal'
								"\ }

		"" Customize multiple preset layouts
		"" '{}' represents the initial layout
		"let g:rnvimr_presets = [
								"\ {'width': 0.600, 'height': 0.600},
								"\ {},
								"\ {'width': 0.800, 'height': 0.800},
								"\ {'width': 0.950, 'height': 0.950},
								"\ {'width': 0.500, 'height': 0.500, 'col': 0, 'row': 0},
								"\ {'width': 0.500, 'height': 0.500, 'col': 0, 'row': 0.5},
								"\ {'width': 0.500, 'height': 0.500, 'col': 0.5, 'row': 0},
								"\ {'width': 0.500, 'height': 0.500, 'col': 0.5, 'row': 0.5},
								"\ {'width': 0.500, 'height': 1.000, 'col': 0, 'row': 0},
								"\ {'width': 0.500, 'height': 1.000, 'col': 0.5, 'row': 0},
								"\ {'width': 1.000, 'height': 0.500, 'col': 0, 'row': 0},
								"\ {'width': 1.000, 'height': 0.500, 'col': 0, 'row': 0.5}
								"\ ]
				

		"Plug 'SirVer/ultisnips', { 'for': ['rmd','markdown'] }
		Plug 'SirVer/ultisnips'
		let g:UltiSnipsExpandTrigger="<tab>"
		let g:UltiSnipsJumpForwardTrigger="<tab>"
		let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
		let g:UltiSnipsEditSplit="vertical"
		Plug 'fecet/vim-snippets'
		Plug 'jiangmiao/auto-pairs'


		function! Ulti_Pairs()
				call UltiSnips#ExpandSnippetOrJump()
				if g:ulti_expand_or_jump_res == 0
						call AutoPairsJump()
				endif
		endfunction


		Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug','rmd']}
		let g:mkdp_preview_options = {
				\ 'mkit': {},
				\ 'katex': {},
				\ 'uml': {},
				\ 'maid': {},
				\ 'disable_sync_scroll': 0,
				\ 'sync_scroll_type': 'middle',
				\ 'hide_yaml_meta': 1,
				\ 'sequence_diagrams': {},
				\ 'flowchart_diagrams': {},
				\ 'content_editable': v:false,
				\ 'disable_filename': 0
				\ }
		let g:mkdp_browser = 'microsoft-edge-beta'
		"let g:mkdp_filetypes = ['markdown','rmd']
		let g:mkdp_auto_start = 1
		let g:mkdp_command_for_global = 1
		let g:mkdp_echo_preview_url = 1
		let g:mkdp_open_to_the_world = 1
        let g:mkdp_port = '8296'
        let g:mkdp_page_title = 'MarkdownPreview「${name}」'
		nmap <leader>v <Plug>MarkdownPreviewToggle

		"Plug 'ZSaberLv0/ZFVimIM'
		"Plug 'ZSaberLv0/ZFVimJob'
		"Plug 'ZSaberLv0/ZFVimGitUtil' " 可选, 如果你希望定期自动清理词库 push 历史
		"Plug 'fecet/ZFVimIM_pinyin_base' " 你的词库
		"Plug 'ZSaberLv0/ZFVimIM_openapi' 

		"let g:zf_git_user_email='xiezej@gmail.com'
		"let g:zf_git_user_name='fecet'
		"let g:zf_git_user_token='2520f5f8e841651f1b5295170d2461ac49b8c859'

		Plug '907th/vim-auto-save'
		let g:auto_save = 1
		let g:auto_save_silent = 1

		Plug 'itchyny/lightline.vim'
		let g:lightline = {
		\ 'colorscheme': 'dracula',
		\ }

		Plug 'lervag/vimtex'
		set conceallevel=2
		let g:tex_conceal='abdmg'
		let g:tex_flavor = "latex"

		Plug 'godlygeek/tabular'
		Plug 'plasticboy/vim-markdown'
		let g:vim_markdown_folding_disabled = 1
		let g:vim_markdown_math = 1

		"Plug 'machakann/vim-highlightedyank'
		Plug 'tmhedberg/SimpylFold'

        let g:SimpylFold_docstring_preview = 1
        let g:SimpylFold_docstring_preview = 1

		"Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
		Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
		Plug 'p00f/nvim-ts-rainbow'  

		Plug 'preservim/nerdcommenter' 

		nmap <C-_>   <Plug>NERDCommenterToggle
		vmap <C-_>   <Plug>NERDCommenterToggle<CR>gv

        Plug 'asvetliakov/vim-easymotion'
        "" <Leader>f{char} to move to {char}
        ""map  f <Plug>(easymotion-bd-f)
        ""nmap f <Plug>(easymotion-overwin-f)

        "" s{char}{char} to move to {char}{char}
        hi link EasyMotionTarget ErrorMsg
        hi link EasyMotionShade  Comment
        hi link EasyMotionTarget2First MatchParen
        hi link EasyMotionTarget2Second MatchParen
        "nmap s <Plug>(easymotion-overwin-f2)

        "" Move to line
        map <Leader>l <Plug>(easymotion-bd-jk)
        nmap <Leader>l <Plug>(easymotion-overwin-line)

        "" Move to word
        map  <Leader>w <Plug>(easymotion-bd-w)
        nmap <Leader>w <Plug>(easymotion-overwin-w)

		Plug 'crusoexia/vim-monokai'
		Plug 'wadackel/vim-dogrun'
		Plug 'dracula/vim', { 'as': 'dracula' }

		Plug 'neoclide/coc.nvim', {'branch': 'release'}

		Plug 'jpalardy/vim-slime', { 'for': 'python' }
		let g:slime_target = "x11"
		let g:slime_python_ipython = 1
		let g:slime_cell_delimiter = "# %%"
        "nmap <leader>c <Plug>SlimeSendCell
		Plug 'hanschen/vim-ipython-cell', { 'for': 'python' }

        "Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build' }
		" map <Leader>s to start IPython
		"let g:ipython_cell_regex = 1
		"let g:ipython_cell_tag = '# %%( [^[].*)?'
		" Change automatically current directory to open file directory
		"autocmd BufEnter * silent! lcd %:p:h

		" map to start ipython in current file directory
		"nnoremap <Leader>s :execute 'SlimeSend1 cd 'fnameescape(expand('%:p:h')):execute 'SlimeSend1 clear':SlimeSend1 ipython
		


		call plug#end()


		colorscheme dracula
		hi clear Conceal
		source ~/.config/nvim/coc.vim
		hi CocHighlightText ctermfg=231 guifg=#bd93f9 ctermbg=60 guibg=#50fa7b
		hi Visual ctermfg=231 guifg=#ff79c6 ctermbg=60 guibg=#8be9fd
		hi HighlightedyankRegion cterm=bold gui=bold ctermbg=0 guibg=#ffb86c
		"highlight IPythonCell ctermbg=238 guifg=darkgrey guibg=#444d56
		highlight IPythonCell ctermbg=238 guifg=#50fa7b guibg=#444d56
		highlight link RnvimrNormal CursorLine
		hi link EasyMotionTarget ErrorMsg
		hi link EasyMotionShade  Comment
		hi link EasyMotionTarget2First MatchParen
		hi link EasyMotionTarget2Second MatchParen

        "inoremap <Tab> <ESC>:call Ulti_Pairs()<CR>a


endif

lua <<EOF
require'nvim-treesitter.configs'.setup {
	ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
	ignore_install = { "javascript" }, -- List of parsers to ignore installing
	highlight = {
		enable = true,              -- false will disable the whole extension
		disable = { "c", "rust" },  -- list of language that will be disabled
		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = false,
	},
}
EOF

lua <<EOF
require'nvim-treesitter.configs'.setup {
  rainbow = {
    enable = true,
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = 1000, -- Do not enable for files with more than 1000 lines, int
		colors = {"#8be9fd",
							"#50fa7b",
							"#ffb86c",
							"#ff79c6",
							"#bd93f9"}, -- table of hex strings
  }
}
EOF
        

