" Specify a directory for plugins

" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'arzg/vim-colors-xcode'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'ervandew/supertab'
Plug 'qpkorr/vim-bufkill'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'


" Initialize plugin system
call plug#end()

" -------------- Various Settings --------------
let  mapleader = ','

" color scheme settings
set termguicolors
set encoding=UTF-8
colorscheme xcodedarkhc

" Color scheme
syntax enable

" Disables vim backup and swap file
set nobackup
set noswapfile

" Reloads file if it's modified by another source
set autoread

" Clipboard that makes sense
set clipboard+=unnamedplus

" Shows line numbers
set number
set relativenumber

" Number of spaces used when tab is read from a file
set tabstop=2

" Number of spaces used when tab is pressed
set softtabstop=2

" Expands tab to spaces
set expandtab

" Number of spaces to use for autoindent
set shiftwidth=2

" Copies indent from the previous line
set autoindent
set copyindent

" Draws an horizontal line on current line
set cursorline

" Highlights matching parens
set showmatch

" Highlights matching searched chars
set hlsearch

" Enables mouse selection
set mouse=a

" Closes autocomplete preview window when done
autocmd CompleteDone * silent! pclose!

" Git gutter settings
set signcolumn=yes

" -------------- Key Mappings --------------
" Opens nerdtree with ctrl+n
map <C-n> :NERDTreeToggle<CR>

" Quick save and close
nmap <leader>w :w<CR>
nmap <leader>x :x<CR>
nmap <leader>q :q<CR>

autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript

let g:airline_powerline_fonts = 1

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['tsserver', 'tslint'],
\   'vue': ['eslint']
\}

let g:ale_fixers = {
\    'javascript': ['eslint'],
\    'typescript': ['prettier'],
\    'vue': ['eslint'],
\    'scss': ['prettier'],
\    'html': ['prettier']
\}
let g:ale_fix_on_save = 1
