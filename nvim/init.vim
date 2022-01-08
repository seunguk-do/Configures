call plug#begin(stdpath('data')."/plugged")

Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/NERDTree'
Plug 'jiangmiao/auto-pairs'
Plug 'joshdick/onedark.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'Yggdroot/indentLine'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'dense-analysis/ale'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-syntastic/syntastic'

call plug#end()

" closetag applying file extenstions
let g:closetag_filenames = '*.html, *.js'

" set leader key
let g:mapleader = "\<Space>"
nmap <leader>t :NERDTreeToggle<CR>

syntax enable
set encoding=utf-8
set ruler
set number
set expandtab           " enter spaces when tab is pressed
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4       
set shiftwidth=4        " number of spaces to use for auto indent
set smartindent
set autoindent
set smarttab
set cindent
set textwidth=120
set iskeyword+=-
set mouse=
set cursorline 

filetype plugin indent on

" Setting for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers=['pylint', 'flake8']
let g:syntastic_javascript_checkers=['eslint']

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <leader>e :SyntasticCheck<CR>
nnoremap <leader>E :SyntasticToggleMode<CR>

" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

colorscheme onedark
