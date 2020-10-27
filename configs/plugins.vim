
"#####################################################################################################
"                           ____     __                     _                 
"                          / __ \   / /  __  __   ____ _   (_)   ____    _____
"                         / /_/ /  / /  / / / /  / __ `/  / /   / __ \  / ___/
"                        / ____/  / /  / /_/ /  / /_/ /  / /   / / / / (__  ) 
"                       /_/      /_/   \__,_/   \__, /  /_/   /_/ /_/ /____/  
"                                              /____/
"######################################################################################################

" Install vim-plugged if not already installed
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set nocompatible

call plug#begin('~/.config/nvim/plugged')
Plug 'mhinz/vim-signify'

" Git wrapper
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-rhubarb'

" Nerd Commenter
Plug 'scrooloose/nerdcommenter'

" Snippets for ultisnips
Plug 'honza/vim-snippets'

" Vim Surround
Plug 'tpope/vim-surround'

" Auto pairs
Plug 'jiangmiao/auto-pairs'

" Multiple Cursors
Plug 'terryma/vim-multiple-cursors'

"" Indent guides
Plug 'Yggdroot/indentLine'
" indent line


" samakan keybinding vim dengan tmux agar mudah berpindah
Plug 'christoomey/vim-tmux-navigator'

" Custom start page
Plug 'mhinz/vim-startify'
" Plug 'glepnir/dashboard-nvim'

" status line
" Plug 'itchyny/lightline.vim'
" Plug 'mengelbrecht/lightline-bufferline' " line bufferline
" Plug 'https://github.com/adelarsq/neoline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Tabular auto-align
Plug 'godlygeek/tabular'

Plug 'terryma/vim-smooth-scroll'

" Tagbar

Plug 'liuchengxu/vista.vim'


" Emoji support
Plug 'junegunn/vim-emoji'

" color scheme collection {{{
" Plug 'rafi/awesome-vim-colorschemes'
Plug 'lifepillar/vim-gruvbox8'
Plug 'ayu-theme/ayu-vim' 
Plug 'ajmwagar/vim-deus'
" }}}

" Translator
 Plug 'voldikss/vim-translator'

" Markdown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

" vim-hexcolor
" Plug 'etdev/vim-hexcolor'
Plug 'chrisbra/colorizer'

" Easymodion
Plug 'easymotion/vim-easymotion'

" ctrlsf search  in all file in folder
Plug 'brooth/far.vim'

" linting && fixer
Plug 'dense-analysis/ale'

" auto formater
Plug 'chiel92/vim-autoformat'

" fuzy file search && COC
Plug 'junegunn/fzf', {'dir': '~/.fzf','do': './install --all'}
Plug 'junegunn/fzf.vim' " needed for previews
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'antoinemadec/coc-fzf'

Plug 'sheerun/vim-polyglot' " language server pack

" script runnner
Plug 'aben20807/vim-runner'
" simple todo 
Plug 'aserebryakov/vim-todo-lists'

" icons
Plug 'ryanoasis/vim-devicons'
call plug#end()
