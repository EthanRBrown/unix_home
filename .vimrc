set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set linebreak
set backupcopy=yes
set number
set foldmethod=indent
set foldlevel=100   " is there a better way to do this?  i don't want folds closed when i open a file
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'
set wildmode=longest,list,full
set wildmenu
syntax enable

au BufNewFile,BufRead *.json5 setlocal ft=json5

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'pangloss/vim-javascript'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'vim-syntastic/syntastic.git'
Plugin 'wakatime/vim-wakatime'
Plugin 'tomasiser/vim-code-dark'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'GutenYe/json5.vim'
Plugin 'kburdett/vim-nuuid.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required

set t_Co=256
set t_ut=
set background=dark
colorscheme codedark
let g:airline_theme = 'codedark'

filetype plugin indent on
