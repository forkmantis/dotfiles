" https://github.com/lifepillar/vim-mucomplete
set completeopt+=menuone
set completeopt+=noselect
set shortmess+=c   " Shut off completion messages
set belloff+=ctrlg " If Vim beeps during completion

" For compatability with UltiSnips
" https://github.com/lifepillar/vim-mucomplete/issues/142
let g:ulti_expand_or_jump_res = 0

fun! TryUltiSnips()
    if !pumvisible() " Do not trigger UltiSnips with Tab when the pop-up menu is open
        call UltiSnips#ExpandSnippetOrJump()
    endif
    return ''
endf

fun! TryMUcomplete()
    return g:ulti_expand_or_jump_res ? "" : "\<plug>(MyFwd)"
endf

imap <plug>(MyFwd) <plug>(MUcompleteFwd)
inoremap <plug>(TryUlti) <c-r>=TryUltiSnips()<cr>
imap <expr> <silent> <plug>(TryMU) TryMUcomplete()
imap <expr> <silent> <tab> "\<plug>(TryUlti)\<plug>(TryMU)"

let g:UltiSnipsExpandTrigger = "<f5>"        " Do not use <tab>
let g:UltiSnipsJumpForwardTrigger = "<c-b>"  " Do not use <c-j>
