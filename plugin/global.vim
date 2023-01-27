" let has_machine_specific_file = 1
" if empty(glob('~/.config/nvim/_machine_specific.vim'))
" 	let has_machine_specific_file = 0
" 	silent! exec "!cp ~/.config/nvim/Diff_machine_configs/_machine_specific_default.vim ~/.config/nvim/_machine_specific.vim"
" endif
source ~/.config/nvim/_machine_specific.vim
" source ~/.config/nvim/coq.vim


""""""""""""""
"  wildfire  "
""""""""""""""

" in this example, html and xml share the same text objects
let g:wildfire_objects = {
            \ "*" : ["iw","i'", 'i"', "i)", "i]", "i}","if","af","ic","ac"],
            \ "html,xml" : ["it", "at"],
            \ "tex,markdown,rmd": ["iw","i'", 'i"', "i)", "i]", "i}","id","i$"],
            \ }
""""""""""""
"  rnvimr  "
""""""""""""



let g:rnvimr_enable_ex = 1
" Make Ranger to be hidden after picking a file
let g:rnvimr_enable_picker = 1
"0 for Disable a border for floating window
let g:rnvimr_draw_border = 1
" Hide the files included in gitignore
" let g:rnvimr_hide_gitignore = 1
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


""""""""""""""
"  markdown  "
""""""""""""""

" let g:pandoc#filetypes#handled = ["pandoc", "markdown","rmd"]
" let g:pandoc#filetypes#pandoc_markdown = 0
" let g:pandoc#modules#disabled = ["folding"]

let g:tex_conceal='abdmgs'
let g:tex_flavor = "latex"
let g:vim_markdown_folding_disabled = 1

""""""""""""""
"  firenvim  "
""""""""""""""

let g:firenvim_config = { 
            \ 'globalSettings': {
            \ 'alt': 'all',
            \  },
            \ 'localSettings': {
            \ '.*': {
            \ 'cmdline': 'neovim',
            \ 'content': 'text',
            \ 'priority': 0,
            \ 'selector': 'textarea',
            \ 'takeover': 'never',
            \ },
            \ }
            \ }

"""""""""""
"  slime  "
"""""""""""

let g:slime_target = "x11"
"let g:slime_python_ipython = 1
let g:slime_python_qtconsole = 1
let g:ipython_cell_tag=['# %%', '#%%', '# <codecell>']


"""""""""""""
"  neovide  "
"""""""""""""

"Config for neovide
let g:neovide_cursor_vfx_mode='railgun'
" let g:neovide_cursor_vfx_opacity=200.0
" let g:neovide_cursor_vfx_particle_lifetime=3.2
" let g:neovide_cursor_vfx_particle_density=10.0
" let g:neovide_cursor_vfx_particle_speed=10.0
" let g:neovide_cursor_vfx_particle_phase=1.5
" let g:neovide_cursor_vfx_particle_curl=1.0
" let g:neovide_profiler = v:true
let g:neovide_no_idle = v:true
" let g:neovide_transparency = 0.8

if has('nvim') && executable('nvr')
  let $GIT_EDITOR = "nvr -cc split --remote-wait +'set bufhidden=wipe'"
  " let $GIT_EDITOR = "nvr -cc split"
endif
