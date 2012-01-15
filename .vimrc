" vim is better than vi
set nocompatible

" Turn off backup
set nobackup
set nowritebackup
set noswapfile

" But save my modified file if the session is suspended
set autowrite

" set title bar
set title


" Display options

" Set up colors
syntax enable
syntax on
let g:solarized_termcolors=16
set background=dark
colorscheme solarized

" Show the matching bracket
set showmatch

" Show me where I am
set cursorline

" Show me what I am doing
set showcmd

" Use visual bell instead of beeping
set visualbell

" More room on both ends
set scrolloff=3

" Status line
set ls=2
set statusline=%F%h%m%r%=ch:0x%B\ \ %l,%c%V\ %P

" Highlight over long lines
highlight OverLength ctermbg=red ctermfg=white
match OverLength /\%76v.\+/


" Search options

" Incremental search
set incsearch

" Highlight search results
set hlsearch

" Enable magic character set
set magic

" Intelligent case searching
set ignorecase
set smartcase

" Set highlight colors
hi Search ctermfg=0 ctermbg=3
hi statusline ctermfg=1 ctermbg=0


" Splitting options

" Do horizontal split in vimdiff
" set diffopt=horizontal

" No resizing after splitting or closing windows
set noequalalways

" Stack up windows
set winminheight=0

" Move faster between windows
map <c-j> <c-w>j<c-w>_
map <c-k> <c-w>k<c-w>_
map <c-h> <c-w>h
map <c-l> <c-w>l


" Formatting options

" Use space rather tab
set expandtab

" Tabs are 2 characters
set tabstop=2

" (Auto)indent uses 2 characters
set shiftwidth=2


" (Auto)functions

" Bring me back to where I was
if has("autocmd")
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
\| exe "normal g'\"" | endif
endif


" rfc822 conformable date
iab rfcdate <C-R>=strftime("%a, %d %b %Y %H:%M:%S %z")<CR>


" File type specific options

" Enable file typing
filetype indent on

au FileType c set cindent shiftwidth=2
au FileType cpp set cindent shiftwidth=2
au FileType gitcommit set tw=75 spell
au FileType mail set tw=75 spell
au FileType make set sw=8 ts=8 noet
au FileType tex set spell
au FileType scheme set lisp autoindent

" vim: ft=vim
