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
" Plug 'dense-analysis/ale'

"AUTO COMPLETE
"need node JS
" Use release branch (Recommend)
 Plug 'neoclide/coc.nvim' 

 Plug  'hdima/python-syntax'
"Themes
Plug 'rainglow/vim'
" beatfull bar 
Plug 'vim-airline/vim-airline'
" Themes to airline plugin
Plug 'vim-airline/vim-airline-themes'
" emmet to html and css
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
" Theme
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'
Plug 'wesQ3/vim-windowswap'
"Plug 'ryanoasis/vim-devicons'
call plug#end()

"Config of ALE
"
" nmap <silent> [c <Plug>(ale_previous_wrap)
" nmap <silent> ]c <Plug>(ale_next_wrap)

"Config of theme
" set termguicolors
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
"set encoding=UTF-8
set updatetime=1
" Config NERDTreeToggle
"let g:NERDTreeWinPos = "right"
autocmd vimenter * NERDTree
nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>

"Config of emmet Plugin
let g:user_emmet_leader_key='<C-Z>'

"Confi of Airline Plugin
let g:airline_theme = 'onedark'
let g:airline#extensions#tabline#enabled = 1
"==========================================================================================================
" Theme Config
"==========================================================================================================

colorscheme gruvbox
" let g:molokai_original = 1
" let g:rehash256 = 1

"==========================================================================================================
"Shortcuts tabs configs
"==========================================================================================================

nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
nnoremap <C-n> :tabnew<CR>
nnoremap <C-x> :bnext<CR>
nnoremap <C-t> :term<CR>
nnoremap <C-r> :set statusline^=%{coc#status()}  
nnoremap <C-m> :res +5<CR>
nnoremap <C-n> :res -5<CR>
let @t =  ''
