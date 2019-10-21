" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plugged')

" Declare the list of plugins.
" Utils
Plug 'tpope/vim-sensible'
Plug 'morhetz/gruvbox'
Plug 'jeffkreeftmeijer/vim-numbertoggle'                " Smart numbering
Plug 'ctrlpvim/ctrlp.vim'                               " File quick access via ctrl-P
Plug 'farmergreg/vim-lastplace'                         " Remember last cursor place in file
Plug 'majutsushi/tagbar'                                " ctags
Plug 'tpope/vim-commentary'                             " comment/uncomment easy mode
Plug 'airblade/vim-gitgutter'                           " git info in the gutter
Plug 'vim-airline/vim-airline'                          " nice status line
Plug 'ervandew/supertab'	                			" tabs on steroids
Plug 'mileszs/ack.vim'                                  " search tool
Plug 'scrooloose/nerdtree'                              " to browse files
Plug 'Xuyuanp/nerdtree-git-plugin'                      " git status in nerdtree
Plug 'jiangmiao/auto-pairs'                             " Auto close guru
Plug 'Yggdroot/indentLine'                              " Indent guides
Plug 'tpope/vim-surround'                               " quoting/parenthesizing made simple
Plug 'mattn/emmet-vim'                                  " simplify html/ccs

" Code
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Code completion
" Plug 'roxma/nvim-yarp'
" Plug 'roxma/vim-hug-neovim-rpc'
Plug 'sheerun/vim-polyglot'                             "Syntax highlighting collection
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Python
Plug 'psf/black'                                        " Format code
" Plug 'dense-analysis/ale'                               " Asynchronous Lint Engine
" Plug 'deoplete-plugins/deoplete-jedi'			        " Python completion
Plug 'lepture/vim-jinja'                                " Jinja syntax highlighting
" Plug 'davidhalter/jedi-vim'                             " Completion (left to deoplete) and more
Plug 'fatih/vim-go'                                     " Go dev plugin    
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

source ~/.config/nvim/base.vim
source ~/.config/nvim/abreviations.vim
source ~/.config/nvim/functions.vim
source ~/.config/nvim/mappings.vim
" Plugin configuration
" source ~/.config/nvim/ale.vim
source ~/.config/nvim/airline.vim
source ~/.config/nvim/numbertoggle.vim
source ~/.config/nvim/gitgutter.vim
source ~/.config/nvim/deoplete.vim
source ~/.config/nvim/supertab.vim
source ~/.config/nvim/ack.vim
source ~/.config/nvim/nerdtree.vim
source ~/.config/nvim/tagbar.vim
source ~/.config/nvim/indentline.vim
" source ~/.config/nvim/jedivim.vim
source ~/.config/nvim/vimgo.vim
source ~/.config/nvim/cocn.vim
