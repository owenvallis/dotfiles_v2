" Load Google plugins
source /usr/share/vim/google/google.vim

" Code formatting for BUILD files
Glug codefmt
Glug codefmt-google
autocmd FileType borg,gcl,patchpanel AutoFormatBuffer gclfmt
autocmd FileType bzl AutoFormatBuffer buildifier
autocmd FileType c,cpp,proto,javascript,typescript AutoFormatBuffer clang-format
autocmd FileType python AutoFormatBuffer pyformat

" Help navigate chnangelists
Glug piper plugin[mappings]
Glug relatedfiles plugin[mappings]

" Provide blaze integration
Glug blaze use_external_parser
nnoremap <Leader>btf :call blaze#TestCurrentFile()<CR>
nnoremap <Leader>btm :call blaze#TestCurrentMethod()<CR>

" YCM-Google
Glug youcompleteme-google
nnoremap <Leader>jd :YcmCompleter GoTo<CR>
