set backspace=indent,eol,start

set ruler

set hls

:" See http://stackoverflow.com/questions/2360249/vim-automatically-removes-indentation-on-python-comments
:" set smartindent
filetype indent on

set tabstop=4
set shiftwidth=4
set expandtab

" Turn on spell checking
" set spell spelllang=en_gb


" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo


" have Vim jump to the last position when
" reopening a file
if has("autocmd")
   au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


:" Map home and end keys on Macbook Air. fn+shift+left for home, fn+shift+right for end.
:" Page up and down come from Ctrl-F and Ctrl-B respectively
:map <ESC>[H <Home>
:map <ESC>[F <End>
:imap <ESC>[H <C-O><Home>
:imap <ESC>[F <C-O><End>
:cmap <ESC>[H <Home>
:cmap <ESC>[F <End>

" http://stackoverflow.com/questions/5700389/using-vims-persistent-undo
" Put plugins and dictionaries in this dir (also on Windows)
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undodir')
    " Create dirs
    call system('mkdir ' . vimDir)
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
endif
