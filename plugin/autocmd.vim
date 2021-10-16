au BufNewFile,BufRead,BufFilePre *.zsh	set filetype=sh
" Spell check only for writing
augroup MarkDownStuff
    au BufRead,BufReadPre,BufNew,BufNewFile *.rmd,*.Rmd,*.Smd,*.smd,*.md hi clear conceal
    au Filetype markdown,rmd,pandoc set spell
    au Filetype markdown,rmd,pandoc let b:coc_additional_keywords = ["-"]
    au Filetype markdown,rmd let b:coc_suggest_disable=1
    " au Filetype markdown,rmd silent! :call vimtex#init()
    " au Filetype markdown,rmd silent! :MarkdownPreview
    " au BufRead,BufReadPre,BufNew,BufNewFile *.rmd,*.Rmd,*.Smd,*.smd,*.md silent! :MarkdownPreview
    au BufRead,BufReadPre,BufNew,BufNewFile *.rmd,*.Rmd,*.Smd,*.smd,*.md silent! :call vimtex#init()
    " au BufRead,BufReadPre,BufNew,BufNewFile *.rmd,*.Rmd,*.Smd,*.smd,*.md silent call vimtex#init()
augroup end
" autocmd FileType markdown :call CocDisable()


" au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" augroup ScrollbarInit
"   autocmd!
"   autocmd CursorMoved,VimResized,QuitPre * silent! lua require('scrollbar').show()
"   autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
"   autocmd WinLeave,BufLeave,BufWinLeave,FocusLost            * silent! lua require('scrollbar').clear()
" augroup end
"
augroup highlight 
    au BufReadPost * hi CocHighlightText ctermfg=231 guifg=#bd93f9 ctermbg=60 guibg=#50fa7b
    au BufReadPost * hi HighlightedyankRegion cterm=bold gui=bold ctermbg=0 guibg=#ffb86c
    au BufReadPost * hi IPythonCell ctermbg=238 guifg=#50fa7b guibg=#444d56
    au BufReadPost * hi link RnvimrNormal CursorLine
augroup end
"highlight IPythonCell ctermbg=238 guifg=darkgrey guibg=#444d56

