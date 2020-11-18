
" main setting {{{

" color scheme && termgui colors
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
colorscheme gruvbox


set cursorline!
set lazyredraw
set synmaxcol=128
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
set noshowmode

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
"set backup

" Save undo tree.
"set undofile

" Do not back up temporary files.
set backupskip=/tmp/*,/private/tmp/*"

" Store backup files in one place.
set backupdir^=$HOME/.config/nvim//storage/backups//

" Store swap files in one place.
set dir^=$HOME/.config/nvim//storage/swaps//

" Store undo files in one place.
set undodir^=$HOME/.config/nvim/storage/undos//

" line wrapping
set wrap

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=4000

" Don't pass messages to |ins-completion-menu.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  se signcolumn=yes
endif

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
 " augroup numbertoggle
 "  autocmd!
 "  autocmd BufEn,FocusGained,InsertLeave * set relativenumber
 "  autocmd BufLe,FocusLost,InsertEnter   * set norelativenumber

 " augroup END

" disable vim backup
set nobackup
set nowritebackup
set noswapfile

" }}} end of main setting




