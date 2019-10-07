" show powerline symbols
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

