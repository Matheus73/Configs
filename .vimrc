"=====================================================
"                   VIMRC 
"              Matheus Gabriel
"
"=====================================================



"=====================================================
"                 Plugins
"=====================================================

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Plug Poligloty sytax 
Plug 'sheerun/vim-polyglot'

"Plug ALE (Log code)
Plug 'dense-analysis/ale'

"AUTO COMPLETE
" Use release branch (Recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Themes
Plug 'rainglow/vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'tomasr/molokai'
call plug#end()

"Config of ALE
"
nmap <silent> [c <Plug>(ale_previous_wrap)
nmap <silent> ]c <Plug>(ale_next_wrap)

"Config of theme

set number
set linespace=3
set guifont=Hack\ Code:h12
set cursorline
set tabstop=4
set shiftwidth=4
set expandtab
syntax enable
set background=dark
set showcmd

" Config of emmet Plugin
let g:user_emmet_leader_key='<C-Z>'

"Confi of Airline Plugin
let g:airline_theme = 'tomorrow'
let g:airline#extensions#tabline#enabled = 1
"==========================================================================================================
"Molokai Theme Config
"==========================================================================================================

let g:molokai_original = 1
let g:rehash256 = 1

"==========================================================================================================
"Shortcuts tabs configs
"==========================================================================================================

nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
nnoremap <C-n> :tabnew<CR>
