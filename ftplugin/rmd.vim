set filetype=markdown.rmd
set spell
hi clear conceal

function! Knit()
    let fn = expand('%:f')
    " execute "! export LANG=C"
    execute "! R -e \"rmarkdown::render(" . "'" . fn . "'" . ")\""
    " execute "! R -e \"rmarkdown::render(" . fn . ")\""
endfunction

" let g:UltiSnipsExpandTrigger="<Tab>"
" let g:UltiSnipsJumpForwardTrigger="<Tab>"
" let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"
