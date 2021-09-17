" ====================================================
"                   vimrc 
"              Matheus Gabriel
"
"=====================================================
"
"+++++++++++++++++++++++++
" GENERAL
set mouse=a
syntax enable
syntax on
set cursorline 
set updatetime=50
set autoread
set number
set bg=dark
set encoding=UTF-8
" set conceallevel=0
" let g:tex_flavor = 'latex'
" " set laststatus=2 " to lightline work
" let &t_ut=''
set termguicolors
" " set t_Co=256
" set linespace=3
" " set bg=light
" set ruler
" set showcmd
" set wildmenu
" set wildmode=list:longest,full
" set nowrap
" set ttimeoutlen=10 " <esc> O


""+++++++++++++++++++++++++
" INDENTATION
"+++++++++++++++++++++++++
set expandtab
set autoindent 
filetype plugin indent on

"Indentation per language
autocmd FileType html            setlocal shiftwidth=2 tabstop=2
autocmd FileType css             setlocal shiftwidth=2 tabstop=2
autocmd FileType latex           setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby            setlocal shiftwidth=2 tabstop=2
autocmd FileType perl            setlocal shiftwidth=2 tabstop=2
autocmd FileType python          setlocal shiftwidth=4 tabstop=4 smartindent
autocmd FileType lua             setlocal shiftwidth=4 tabstop=4
autocmd FileType c               setlocal shiftwidth=4 tabstop=4 smartindent
autocmd FileType cpp             setlocal shiftwidth=4 tabstop=4 smartindent
autocmd FileType javascript      setlocal shiftwidth=4 tabstop=4
autocmd FileType typescript      setlocal shiftwidth=4 tabstop=4
autocmd FileType typescriptreact setlocal shiftwidth=4 tabstop=4
autocmd FileType javascriptreact setlocal shiftwidth=4 tabstop=4
autocmd FileType go              setlocal shiftwidth=4 tabstop=4
autocmd FileType yml             setlocal shiftwidth=2 tabstop=2

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

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

nnoremap <silent> K :call <SID>show_documentation()<CR>
"=====================================================
"                 Plugins
"=====================================================

call plug#begin('~/.vim/plugged')

"------------------
" Themes
"------------------

Plug 'lukas-reineke/indent-blankline.nvim'

Plug 'crusoexia/vim-monokai'
Plug 'dikiaap/minimalist'
Plug 'lifepillar/vim-solarized8'
Plug 'morhetz/gruvbox'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'rakr/vim-one'
"------------------
" General
"------------------
" Plug 'itchyny/lightline.vim'  " minmal status bar
Plug 'vim-airline/vim-airline'
Plug'vim-airline/vim-airline-themes'
Plug 'KKPMW/vim-sendtowindow' " send commands to REPL
Plug 'ryanoasis/vim-devicons' " Icons in nerdTree
Plug 'tomtom/tcomment_vim'    " to comment lines
Plug 'airblade/vim-gitgutter' " Show git modifications
Plug 'scrooloose/nerdtree'    " File Explorer
Plug 'jiangmiao/auto-pairs'   " Auto pairs
Plug 'tpope/vim-surround'     " edit keys, brackets, etc
Plug 'tpope/vim-fugitive'     " allows git commands in vim session

"------------------
" LaTeX
"------------------

Plug 'lervag/vimtex'

"------------------
" COC
"------------------
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"------------------
" CSV
"------------------
Plug 'mechatroner/rainbow_csv'

"------------------
" Python
"------------------
" Plug  'davidhalter/jedi-vim'
Plug  'hdima/python-syntax'

"------------------
" Go
"------------------
Plug 'fatih/vim-go'

"------------------
" Markdown
"------------------
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}

"------------------
" Assembly
"------------------
Plug 'https://github.com/harenome/vim-mipssyntax'

"------------------
" HTML
"------------------
Plug 'mattn/emmet-vim'

"------------------
" CSS
"------------------
Plug 'ap/vim-css-color'

"------------------
" Java
"------------------
Plug 'mxw/vim-jsx'

"------------------
" Type
"------------------
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

call plug#end()


"+++++++++++++++++++++++++
" NERDTree Config
"+++++++++++++++++++++++++
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>
let NERDTreeShowHidden=1
nmap <C-b> :NERDTreeToggle<CR>
" autocmd vimenter * NERDTree
let NERDTreeWinSize = 25
let NERDTreeShowHidden=0

"+++++++++++++++++++++++++
" Python-higlith
"+++++++++++++++++++++++++
let g:python_highlight_all = 1

"+++++++++++++++++++++++++
" COC
"+++++++++++++++++++++++++
" " GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gu <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references) 
"
" show prev and next error or warnig
nmap <silent> [ <Plug>(coc-diagnostic-prev)
nmap <silent> ] <Plug>(coc-diagnostic-next)
"+++++++++++++++++++++++++
" Airline
"+++++++++++++++++++++++++
" colorscheme  monokai
let g:neosolarized_termtrans=1
runtime ./colors/NeoSolarized.vim
colorscheme NeoSolarized
let g:airline_theme='solarized'

"==========================================================================================================
"Shortcuts tabs configs
"==========================================================================================================
set tabpagemax=15
map! <C-l> <Esc>:tabn<CR>
map! <C-h> <Esc>:tabp<CR>
nnoremap <C-l> <Esc>:tabn<CR>
nnoremap <C-h> <Esc>:tabp<CR>

nnoremap <C-t> :term<CR>
nnoremap <C-s> :!pdflatex %<CR>
nnoremap <C-m> :res +5<CR>
nnoremap <C-n> :res -5<CR>
nnoremap <C-z> "+p
vnoremap <C-c> "+y
let @t =  ''

let g:go_fmt_command = "goimports"

" Window Splits
set splitbelow splitright

map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K
map <Leader>tr :term<CR>
map <Leader>tp :term python3<CR>
nmap ,p :w<CR>:!python3 %<CR>
nmap ,t :w<CR>:!time python3 %<CR>

" lightline 
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }


" Use tab to go to next option in coc
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

" fzf ctrl+p
nnoremap <c-p> :FZF<CR>

" Use space to disable highlight in search words
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
