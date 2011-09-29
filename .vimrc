" vim is not vi
set nocompatible

" give me nice-looking color
syntax enable
syntax on
let g:solarized_termcolors=16
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

" indenting options

" no more <TAB>
set expandtab
set ts=2
set sw=2

" no more crap
set nobackup
set nowritebackup
set noswapfile

" but save my modified file if the session is suspended
set autowrite

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

" fun insertos section
" rfc822 conformant date
iab rfcdate <C-R>=strftime("%a, %d %b %Y %H:%M:%S %z")<CR>

" enable file typing
filetype indent on

au FileType c set cindent shiftwidth=2
au FileType cpp set cindent shiftwidth=2
au FileType gitcommit set tw=75
au FileType mail set tw=75
au FileType make set sw=8 ts=8 noet
