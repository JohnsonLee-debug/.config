""""""""""""""""""""""""""""""""""""""""""""""""""""
" _              _     _           _ _             "
"| | _____ _   _| |__ (_)_ __   __| (_)_ __   __ _ "
"| |/ / _ \ | | | '_ \| | '_ \ / _` | | '_ \ / _` |"
"|   <  __/ |_| | |_) | | | | | (_| | | | | | (_| |"
"|_|\_\___|\__, |_.__/|_|_| |_|\__,_|_|_| |_|\__, |"
"          |___/                             |___/ "
""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader="\<space>"
" 按<F3>打开或关闭目录树
nmap <F12> :edit ~/.config/nvim/init.vim<CR>
nmap <F5> :source ~/.config/nvim/init.vim<CR>
nmap W :w<CR>
nmap <silent> w <Plug>(coc-ci-w)
nmap <silent> b <Plug>(coc-ci-b)
noremap Q :q!<CR>
noremap gt :bn<CR> 
noremap gT :bp<CR>
noremap gP :b#<CR> 
noremap <up> <c-w>+
noremap <down> <c-w>-
noremap <left> <c-w><
noremap <right> <c-w>>
noremap <F3> :NERDTreeToggle<CR>

map f <Plug>Sneak_s
map F <Plug>Sneak_S
map t <Plug>Sneak_t
map T <Plug>Sneak_T
map j gj
map k gk
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""
"  ____           "
" / ___|___   ___ "
"| |   / _ \ / __|"
"| |__| (_) | (__ "
" \____\___/ \___|"
"""""""""""""""""""

" coc-translator
" popup
nmap <Leader>tt <Plug>(coc-translator-p)
vmap <Leader>tt <Plug>(coc-translator-pv)
" echo
nmap <Leader>te <Plug>(coc-translator-e)
vmap <Leader>te <Plug>(coc-translator-ev)
" replace
nmap <Leader>tr <Plug>(coc-translator-r)
vmap <Leader>tr <Plug>(coc-translator-rv)

nmap <silent> <leader>- <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>+ <Plug>(coc-diagnostic-next)
nmap <silent> <leader>od <Plug>(coc-definition)
nmap <silent> <leader>ot <Plug>(coc-type-definition)
nmap <silent> <leader>oi <Plug>(coc-implementation)
nmap <silent> <leader>or <Plug>(coc-references)
nmap <silent> <leader>on <Plug>(coc-rename)
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>

"" compile and run
noremap <leader>r :call CompileRun()<CR>
func! CompileRun()
exec "w"
set splitbelow
if &filetype == 'c'
  :AsyncRun gcc % -o %<&& time ./%<
elseif &filetype == 'cpp'
  :AsyncRun -mode=term -focus=0 g++ -O3 "%" -Wall -o "%<" -lpthread && time ./"%<"
elseif &filetype == 'java'
  :AsyncRun javac "%" && time java "%<"
elseif &filetype == 'sh'
  :AsyncRun time bash "%"
elseif &filetype == 'python'
  :AsyncRun -mode=term -focus=0 python3 %
elseif &filetype == 'html'
  :AsyncRun -mode=bang google-chrome-stable %
  "silent! exec "!" google-chrome stable "%"
elseif &filetype == 'go'
  :AsyncRun -mode=term -focus=0 go run %
elseif &filetype == 'scheme'
  :AsyncRun -mode=term -focuns=0 racket %
endif
endfunc

""""""""""""""""""""""""
"           _          "
" _ __ ___ (_)___  ___ "
"| '_ ` _ \| / __|/ __|"
"| | | | | | \__ \ (__ "
"|_| |_| |_|_|___/\___|"
"                      "
""""""""""""""""""""""""

nmap <silent><Leader>; /<++><CR>:nohlsearch<CR>ca<
nmap <F2> :Vista!!<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                      _   _             
"  ___  __ _ ___ _   _ _ __ ___   ___ | |_(_) ___  _ __  
" / _ \/ _` / __| | | | '_ ` _ \ / _ \| __| |/ _ \| '_ \ 
"|  __/ (_| \__ \ |_| | | | | | | (_) | |_| | (_) | | | |
" \___|\__,_|___/\__, |_| |_| |_|\___/ \__|_|\___/|_| |_|
"                |___/                                   
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1
" j for jump
nmap <Leader>jf <Plug>(easymotion-bd-f)
nmap <Leader>jf <Plug>(easymotion-overwin-f)
nmap <Leader>js <Plug>(easymotion-overwin-f2)
nmap <Leader>jl <Plug>(easymotion-lineforward)
nmap <Leader>jj <Plug>(easymotion-j)
nmap <Leader>jk <Plug>(easymotion-k)
nmap <Leader>jh <Plug>(easymotion-linebackward)
nmap <Leader>jw <Plug>(easymotion-w)
nmap <Leader>jb <Plug>(easymotion-b)
nmap <Leader>je <Plug>(easymotion-e)


""""""coc-calc""""""
nmap <Leader>aa <Plug>(coc-calc-result-append)
nmap <Leader>ar <Plug>(coc-calc-result-replace)
vmap <Leader>aa <Plug>(coc-calc-result-append)
vmap <Leader>ar <Plug>(coc-calc-result-replace)
