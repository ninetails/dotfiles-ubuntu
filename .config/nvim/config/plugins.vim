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

" vim navigation
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-ctrlspace/vim-ctrlspace' " <C-Space>
Plug 'ctrlpvim/ctrlp.vim'
Plug 'wesQ3/vim-windowswap'
Plug 'tpope/vim-projectionist'

" vim editing
Plug 'scrooloose/nerdcommenter'
Plug 'editorconfig/editorconfig-vim'
Plug 'terryma/vim-multiple-cursors' " multiple cursors
Plug 'mattn/emmet-vim'
Plug 'majutsushi/tagbar' " code outlines
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'alvan/vim-closetag'
Plug 'liuchengxu/vim-which-key'
Plug 'dominikduda/vim_current_word'
Plug 'kshenoy/vim-signature'
Plug 'Yggdroot/indentLine'
Plug 'luochen1990/rainbow'
Plug 'Valloric/MatchTagAlways'
Plug 'chrisbra/Colorizer'
Plug 'qpkorr/vim-bufkill'
Plug 'djoshea/vim-autoread'

" theming
"Plug 'flazz/vim-colorschemes' " hybrid_reverse
Plug 'danilo-augusto/vim-afterglow'
Plug 'vim-airline/vim-airline' " bar on bottom
Plug 'vim-airline/vim-airline-themes'

" time tracking
Plug 'wakatime/vim-wakatime'

" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" syntax
Plug 'w0rp/ale' " lint/fix

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

" omni & completion
"Plug 'lifepillar/vim-mucomplete'
Plug '1995eaton/vim-better-javascript-completion'
Plug 'othree/html5.vim'
Plug 'othree/jspc.vim'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

" snippets
Plug 'honza/vim-snippets'
Plug 'tomtom/tlib_vim' " snipmate dep
Plug 'MarcWeber/vim-addon-mw-utils' " snipmate dep
Plug 'garbas/vim-snipmate'

" snippets/js
Plug 'bentayloruk/vim-react-es6-snippets'
Plug 'mlaursen/vim-react-snippets'
Plug 'joaohkfaria/vim-jest-snippets'

call plug#end()
