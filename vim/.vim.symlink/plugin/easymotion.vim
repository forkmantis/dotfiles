"/*[ EasyMotion ]*****************************************************************/

" only use easy-to-use and recognize keys
let g:EasyMotion_keys='asdghkqwertyuopzxcvbnmfj'

" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

nmap <Leader><Leader>f <Plug>(easymotion-overwin-f)
omap <Leader><Leader>f <Plug>(easymotion-f)

nmap <Leader><Leader>t <Plug>(easymotion-overwin-t)
omap <Leader><Leader>t <Plug>(easymotion-t)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1
