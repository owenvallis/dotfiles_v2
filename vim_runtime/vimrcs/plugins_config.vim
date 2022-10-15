"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
map <leader>o :BufExplorer<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim Slime
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:slime_target = "tmux"
let g:slime_python_ipython = 1
let g:slime_paste_file = "$HOME/.slime_paste"

" Slime default config throws an index error when Vim is 
" launched outside of Tmux
if exists('$TMUX')
    let g:slime_default_config = {"socket_name": "default", "target_pane": "{right-of}"}
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" Required to get syntastic to work with google pytype b/65193656
let g:syntastic_python_checker_args = '--mode=style'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Black
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:black_linelength = 119

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => macros
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Format using Black and Isort
map <leader>f : Black<cr>:Isort<cr>
