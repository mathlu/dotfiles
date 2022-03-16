set nocompatible              " required
set mouse=a

filetype off                  " required

call plug#begin('~/.vim/plugged')

" Plugins go here

"Plug 'tmhedberg/SimpylFold'
Plug 'junegunn/goyo.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'vim-scripts/indentpython.vim'
"Plug 'vim-scripts/vcscommand.vim'
Plug 'nvie/vim-flake8'
Plug 'vim-syntastic/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'lifepillar/vim-solarized8'
"Bundle 'chase/vim-ansible-yaml'
Plug 'ntpeters/vim-better-whitespace'
Plug 'hashivim/vim-terraform'
Plug 'christianrondeau/vim-base64'

call plug#end()


" Enable folding
" set foldmethod=indent
" set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

let g:SimpylFold_docstring_preview=1

"define BadWhitespace before using in a match
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

let python_highlight_all=1
syntax on
au BufNewFile,BufRead Jenkinsfile setf groovy

set expandtab
set shiftwidth=2
set t_Co=256
let g:solarized_termcolors=256
colorscheme solarized8
set background=dark

let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1
set conceallevel=2
