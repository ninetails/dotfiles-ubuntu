function! NERDTreeToggleFind()
  if exists("g:NERDTree") && g:NERDTree.IsOpen()
    NERDTreeClose
  elseif filereadable(expand('%'))
    ProjectRootExe NERDTreeFind
  else
    ProjectRootExe NERDTree
  endif
endfunction

nmap <silent> <Bslash> :call NERDTreeToggleFind()<CR>
let g:NERDTreeMapActivateMode = "<F2>"
let g:NERDTreeMapPreview = "<F3>"
let g:NERDTreeWinSize = 60
let NERDTreeChDirMode = 2
let NERDTreeShowHidden = 1
let NERDTreeShowLineNumbers = 1

" relative line numbers
autocmd FileType nerdtree setlocal relativenumber

nmap <leader>r :NERDTreeFind<cr>
