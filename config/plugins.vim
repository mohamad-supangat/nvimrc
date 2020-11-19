if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
call plug#begin('~/.local/share/nvim/plugged')
  Plug 'kyazdani42/nvim-web-devicons' " neovim web dev icon
  Plug 'akinsho/nvim-bufferline.lua' " bufferline for nvim 

  Plug 'christoomey/vim-tmux-navigator' " tmux navigation integration
  Plug 'gruvbox-community/gruvbox' " gruvbox color scheme
  Plug 'tjdevries/colorbuddy.nvim' " color scheme maker
  Plug 'cohama/lexima.vim' " auto pair brackes, braces, ete 
  Plug 'rhysd/accelerated-jk' "navigate faster with jk
  Plug 'Yggdroot/indentLine' " show indentline
  Plug 'tpope/vim-commentary' " auto commennt 
  Plug 'kdheepak/lazygit.nvim' " lazy git nvim 
  Plug 'norcalli/nvim-colorizer.lua' " show color of code
  Plug 'junegunn/rainbow_parentheses.vim' " show rainbow color in bracket
  Plug 'ChristianChiarulli/far.vim' " find && replace in vim
  
  Plug 'junegunn/fzf', { 'build': './install --all', 'merged': 0 } " gui preview
  Plug 'junegunn/fzf.vim', { 'depends': 'fzf'}
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  Plug 'honza/vim-snippets'
  Plug 'antoinemadec/coc-fzf'
 
  " " auto complete && language server
  " " Plug 'neovim/nvim-lspconfig')
  " " Plug 'hrsh7th/vim-vsnip')
  " " Plug 'hrsh7th/vim-vsnip-integ')
  " " Plug 'nvim-lua/completion-nvim')
  
  Plug 'mhinz/vim-startify' " start page for vim 

  Plug 'voldikss/vim-floaterm' " floating terminal
  Plug 'rbgrouleff/bclose.vim' " closing buffer without pane

  " " Plug 'roxma/nvim-yarp')
  " " Plug 'roxma/vim-hug-neovim-rpc')
  Plug 'nvim-treesitter/nvim-treesitter' " language 
  " Plug 'leafOfTree/vim-vue-plugin' " vue integration
  
  " vue 
  Plug 'storyn26383/vim-vue'
  Plug 'pangloss/vim-javascript'
  Plug 'cakebaker/scss-syntax.vim'
  Plug 'hail2u/vim-css3-syntax'
  Plug 'neoclide/coc-vetur'


  Plug 'tmux-plugins/vim-tmux' " tmux config syntax hightlight
call plug#end()
 
