
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
    !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set nocompatible

call plug#begin('~/.config/nvim/plugged')

" web icon with color
Plug 'kyazdani42/nvim-web-devicons'

" buffer line for tab written with lua
Plug 'akinsho/nvim-bufferline.lua'

" Status line
" Plug 'hardcoreplayers/spaceline.vim'
Plug 'bluz71/vim-moonfly-statusline'

" language syntax hightlight pack {{{
Plug 'sheerun/vim-polyglot'
Plug 'dart-lang/dart-vim-plugin' " dart language pugin
" Plug 'posva/vim-vue' " vue syntax hightlight
Plug 'cakebaker/scss-syntax.vim' " scss && sass syntax hightlight
" }}}

" git integration
Plug 'tpope/vim-fugitive'
Plug 'kdheepak/lazygit.nvim'

" commentar plugin nvim 
Plug 'tpope/vim-commentary'

" snippets plugin for coc-snippets
Plug 'honza/vim-snippets'

" Vim Surround
Plug 'tpope/vim-surround'

" Auto pairs
" Plug 'jiangmiao/auto-pairs'

" Multiple Cursors
" Plug 'terryma/vim-multiple-cursors'

"" Indent guides
Plug 'Yggdroot/indentLine'

" samakan keybinding vim dengan tmux agar mudah berpindah
Plug 'christoomey/vim-tmux-navigator'

" neovmux tmux in neovim 
" Plug 'https://github.com/nikvdp/neomux.git'

" Tagbar
Plug 'liuchengxu/vista.vim'


" color scheme collection {{{
Plug 'lifepillar/vim-gruvbox8'
" }}}

" Markdown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" colorizer and rainbow tag
Plug 'norcalli/nvim-colorizer.lua'
Plug 'junegunn/rainbow_parentheses.vim'

" ctrlsf search  in all file in folder
Plug 'ChristianChiarulli/far.vim'


" fuzy file search && COC
Plug 'junegunn/fzf', {'dir': '~/.fzf','do': './install --all'}
Plug 'junegunn/fzf.vim' " needed for previews

Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'antoinemadec/coc-fzf'

" rager intergration
" Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

" neovim floatingTerminal plugin
Plug 'voldikss/vim-floaterm'

" dashoard && session management
Plug 'mhinz/vim-startify'
call plug#end()
