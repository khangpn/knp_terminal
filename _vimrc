" Call Pathogen to load everything
call pathogen#infect()

" Unicode
set fileencodings=utf8

" Some systems don't turn on syntax by default
syntax on

"" Typing options

" Convert tab to spaces
:set tabstop=2 "the number of space characters that will be inserted when TAB is pressed
:set shiftwidth=2 "the number of space characters inserted for indentaion when use << or >>.
:set expandtab "insert space characters whenever the TAB key is pressed
" Indentation
:set autoindent
:set smartindent
:set preserveindent

"" Display options

" Transparent background too
autocmd ColorScheme * highlight Normal ctermbg=None "make used lines transparent
autocmd ColorScheme * highlight NonText ctermbg=None "make remaining lines transparent
" Set vim using as many colors as possible! Without this this will raise 'err: please use GUI or a 256-color terminal (so that t_Co=256 could be set)'
set t_Co=256
" Set color scheme
colorscheme xoria256 "Color scheme should be put under ~/.vim/bundle/xoria256/colors/xoria256.vim
" Show the row number
:set number 
" Show title
set title
" Have a line indicate the cursor location
set cursorline

"folding settings
"set foldmethod=indent "fold based on indent
"set foldnestmax=3 "deepest fold is 3 levels
"set nofoldenable "dont fold by default

"" Search options

" Highlight search results
set hlsearch
" Case-insensitive for searching lower-case word
set ignorecase
" Case-sensitive for searching upper-case word
set smartcase
" Search as typing
set incsearch
