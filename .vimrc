" vim is not vi
set nocompatible

" enable file typing
filetype on

" give me nice-looking color
syntax enable
syntax on
set background=dark
colorscheme solarized

" search options
set incsearch
set hlsearch
set magic
set showmatch

" ah, intelligent cased searching is good
set ignorecase
set smartcase

" tell me where am i
set cursorline

" tell me what i'm typing
set showcmd

" no more ding-ding
set visualbell

" c rules
set cindent shiftwidth=2

" no more <TAB>
set expandtab
set ts=2
set sw=2

" clicky
set mouse=a

" no more crap
set nobackup
set nowritebackup
set noswapfile

" set title bar
set title

" better-looking search highlights
hi Search ctermfg=0 ctermbg=3
hi statusline ctermfg=1 ctermbg=0

" one less key
set winminheight=0
map <c-j> <c-w>j<c-w>_
map <c-k> <c-w>k<c-w>_
map <c-h> <c-w>h
map <c-l> <c-w>l

" bring me back to where i was
if has("autocmd")
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
\| exe "normal g'\"" | endif
endif

" hightlight over-length lines
highlight OverLength ctermbg=red ctermfg=white
match OverLength /\%76v.\+/
