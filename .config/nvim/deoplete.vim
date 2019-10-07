let g:deoplete#enable_at_startup = 1

" Close preview window automatically
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | silent! pclose | endif
