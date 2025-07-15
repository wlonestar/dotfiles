" Basic settings
set termguicolors
set cursorline
set updatetime=200
set encoding=utf-8
set backspace=indent,eol,start
set completeopt=menuone,noselect
set history=1000
set startofline

" Mapping waiting time
set notimeout
set ttimeout
set ttimeoutlen=100

" Display
set scrolloff=3
set showmatch
set synmaxcol=300
set laststatus=3
set wrap!
set noeol
set showbreak=↪

" Sidebar
set number
set relativenumber
set numberwidth=3
set signcolumn=yes
set modelines=0
set showcmd

" Search
set incsearch
set ignorecase
set smartcase
set matchtime=2
set matchpairs+=<:>

" Indentation and white characters
set autoindent
set smartindent
set breakindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set formatoptions=qnj1
set expandtab
set smarttab

" Backup files
set nobackup
set nowritebackup
set noswapfile

" Command-line completion
set wildmenu
set wildignore=deps,.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,.DS_Store,*.aux,*.out,*.toc

" Only show cursorline in the current window and in normal mode
" Uncomment below to enable
"
" augroup cline
"   autocmd!
"   autocmd WinLeave * set nocursorline
"   autocmd WinEnter * set cursorline
"   autocmd InsertEnter * set nocursorline
"   autocmd InsertLeave * set cursorline
" augroup END

" Misc
set noerrorbells
set t_Co=256
filetype plugin indent on
nohlsearch
syntax enable
syntax on

