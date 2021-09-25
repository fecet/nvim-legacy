au BufNewFile,BufRead *.Rmd,*.rmd,*.Smd,*.smd	set filetype=markdown
au BufNewFile,BufRead *.zsh	set filetype=sh
au BufEnter *.rmd,*.Rmd,*.Smd,*.smd,*.md highlight clear conceal
" Spell check only for writing
au Filetype markdown set spell
au Filetype markdown let b:coc_additional_keywords = ["-"]
"au Filetype markdown let b:coc_suggest_disable=1
"autocmd FileType markdown :call CocDisable()


" au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" augroup ScrollbarInit
"   autocmd!
"   autocmd CursorMoved,VimResized,QuitPre * silent! lua require('scrollbar').show()
"   autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
"   autocmd WinLeave,BufLeave,BufWinLeave,FocusLost            * silent! lua require('scrollbar').clear()
" augroup end
"
augroup highlight 
    au BufReadPost * hi Visual ctermfg=231 guifg=#ff79c6 ctermbg=60 guibg=#8be9fd
    au BufReadPost * hi CocHighlightText ctermfg=231 guifg=#bd93f9 ctermbg=60 guibg=#50fa7b
    au BufReadPost * hi HighlightedyankRegion cterm=bold gui=bold ctermbg=0 guibg=#ffb86c
    au BufReadPost * hi IPythonCell ctermbg=238 guifg=#50fa7b guibg=#444d56
    au BufReadPost * hi link RnvimrNormal CursorLine
augroup end
"highlight IPythonCell ctermbg=238 guifg=darkgrey guibg=#444d56

