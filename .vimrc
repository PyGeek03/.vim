" enable pathogen
execute pathogen#infect()

set nocompatible          " get rid of Vi compatibility mode. SET FIRST!
filetype plugin indent on " filetype detection[ON] plugin[ON] indent[ON]
set t_Co=256              " enable 256-color mode.
syntax enable             " enable syntax highlighting (previously syntax on).
colorscheme slate         " set colorscheme
set background=dark

" Turn on the Wild menu
set wildmenu
set wildmode=list:longest,full

" undo files
set undofile
set undolevels=1000
set undoreload=10000
set undodir=/tmp/.vim/undo//

autocmd BufWritePre * :%s/\s\+$//e  " Every time the user issue a :w command, Vim will automatically remove all trailing whitespace before saving
set mouse=a                         " Enable full mouse support in the console
set autoread                        " set to auto read when a file is changed from the outside
set number                          " show line numbers
set laststatus=2                    " last window always has a statusline
filetype indent on                  " activates indenting for files
filetype plugin indent on
set nohlsearch                      " Don't continue to highlight searched phrases.
set incsearch                       " But do highlight as you type your search.
set ignorecase                      " Make searches case-insensitive.
set ruler                           " Always show info along bottom.
set autoindent                      " auto-indent
set tabstop=4                       " tab spacing
set softtabstop=4                   " unify
set shiftwidth=4                    " indent/outdent by 4 columns
set shiftround                      " always indent/outdent to the nearest tabstop
set expandtab                       " use spaces instead of tabs
set smarttab                        " use tabs at the start of a line, spaces elsewhere
set nowrap                          " don't wrap text
set backspace=indent,eol,start
set complete-=i
set nrformats-=octal
set history=1000
set tabpagemax=50
set sessionoptions-=options
set display+=lastline
set updatetime=250

if !&scrolloff
    set scrolloff=1
endif
if !&sidescrolloff
    set sidescrolloff=5
endif

if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
    runtime! macros/matchit.vim
endif


" toggle undo-tree panel
nnoremap <F5> :UndotreeToggle<cr>
