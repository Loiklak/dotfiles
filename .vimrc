""""""""""""""""""""""""""""""""""""
" Line
" """"""""""""""""""""""""""""""""""""
" " show line numbers
set number
"
" """""""""""""""""""""""""""""""""""""
" " Indents
" """""""""""""""""""""""""""""""""""""
" " replace tabs with spaces
" set expandtab
" " 1 tab = 2 spaces
set tabstop=2 shiftwidth=2
"
" " when deleting whitespace at the beginning of a line, delete 
" " 1 tab worth of spaces (for us this is 2 spaces)
set smarttab
"
" " when creating a new line, copy the indentation from the line above
set autoindent
"
" """""""""""""""""""""""""""""""""""""
" " Search
" """""""""""""""""""""""""""""""""""""
" " Ignore case when searching
set ignorecase
set smartcase
"
" " highlight search results (after pressing Enter)
set hlsearch
"
" " highlight all pattern matches WHILE typing the pattern
set incsearch
"
" """""""""""""""""""""""""""""""""""""
" " Mix
" """""""""""""""""""""""""""""""""""""
" " show the mathing brackets
set showmatch
"
" " highlight current line
set cursorline

" ' nicer colorscheme
colorscheme slate

" Show file options above the command line
set wildmenu

" Don't offer to open certain files/directories
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico
set wildignore+=*.pdf,*.psd
set wildignore+=node_modules/*,bower_components/*

" Set the working directory to wherever the open file lives
set autochdir

" Setup fzf within Vim and bind it to Ctrl+P
" GFiles automatically ignores gitignored files, use :FZF to get all files
nmap <C-P> :GFiles<CR>

" VIM-PLUG
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'leafgarland/typescript-vim'
Plug 'gosukiwi/vim-atom-dark'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Commands launched at Vim startup
autocmd VimEnter * color atom-dark-256
