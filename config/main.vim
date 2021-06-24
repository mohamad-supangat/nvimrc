
" main setting {{{

" color scheme && termgui colors
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

let g:vscode_style = "dark"
colorscheme vscode

if !has('nvim')
  let &t_ZH="\e[3m"
  let &t_ZR="\e[23m"
endif

set cursorline!
set lazyredraw
set synmaxcol=9999
syntax sync minlines=256

" Longer leader key timeout
" set timeout timeoutlen=1500

" Enable spell-checking for certain files
autocmd FileType text,markdown setlocal spell

" Limit line length for text files
autocmd FileType text,markdown,tex setlocal textwidth=180

" Don't automatically collapse markdown and Latex
set conceallevel=0
let g:tex_conceal = ""

" Don't display mode in command line (airline already shows it)
" set noshowmode

" Automatically re-read file if a change was detected outside of vim
set autoread

" no case-sensitive search unless uppercase is present
set ignorecase
set smartcase

" Enable mouse scroll
set mouse=a

set lazyredraw            " improve scrolling performance when navigating through large results
set regexpengine=1        " use old regexp engine

" Allow a new buf to be opened without saving current
set hidden

" Statusline Config
set statusline+=%F
set cmdheight=1

" Tab Settings
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set autoindent
set smartindent
set shiftround

" Enable syntax highlighting
syntax on

" Print syntax highlighting.
set printoptions+=syntax:y

" Matching braces/tags
set showmatch

" Keep a backup file.
" set backup

" Save undo tree.
" set undofile

" Do not back up temporary files.
set backupskip=/tmp/*,/private/tmp/*"

" Store backup files in one place.
set backupdir^=$HOME/.config/nvim/storage/backups/

" Store swap files in one place.
set dir^=$HOME/.config/nvim/storage/swaps/

" Store undo files in one place.
set undodir^=$HOME/.config/nvim/storage/undos/

" line wrapping
set wrap

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
set signcolumn=yes

" Turns on detection for fyletypes, indentation files and plugin files
filetype plugin indent on

" Split window appears right the current one.
set splitright

" Make sure compatible mode is disabled
set nocompatible

" Share yank buff with system clipboard
set clipboard=unnamedplus

" Show next 3 lines while scrolling.
if !&scrolloff
    set scrolloff=3
endif

" Show next 5 columns whilet| side-scrolling.
if !&sidescrolloff
    set sidescrolloff=5
endif

" Jump to the last known position when reopening a file.

" Relative line numbers
set number
set relativenumber

" augroup numbertoggle
"   autocmd!
"   autocmd bufen,focusgained,insertleave * set relativenumber
"   autocmd bufle,focuslost,insertenter   * set norelativenumber
" augroup end

" disable vim backup
" set nobackup
" set nowritebackup
" set noswapfile

" }}} end of main setting
" set showtabline=2



