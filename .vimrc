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
set colorcolumn=115
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'
set wildmode=longest,list
set wildmenu
set splitright
set splitbelow
syntax enable

au BufNewFile,BufRead *.json5 setlocal ft=json5
au BufNewFile,BufRead *.elm setlocal ft=elm
" this shouldn't be necessary, but...?
au BufNewFile,BufRead *.hbs setlocal syntax=mustache
au BufNewFile,BufRead *.handlebars setlocal syntax=mustache
au BufNewFile,BufRead *.ts setlocal ft=typescript
au BufNewFile,BufRead *.tsx setlocal ft=typescript

" github seems to be happier with non-wrapping text....
au FileType gitcommit setlocal tw=0

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
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
Plugin 'tpope/vim-surround.git'
Plugin 'elmcast/elm-vim'
Plugin 'jparise/vim-graphql'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'habamax/vim-asciidoctor'

" All of your Plugins must be added before the following line
call vundle#end()            " required

set t_Co=256
set t_ut=
set background=dark
colorscheme codedark
let g:airline_theme = 'codedark'
let g:javascript_plugin_flow = 1
set backspace=indent,eol,start

filetype plugin indent on
