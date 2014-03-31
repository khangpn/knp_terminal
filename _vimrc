" Call Pathogen to load everything
call pathogen#infect()

" Toggle on/off copy mode
function! ToggleCopy()
  if (&number)
    set nonumber
  else
    set number
  endif
endfunction

syntax manual
" Toggle on/off colors
function! ToggleColor()
  if (&syntax == "OFF")
    set syntax=ON
  else
    set syntax=OFF
  endif
endfunction

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

" Search for files
let g:ctrlp_map = '<leader>f'
nnoremap <leader>n :NERDTreeFind<cr>

" Ctrl-jklm changes to that split
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h

" For easy copying
nnoremap <leader>c :call ToggleCopy()<cr>

" Quick paste toggle
nnoremap <leader>p :set paste!<cr>

" Automatically disable paste mode
au InsertLeave * set nopaste

" Remap jj to escape in insert mode.
inoremap jj <esc>

" For plain-text reading
nnoremap <leader>l :call ToggleColor()<cr>
