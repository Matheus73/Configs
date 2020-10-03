" =====================================================
"                   vimrc 
"              Matheus Gabriel
"
"=====================================================

"+++++++++++++++++++++++++
" GENERAL
"+++++++++++++++++++++++++
let &t_ut=''
syntax enable
set t_Co=256
set linespace=3
set expandtab
set updatetime=300
set autoread
set number
set bg=dark
set encoding=UTF-8
set ruler
set showcmd
set wildmenu
set wildmode=list:longest,full
set nowrap
set ttimeoutlen=10 " <esc> O
set expandtab



""+++++++++++++++++++++++++
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
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'ryanoasis/vim-devicons'
Plug 'tomtom/tcomment_vim'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'


"------------------
" COC
"------------------

Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-emmet', 'coc-tslint', 'coc-prettier']

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
" Javascript
"------------------

Plug 'vim-scripts/mips.vim'

"------------------
" HTML
"------------------

Plug 'mattn/emmet-vim'

"------------------
" CSS
"------------------

Plug 'ap/vim-css-color'


"------------------
" Javascript
"------------------

Plug 'pangloss/vim-javascript'

"------------------
" Typescript
"------------------

Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

Plug 'https://github.com/harenome/vim-mipssyntax'
call plug#end()


"+++++++++++++++++++++++++
" NERDTree Config
"+++++++++++++++++++++++++

nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>
let NERDTreeShowHidden=1
nmap <F6> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
let NERDTreeWinSize = 25

"+++++++++++++++++++++++++
" Python-higlith
"+++++++++++++++++++++++++

let g:python_highlight_all = 1

"+++++++++++++++++++++++++
" COC
"+++++++++++++++++++++++++

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
   
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references) 
" show prev and next error or warnig
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

"+++++++++++++++++++++++++
" Airline
"+++++++++++++++++++++++++

" colorscheme dracula
"==========================================================================================================
"Shortcuts tabs configs
"==========================================================================================================

nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
nnoremap <C-n> :tabnew<CR>
nnoremap <C-x> :bnext<CR>
nnoremap <C-t> :term<CR>
nnoremap <C-m> :res +5<CR>
nnoremap <C-n> :res -5<CR>
let @t =  ''

let g:rainbow_active = 1
