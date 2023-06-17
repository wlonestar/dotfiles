HOME = os.getenv("HOME")

vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.updatetime = 200

-- Basic settings
vim.opt.encoding = "utf-8"
vim.opt.backspace = "indent,eol,start"
vim.opt.completeopt = "menuone,noselect"
vim.opt.history = 1000
vim.opt.startofline = true

-- Mapping waiting time
vim.opt.timeout = false
vim.opt.ttimeout = true
vim.opt.ttimeoutlen = 100

-- Display
vim.opt.scrolloff = 3
vim.opt.showmatch = true
vim.opt.synmaxcol = 300
vim.opt.laststatus = 3

-- vim.opt.list = false -- do not display white characters
-- vim.opt.foldenable = false
-- vim.opt.foldlevel = 4 -- limit folding to 4 levels
-- vim.opt.foldmethod = "syntax" -- use language syntax to generate folds
vim.opt.wrap = false
vim.opt.eol = false
vim.opt.showbreak = "↪"

-- Sidebar
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 3
vim.opt.signcolumn = "yes"
vim.opt.modelines = 0
vim.opt.showcmd = true

-- Search
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.matchtime = 2
vim.opt.mps = vim.o.mps .. ",<:>"

-- White characters
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.breakindent = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.formatoptions = "qnj1" -- q  - comment formatting; n - numbered lists; j - remove comment when joining lines; 1 - don't break after one-letter word
vim.opt.expandtab = true
vim.opt.smarttab = true

-- Backup files
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false -- do not use swap file

-- Commands mode
vim.opt.wildmenu = true -- on TAB, complete options for system command
vim.opt.wildignore =
	"deps,.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,.DS_Store,*.aux,*.out,*.toc"

-- Only show cursorline in the current window and in normal mode.
-- vim.cmd([[
--   augroup cline
--       au!
--       au WinLeave * set nocursorline
--       au WinEnter * set cursorline
--       au InsertEnter * set nocursorline
--       au InsertLeave * set cursorline
--   augroup END
-- ]])

vim.cmd([[
    set noeb
    set t_Co=256
    filetype    plugin indent on
    exec        "nohlsearch"
    syntax      enable
    syntax      on
]])
