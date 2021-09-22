au BufNewFile,BufRead *.Rmd,*.rmd,*.Smd,*.smd	set filetype=markdown
au BufNewFile,BufRead *.zsh	set filetype=sh
au BufEnter *.rmd,*.Rmd,*.Smd,*.smd,*.md highlight clear conceal
" Spell check only for writing
au Filetype markdown set spell
au Filetype markdown let b:coc_additional_keywords = ["-"]
"au Filetype markdown let b:coc_suggest_disable=1
"autocmd FileType markdown :call CocDisable()


au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" augroup ScrollbarInit
"   autocmd!
"   autocmd CursorMoved,VimResized,QuitPre * silent! lua require('scrollbar').show()
"   autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
"   autocmd WinLeave,BufLeave,BufWinLeave,FocusLost            * silent! lua require('scrollbar').clear()
" augroup end
