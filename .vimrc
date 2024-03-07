set nocompatible              " required
set mouse=a
set number

filetype off                  " required

set viminfo='100,<1000,s1000,h

call plug#begin('~/.vim/plugged')

" Plugins go here

Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-fugitive'
Plug 'christoomey/vim-tmux-navigator'
Plug 'lifepillar/vim-solarized8'
Plug 'ntpeters/vim-better-whitespace'
Plug 'christianrondeau/vim-base64'

call plug#end()

" Enable folding with the spacebar
nnoremap <space> za


"define BadWhitespace before using in a match
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

let python_highlight_all=1
syntax on
au BufNewFile,BufRead Jenkinsfile setf groovy

set expandtab
set shiftwidth=2
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

colorscheme solarized8
set background=dark

let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1
set conceallevel=2

nnoremap <F6> :Files<CR>
nnoremap / :Lines<CR>

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2
set cc=80
