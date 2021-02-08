"colorscheme badwolf         " awesome colorscheme
syntax enable               " enable syntax highlighting
set tabstop=4               " spaces per tab
set softtabstop=4
set expandtab
set lazyredraw

" hacer que las flechas se desplacen por las líneas mostradas, no por las
" líneas físicas
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

let g:vim_markdown_folding_disabled = 1

" plugins

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" ver https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

" Hugo helper
Plug 'robertbasic/vim-hugo-helper'

" Markdown syntax
Plug 'plasticboy/vim-markdown'

" Vim ledger
Plug 'ledger/vim-ledger'
call plug#end()
