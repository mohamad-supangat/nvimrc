
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

" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" fuzy file search
Plug 'christoomey/vim-tmux-navigator'

" Custom start page
Plug 'mhinz/vim-startify'

" status line
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline' " line bufferline

" Tabular auto-align
Plug 'godlygeek/tabular'

Plug 'terryma/vim-smooth-scroll'


" Add DevIcons
Plug 'ryanoasis/vim-devicons'
" Tagbar
" Plug 'liuchengxu/vista.vim'


" Emoji support
Plug 'junegunn/vim-emoji'

Plug 'lifepillar/vim-gruvbox8'

" Translator
 Plug 'voldikss/vim-translator'

" Markdown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

" vim-hexcolor
Plug 'etdev/vim-hexcolor'

" Easymodion
Plug 'easymotion/vim-easymotion'

" ctrlsf search  in all file in folder
Plug 'brooth/far.vim'

" linting && fixer
Plug 'dense-analysis/ale'

" auto formater
Plug 'chiel92/vim-autoformat'

" fuzy file search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'sheerun/vim-polyglot' " language server pack 

" html / templates{{{
Plug 'mattn/emmet-vim', { 'for': ['html', 'php', 'gohtmltmpl', 'vue', 'markdown'] } " emmet support for vim - easily create markdup wth CSS-like syntax
Plug 'gregsexton/MatchTag', { 'for': ['html', 'php', 'gohtmltmpl', 'vue'] } " match tags in html, similar to paren support
Plug 'othree/html5.vim', { 'for': ['html', 'php', 'gohtmltmpl', 'vue'] } " html5 support
" Plug 'lumiliet/vim-twig', { 'for': ['html'] } " twig syntax support
Plug 'Glench/Vim-Jinja2-Syntax', { 'for': ['html'] }
"}}}

" JavaScript{{{

Plug 'pangloss/vim-javascript'
Plug 'gavocanov/vim-js-indent', { 'for': [ 'javascript' ]} " JavaScript indent support
Plug 'heavenshell/vim-jsdoc', { 'for': [ 'javascript', 'vue' ]} " Generate JSDoc comments
Plug 'posva/vim-vue', { 'for': [ 'javascript', 'html', 'vue' ] } " vue.js integration
"}}}

" PHP{{{
Plug 'captbaritone/better-indent-support-for-php-with-html', { 'for': 'php' }
" Plug 'lumiliet/vim-twig', { 'for': [ 'php', 'html' ] } " Twig templates
Plug 'Rican7/php-doc-modded', { 'for': 'php' } " Automatic phpdoc comments
"}}}

" script runnner
Plug 'aben20807/vim-runner'
" simple todo 
Plug 'aserebryakov/vim-todo-lists'
call plug#end()
