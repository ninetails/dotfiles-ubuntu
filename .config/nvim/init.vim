syntax on
set t_Co=256

" leader key
let mapleader="\<space>"

" filetype
filetype plugin on

if has('nvim')
  set runtimepath^=~/.vim runtimepath+=~/.vim/after
  let &packpath = &runtimepath
endif

set runtimepath+=~/.vim/plugged/deoplete.nvim

" load configurations
for f in split(glob('~/.config/nvim/config/*.vim'), '\n')
  exe 'source' f
endfor

