" set filetype=tex.rmd
set spell
hi clear conceal
let g:coq_settings = { "keymap.recommended": v:false,
            \"clients.tabnine.enabled": v:true,
            \"keymap.pre_select": v:true,
            \"auto_start": v:true,
            \"keymap.jump_to_mark": "<c-j>",
            \"completion.always": v:false
            \ }



" function! SlimeSendCellJump()
"     execute "! R -e "rmarkdown::render('$1')'"
"   \ exec '.shellescape('%')<CR>
" endfunction
"
"
let b:slime_cell_delimiter = "```.*$"
nmap <leader>sc <Plug>SlimeSendCell<CR><ESC>

function! Knit()
    let fn = expand('%:f')
    " execute "! export LANG=C"
    execute "! R -e \"rmarkdown::render(" . "'" . fn . "'" . ")\""
    " execute "! R -e \"rmarkdown::render(" . fn . ")\""
endfunction
