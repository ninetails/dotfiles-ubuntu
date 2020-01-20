set hidden
set mouse=a
if (has('nvim'))
  set inccommand=split
endif

" old config
set nowrap
set encoding=utf-8
set ruler
set eol
set cursorline
set colorcolumn=80
set tw=0 " disable auto line break at 80"

" refresh
set autoread

" meta
set backupdir=~/.vim/backup/
set directory=~/.vim/swap/
set undodir=~/.vim/undo/

" whitespace
set listchars=tab:▸\ ,eol:⏎,trail:▓,extends:»,precedes:«,nbsp:×,space:⋅
set list
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set breakindent
set autoindent

" IndentionWhitespace
highlight IndentionWhitespace ctermbg=236
match IndentionWhitespace /^\s\+/

" statusbar
set laststatus=2

" clipboard
set clipboard=unnamedplus

" folding
set foldmethod=syntax
set foldlevel=99

" https://superuser.com/questions/195022/vim-how-to-synchronize-nerdtree-with-current-opened-tab-file-path
" cd to current file
autocmd BufEnter * lcd %:p:h

" conceal
set conceallevel=1

" netrw
let g:loaded_netrw=1
let g:netrw_loaded_netrwPlugin=1

" http://vim.wikia.com/wiki/Diff_current_buffer_and_the_original_file
function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()
