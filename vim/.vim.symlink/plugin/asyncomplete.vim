" https://github.com/prabirshrestha/asyncomplete.vim

" Tab Completion
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"

" Force refresh completion
"imap <c-space> <Plug>(asyncomplete_force_refresh)

" To enable preview window:
"     allow modifying the completeopt variable, or it will
"     be overridden all the time
let g:asyncomplete_auto_completeopt = 0

set completeopt=menuone,noinsert,popuphidden,preview
