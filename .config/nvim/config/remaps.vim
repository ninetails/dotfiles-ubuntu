" neovim
nnoremap <leader>ev :edit ~/.config/nvim/config/plugins.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

" zsh
nnoremap <leader>ez :edit ~/.zshrc<cr>
nnoremap <leader>ea :edit ~/.aliases<cr>

" i3
nnoremap <leader>ei :edit ~/.config/i3/config<cr>

" vim-plug
nnoremap <leader>pi :PlugInstall<cr>

" shortcuts
nnoremap <leader>cx :bw<cr>
nnoremap <leader>ss :w<cr>
nnoremap <leader>zz :wq<cr>
nnoremap <leader>qa :qa!<cr>
nnoremap <leader>cd :lcd %:p:h<cr>:NERDTreeCWD<cr>:NERDTreeClose<cr>

" Maps - Buffer
nnoremap <silent> <leader><Tab> :bn<cr>
nnoremap <silent> <leader><S-Tab> :bp<cr>

" Maps - Copy
nnoremap <silent> <leader>y "+y<cr>
vnoremap <silent> <leader>y "+y<cr>
nnoremap <silent> <leader>p "+gP<cr>
vnoremap <silent> <leader>p "+gP<cr>

" cheatsheets
nnoremap <leader>cv :edit ~/.dotfiles/cheatsheets/neovim.md<cr>
nnoremap <leader>ct :edit ~/.dotfiles/cheatsheets/tmux.md<cr>

" ctrl+c as <Esc>
inoremap <C-c> <Esc>

" moving between panels
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>

" tab navigation (custom)
" source: http://vim.wikia.com/wiki/Alternative_tab_navigation
nnoremap <leader>th :tabfirst<cr>
nnoremap <leader>tk :tabnext<cr>
nnoremap <leader>tj :tabprev<cr>
nnoremap <leader>tl :tablast<cr>
nnoremap <leader>tt :tabedit<Space>
"nnoremap <leader>tn :tabnext<Space>
nnoremap <leader>tn :tabnext<cr>
nnoremap <leader>tm :tabm<Space>
nnoremap <leader>tc :tabnew<cr>
nnoremap <leader>tx :tabclose<cr>
