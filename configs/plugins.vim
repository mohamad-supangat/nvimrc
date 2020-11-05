
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

" web icon with color
Plug 'kyazdani42/nvim-web-devicons'

" lua nvim config
Plug 'neovim/nvim-lspconfig'

" buffer line for tab written with lua
Plug 'akinsho/nvim-bufferline.lua'

" Status line writen by lua
Plug 'glepnir/galaxyline.nvim'

" Airline && airline theme {{{
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" }}}

" tree explorer
Plug 'kyazdani42/nvim-tree.lua'

" language syntax hightlight pack
Plug 'sheerun/vim-polyglot'

" Git wrapper
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" Plug 'tpope/vim-rhubarb'

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
" Plug 'Yggdroot/indentLine'

" samakan keybinding vim dengan tmux agar mudah berpindah
Plug 'christoomey/vim-tmux-navigator'

" Tagbar
" Plug 'liuchengxu/vista.vim'


" Emoji support
" Plug 'junegunn/vim-emoji'

" color scheme collection {{{
Plug 'lifepillar/vim-gruvbox8'
" }}}

" Markdown Preview
" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

" vim-hexcolor
Plug 'norcalli/nvim-colorizer.lua'

" Easymodion
" Plug 'easymotion/vim-easymotion'

" ctrlsf search  in all file in folder
" Plug 'brooth/far.vim'

" linting && fixer
" Plug 'dense-analysis/ale'

" auto formater
" Plug 'chiel92/vim-autoformat'

" fuzy file search && COC
Plug 'junegunn/fzf', {'dir': '~/.fzf','do': './install --all'}
Plug 'junegunn/fzf.vim' " needed for previews
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'antoinemadec/coc-fzf'


" code completetion / language server
" Plug 'neovim/nvim-lsp'
" Plug 'Shougo/deoplete.nvim'
" Plug 'Shougo/deoplete-lsp'

" script runnner
" Plug 'aben20807/vim-runner'
" simple todo 
" Plug 'aserebryakov/vim-todo-lists'

call plug#end()
