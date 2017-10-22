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

set encoding=utf8                   " Use UTF-8 encoding as default
set history=500                     " Lines of history that vim has to remember
set autoread                        " Read files when they are changed outside of vim
set ruler                           " Always show the current position
set cmdheight=2                     " Height of the command bar
set backspace=eol,start,indent      " Reconfigure backspace
set whichwrap+=<,>,h,l
set ignorecase                      " Ignore cases when searching
set smartcase                       " When searching try to be smart about cases
set hlsearch                        " Highlight search results
set incsearch                       " Makes search act like search in modern browsers
set lazyredraw                      " Don't redraw while executing macros (good performance config)
set magic                           " For regular expressions turn magic on
set showmatch                       " Show matching brackets when text indicator is over them
set mat=2                           " How many tenths of a second to blink when matching brackets
set noerrorbells                    " No annoying sound on errors
set novisualbell
set t_vb=
set tm=500

syntax enable                       " Enable syntax highlighting
colorscheme solarized               " Solarized dark color theme
set background=dark

set relativenumber                  " Line numbers (current line is absolute, the rest is relative)
set number
set cursorline                      " Highlight the current line
set nobackup                        " Do not use backups or swap files, as we work using git
set nowb
set noswapfile

set expandtab                       " Use spaces instead of tabs
set smarttab
set shiftwidth=4                    " 1 tab == 4 spaces
set tabstop=4
set lbr                             " Line break on 500 characters
set tw=500
set ai                              " Auto indent
set si                              " Smart indent
set wrap                            " Wrap lines
set colorcolumn=80,120              " Show column rulers
set laststatus=2                    " Always show the status line


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
