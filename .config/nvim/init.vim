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

" Code
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Code completion
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
" Python
Plug 'psf/black'                                        " Format code
Plug 'dense-analysis/ale'                               " Asynchronous Lint Engine
Plug 'deoplete-plugins/deoplete-jedi'			" Python completion
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

source ~/.config/nvim/base.vim
source ~/.config/nvim/abreviations.vim
source ~/.config/nvim/functions.vim
source ~/.config/nvim/mappings.vim
" Plugin configuration
source ~/.config/nvim/ale.vim
source ~/.config/nvim/airline.vim
source ~/.config/nvim/numbertoggle.vim
source ~/.config/nvim/gitgutter.vim
source ~/.config/nvim/deoplete.vim
source ~/.config/nvim/supertab.vim
source ~/.config/nvim/ack.vim
source ~/.config/nvim/nerdtree.vim
source ~/.config/nvim/tagbar.vim
source ~/.config/nvim/indentline.vim
