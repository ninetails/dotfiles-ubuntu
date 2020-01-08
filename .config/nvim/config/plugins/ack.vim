" https://github.com/mileszs/ack.vim#can-i-use-ag-the-silver-searcher-with-this
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" highlight
let g:ackhighlight = 1

cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>
