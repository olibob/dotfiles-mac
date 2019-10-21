" ---------------------------------------------------------------- "
"  ALE								   "
" ---------------------------------------------------------------- "

augroup cloudformation
    autocmd!
    " ALE - Check Cloudformation files with cfn-lint (pip or brew)
    autocmd BufRead,BufNewFile *.template.yaml set ft=cloudformation.yaml               " File pattern for Cloudformation files
augroup END

" Move from one issue to the other
nnoremap <leader>k :ALENextWrap<CR>
nnoremap <leader>j :ALEPreviousWrap<CR>

" Check Python files with pylint.
" pylintrc: https://raw.githubusercontent.com/PyCQA/pylint/master/pylintrc
" let b:ale_linters = ['pylint']
let g:ale_linters = {
\   'python': ['pylint'],
\   'javascript': ['eslint']
\}

" Fix Python files with black.
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'python': ['isort', 'ale#fixers#generic_python#BreakUpLongLines', 'black']
\}


let g:ale_linters_explicit = 1

" Fix files on save
let g:ale_fix_on_save = 1
