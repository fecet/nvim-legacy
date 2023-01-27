" Please read through this file and change what you need to change

" let g:python_host_prog='/usr/bin/python2'
let g:python3_host_prog='/usr/bin/python3'
" let g:python3_host_prog='/home/rok/anaconda3/bin/python'
" let g:node_host_prog = ''

""""""""""
"  mkdp  "
""""""""""

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
" let g:mkdp_browser = 'microsoft-edge-beta'
let g:mkdp_browser = 'firefox'
let g:mkdp_filetypes = ['markdown','rmd',"qmd"]
let g:mkdp_command_for_global = 1
let g:mkdp_echo_preview_url = 1
let g:mkdp_open_to_the_world = 1
" let g:mkdp_port = '8296'
let g:mkdp_page_title = 'MarkdownPreview「${name}」'

let g:mkdp_open_ip = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 0

set guifont=Liga\ SFMonoNerdFont:h36
let g:neovide_refresh_rate = 60
" let g:neovide_profiler = v:true
