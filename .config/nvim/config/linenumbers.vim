" Line numbers
"
" set number - adiciona numeração
" set relativenumber - linha relativa ao cursor
set number relativenumber

" " remove relative number no nerdtree
" fun! SetRelativeNumber()
"   if &ft =~ 'nerdtree'
"     return
"   endif
"   set relativenumber
" endfun

" arquivo em foco: usar relativenumber; desabilitar relativenumber caso
" contrário
augroup numbertoggle
  autocmd!
  "autocmd BufEnter,FocusGained,InsertLeave * call SetRelativeNumber()
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

