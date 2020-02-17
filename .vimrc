

"==========================================================================================================
"                                Made by Matheus Gabriel
"==========================================================================================================

set nocompatible              " be iMproved, required
filetype off                  " required

"Mostrar numeros
set number

"==========================================================================================================
"Theme Configs
"==========================================================================================================
let g:airline_theme = 'tomorrow'
syntax enable
set background=dark

"==========================================================================================================
"Tab configs
"==========================================================================================================

set tabstop=4
set shiftwidth=4
set expandtab


"==========================================================================================================
"Shortcuts tabs configs
"==========================================================================================================

nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
nnoremap <C-n> :tabnew<CR>

"==========================================================================================================
"Configs of Emmet.vim
"==========================================================================================================
let g:user_emmet_leader_key='<C-Z>'

"==========================================================================================================
"Config Show my keys presseds
"==========================================================================================================
set showcmd



"==========================================================================================================
"Config Rainbow Brackets
"==========================================================================================================
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"==========================================================================================================
"Confing Sytatic Plugin
"==========================================================================================================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'
let g:syntastic_css_checkers = ['csslint']
let g:syntastic_css_csslint_exec = 'csslint'

" Autofix entire buffer with eslint_d:
 nnoremap <leader>f mF:%!eslint_d --stdin --fix-to-stdout<CR>`F
" " Autofix visual selection with eslint_d:
 vnoremap <leader>f :!eslint_d --stdin --fix-to-stdout<CR>gv"`


"==========================================================================================================
" Start autocompletion after 4 chars
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_enable_diagnostic_highlighting = 0
" Don't show YCM's preview window [ I find it really annoying ]
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0
"==========================================================================================================
let g:javascript_plugin_jsdoc = 1
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
 Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
 Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
 Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
 Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginList       - lists configured plugins
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"==========================================================================================================
"Plugins Adicionados
""==========================================================================================================

Plugin 'tomasr/molokai'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mattn/emmet-vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'scrooloose/syntastic'
Plugin 'pangloss/vim-javascript'

