" nnoremap <Leader>sx :SlimeSend1 export LANG=C && ipython --matplotlib<CR>
" map <Leader>r to run script

" map <Leader>R to run script and time the execution
"nnoremap <Leader>R :IPythonCellRunTime<CR>

" map <Leader>c to execute the current cell
" nnoremap <Leader><CR> :IPythonCellExecuteCell<CR>

" map <Leader>C to execute the current cell and jump to the next cell
" nnoremap <Leader><CR> :IPythonCellExecuteCellVerboseJump<CR>


"" map <Leader>l to clear IPython screen
"nnoremap <Leader>c :IPythonCellClear<CR>

" map <Leader>x to close all Matplotlib figure windows
"nnoremap <Leader>x :IPythonCellClose<CR>

" map [c and ]c to jump to the previous and next cell header
nnoremap [c :IPythonCellPrevCell<CR>
nnoremap ]c :IPythonCellNextCell<CR>

" map <Leader>h to send the current line or current selection to IPython
"nmap <Leader>h <Plug>SlimeLineSend
"xmap <Leader>h <Plug>SlimeRegionSend

" map <Leader>p to run the previous command
"nnoremap <Leader>p :IPythonCellPrevCommand<CR>

" map <Leader>Q to restart ipython
"nnoremap <Leader>Q :IPythonCellRestart<CR>

" map <Leader>d to start debug mode
"nnoremap <Leader>d :SlimeSend1 %debug<CR>

" map <Leader>q to exit debug mode or IPython
nnoremap <Leader>q :SlimeSend1 exit<CR>

"inoremap <Right> <ESC>:call Ulti_Pairs()<CR>a


function! IPythonOpen()
    " open a new terminal in vertical split and run IPython
		"
		let g:slime_target = 'neovim'
		let g:slime_dont_ask_default = 1
    vnew|call termopen('ipython --matplotlib')
    file ipython " name the new buffer

    " set slime target to new terminal
    if !exists('g:slime_default_config')
        let g:slime_default_config = {}
    end
    let g:slime_default_config['jobid'] = b:terminal_job_id
		nnoremap <Leader><CR> :IPythonCellExecuteCellJump<CR>
		nnoremap <Leader>r :IPythonCellRun<CR>

    wincmd p " switch to the previous buffer
endfunction


" nnoremap <Leader>sn :call IPythonOpen()<CR>

nmap <Leader>ck :IPythonCellInsertAbove<CR>a
nmap <Leader>cj :IPythonCellInsertBelow<CR>a


"augroup remember_folds
		"autocmd!
		"autocmd BufWinLeave ?* mkview | filetype detect
		"autocmd BufWinEnter ?* silent loadview | filetype detect
"augroup END
function! SlimeSendCellJump()
    execute "normal \<Plug>SlimeSendCell"
    call IPythonCellNextCell()
endfunction

nmap <leader><CR> :call SlimeSendCellJump()<CR>
