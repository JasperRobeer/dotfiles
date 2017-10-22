set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'chrisbra/unicode.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Sets how many lines of history VIM has to remember
set history=500

" Set to auto read when a file is changed from the outside
set autoread

" Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Enable syntax highlighting
syntax enable
"set t_Co=256
"let g:solarized_termtrans=1
colorscheme solarized
set background=dark

" Enable line numbers
set relativenumber
set number

" Highlight the current line
set cursorline

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Show column rulers
set colorcolumn=80,120

" Always show the status line
set laststatus=2

" vim-airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'solarized'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space      = "\ua0"
let g:airline_symbols.crypt      = ""
let g:airline_symbols.linenr     = ""
let g:airline_symbols.columnr    = ""
let g:airline_symbols.whitespace = ""

" NERD Tree
map <F2> :NERDTreeToggle<CR>

" jj => ESC
imap jj <ESC>

" Ctrl-P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPLastMode'
let g:ctrlp_extensions = ['line']
