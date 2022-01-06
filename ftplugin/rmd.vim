set filetype=tex.rmd
set spell
hi clear conceal
let g:coq_settings = { "keymap.recommended": v:false,
            \"clients.tabnine.enabled": v:true,
            \"keymap.pre_select": v:true,
            \"auto_start": v:true,
            \"keymap.jump_to_mark": "<c-j>",
            \"completion.always": v:false
            \ }
