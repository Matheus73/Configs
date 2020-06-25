"=====================================================
"                   VIMRC 
"              Matheus Gabriel
"
"=====================================================

"+++++++++++++++++++++++++
" GENERAL
"+++++++++++++++++++++++++
set linespace=3
set expandtab
set autoread
set number
set bg=dark
set ruler
set showcmd
set wildmenu
set wildmode=list:longest,full
set nowrap
set ttimeoutlen=10 " <esc> O
set expandtab


"+++++++++++++++++++++++++
" INDENTATION
"+++++++++++++++++++++++++
set autoindent 
set tabstop=4
set shiftwidth=4
filetype plugin indent on

"+++++++++++++++++++++++++
" SEARCH
"+++++++++++++++++++++++++
set incsearch  " Starts search while typing
set ignorecase
set smartcase  " Case sensitive if has upper

"+++++++++++++++++++++++++
" FUNCTIONS
"+++++++++++++++++++++++++
function! FindConfig(prefix, what, where)
    let cfg = findfile(a:what, escape(a:where, ' ') . ';')
    return cfg !=# '' ? ' ' . a:prefix . ' ' . shellescape(cfg) : ''
endfunction


"=====================================================
"                 Plugins
"=====================================================

call plug#begin('~/.vim/plugged')
"------------------
" General
"------------------

Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'

"------------------
" Python
"------------------

Plug  'hdima/python-syntax'

"------------------
" Go
"------------------

Plug 'fatih/vim-go'

"------------------
" Markdown
"------------------

Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'plasticboy/vim-markdown'

"------------------
" HTML
"------------------

Plug 'mattn/emmet-vim'

call plug#end()
"+++++++++++++++++++++++++
" Emmet
"+++++++++++++++++++++++++

let g:user_emmet_leader_key=','

"+++++++++++++++++++++++++
" NERDTree Config
"+++++++++++++++++++++++++

nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>

"+++++++++++++++++++++++++
" Python-higlith
"+++++++++++++++++++++++++

let g:python_highlight_all = 1

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
