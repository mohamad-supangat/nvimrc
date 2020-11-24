if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
call plug#begin('~/.local/share/nvim/plugged')
  Plug 'kyazdani42/nvim-web-devicons' " neovim web dev icon
  Plug 'akinsho/nvim-bufferline.lua' " bufferline for nvim 
  Plug 'itchyny/lightline.vim' " statusline

  Plug 'christoomey/vim-tmux-navigator' " tmux navigation integration
  Plug 'gruvbox-community/gruvbox' " gruvbox color scheme
  Plug 'tjdevries/colorbuddy.nvim' " color scheme maker
  " Plug 'cohama/lexima.vim' " auto pair brackes, braces, ete 
  Plug 'alvan/vim-closetag' " auto html tag close

  Plug 'rhysd/accelerated-jk' "navigate faster with jk
  Plug 'Yggdroot/indentLine' " show indentline
  Plug 'tpope/vim-commentary' " auto commennt 
  Plug 'kdheepak/lazygit.nvim' " lazy git nvim 
  Plug 'norcalli/nvim-colorizer.lua' " show color of code
  " Plug 'junegunn/rainbow_parentheses.vim' " show rainbow color in bracket
  Plug 'luochen1990/rainbow'
  

  Plug 'ChristianChiarulli/far.vim' " find && replace in vim
  
  Plug 'junegunn/fzf', { 'build': './install --all', 'merged': 0 } " gui preview
  Plug 'junegunn/fzf.vim', { 'depends': 'fzf'}
  Plug 'neoclide/coc.nvim', {'branch': 'release'} " language server

  Plug 'honza/vim-snippets' " snippets helpers for coc
  Plug 'antoinemadec/coc-fzf' " coc tui with fzf 
 
  " " auto complete && language server
  " " Plug 'neovim/nvim-lspconfig')
  " " Plug 'hrsh7th/vim-vsnip')
  " " Plug 'hrsh7th/vim-vsnip-integ')
  " " Plug 'nvim-lua/completion-nvim')
  
  " Plug 'chiel92/vim-autoformat' " best auto format for code formating tols 
  Plug 'dense-analysis/ale' " linter && auto fixer
  Plug 'mhinz/vim-startify' " start page for vim 

  Plug 'voldikss/vim-floaterm' " floating terminal
  Plug 'rbgrouleff/bclose.vim' " closing buffer wisdthout pane

  " " Plug 'roxma/nvim-yarp')
  " " Plug 'roxma/vim-hug-neovim-rpc')
  Plug 'nvim-treesitter/nvim-treesitter' " language 
  " Plug 'leafOfTree/vim-vue-plugin' " vue integration
  
  " language && syntax hightlight {{{
  Plug 'storyn26383/vim-vue' " vue file type plugin
  Plug 'pangloss/vim-javascript' " javascript integration
  Plug 'cakebaker/scss-syntax.vim' " scss
  Plug 'hail2u/vim-css3-syntax' " css 
  Plug 'neoclide/coc-vetur' " vue language server from coc
  Plug 'dart-lang/dart-vim-plugin' " dart syntax highlighting
  " }}}
 
  Plug 'tmux-plugins/vim-tmux' " tmux config syntax hightlight
  Plug 'edkolev/tmuxline.vim'

call plug#end()
 
