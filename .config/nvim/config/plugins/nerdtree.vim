nmap <silent> <Bslash> :NERDTreeToggle<CR>
let g:NERDTreeMapActivateMode = "<F2>"
let g:NERDTreeMapPreview = "<F3>"
let g:NERDTreeWinSize = 60
let NERDTreeChDirMode = 2
let NERDTreeShowHidden = 1
let NERDTreeShowLineNumbers = 1

" relative line numbers
autocmd FileType nerdtree setlocal relativenumber

nmap <leader>r :NERDTreeFind<cr>
