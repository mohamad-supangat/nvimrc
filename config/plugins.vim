if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
call plug#begin('~/.local/share/nvim/plugged')

  Plug 'kyazdani42/nvim-web-devicons' " neovim web dev icon
 
  Plug 'christoomey/vim-tmux-navigator' " tmux navigation integration
    

 " Plug 'itchyny/vim-cursorword'
 
  Plug 'akinsho/nvim-bufferline.lua'
  Plug 'datwaft/bubbly.nvim'

  Plug 'folke/tokyonight.nvim'
  

  Plug 'rhysd/accelerated-jk' "navigate faster with jk
  Plug 'lukas-reineke/indent-blankline.nvim' " indentLine
 
  Plug 'tpope/vim-commentary' " auto commennt 
  Plug 'editorconfig/editorconfig-vim' " editorconfig for vim

  Plug 'junegunn/fzf', { 'build': './install --all', 'merged': 0 } " gui preview
  Plug 'junegunn/fzf.vim', { 'depends': 'fzf'}
  Plug 'neoclide/coc.nvim', {'branch': 'release'} " language server

  Plug 'honza/vim-snippets' " snippets helpers for coc
  Plug 'antoinemadec/coc-fzf' " coc tui with fzf 
 
  Plug 'mhinz/vim-startify' " start page for vim 

  Plug 'voldikss/vim-floaterm' " floating terminal
  Plug 'rbgrouleff/bclose.vim' " closing buffer wisdthout pane

  
  
  " treesitter dan module tambahan
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
  Plug 'windwp/nvim-ts-autotag' "auto close tag
  Plug 'p00f/nvim-ts-rainbow' " rainbow
  Plug 'theHamsta/nvim-treesitter-pairs'
  Plug 'JoosepAlviste/nvim-ts-context-commentstring'

  Plug 'tweekmonster/startuptime.vim'

  " Plug 'neoclide/coc-vetur' " vue language server from coc
call plug#end()
 
