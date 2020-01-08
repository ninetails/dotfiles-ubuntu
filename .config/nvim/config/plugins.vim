" download vim-plug automatically
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" load configurations
for f in split(glob('~/.config/nvim/config/plugins/*.vim'), '\n')
  exe 'source' f
endfor

" installed plugins
call plug#begin('~/.vim/plugged')

" vim core
Plug 'scrooloose/syntastic'
Plug 'milkypostman/vim-togglelist' " fixes toggling Location & QuickFix lists

" vim welcome
Plug 'mhinz/vim-startify'

" vim navigation
Plug 'dbakker/vim-projectroot'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" <C-*> and search
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'

" swap tiles
Plug 'wesQ3/vim-windowswap'

" Plug 'tpope/vim-projectionist'

" vim editing
Plug 'scrooloose/nerdcommenter'
Plug 'editorconfig/editorconfig-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'mattn/emmet-vim'
Plug 'majutsushi/tagbar' " code outlines
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround' " delete/change/add surrounding pairs
Plug 'alvan/vim-closetag' " (x)html auto closing
Plug 'liuchengxu/vim-which-key' " :WhichKey '<Space>'<CR> shows bindings starting with space
Plug 'dominikduda/vim_current_word' " highlights current word under cursor
Plug 'kshenoy/vim-signature' " add marks to code
Plug 'Yggdroot/indentLine' " display thin vertical lines at each indentation level for code indented with spaces
Plug 'luochen1990/rainbow' " Rainbow Parentheses
Plug 'Valloric/MatchTagAlways' " highlight enclosing tags
Plug 'chrisbra/Colorizer' " color for hex codes and color names
Plug 'qpkorr/vim-bufkill' " unload/delete/wipe a file from buffer without change window splitting
Plug 'djoshea/vim-autoread' " reload a file that has changed externally
Plug 'godlygeek/tabular' " column alignment

" emoji
Plug 'kyuhi/vim-emoji-complete'

" theming
"Plug 'flazz/vim-colorschemes' " hybrid_reverse
Plug 'danilo-augusto/vim-afterglow'
"Plug 'vim-airline/vim-airline' " bar on bottom
"Plug 'vim-airline/vim-airline-themes'

" time tracking
Plug 'wakatime/vim-wakatime'

" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" syntax
Plug 'dense-analysis/ale' " lint/fix

" syntax/js
Plug 'othree/yajs.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'mxw/vim-jsx'
Plug 'styled-components/vim-styled-components'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'moll/vim-node'

" syntax/typescript
Plug 'Quramy/tsuquyomi'

" syntax/stylus
Plug 'wavded/vim-stylus'

" markdown
Plug 'plasticboy/vim-markdown'

" completion
Plug 'ajh17/VimCompletesMe'
Plug 'ludovicchabant/vim-gutentags'

"Plug 'lifepillar/vim-mucomplete'
Plug '1995eaton/vim-better-javascript-completion'
Plug 'othree/html5.vim'
Plug 'othree/jspc.vim'

" snippets
Plug 'tomtom/tlib_vim' " snipmate dep
Plug 'MarcWeber/vim-addon-mw-utils' " snipmate dep
Plug 'garbas/vim-snipmate'

Plug 'honza/vim-snippets'

" snippets/js
Plug 'bentayloruk/vim-react-es6-snippets'
Plug 'mlaursen/vim-react-snippets'
Plug 'joaohkfaria/vim-jest-snippets'

call plug#end()
