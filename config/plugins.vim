if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
call plug#begin('~/.local/share/nvim/plugged')
  Plug 'neovim/nvim-lspconfig'
  Plug 'glepnir/lspsaga.nvim'
  " Plug 'stevearc/aerial.nvim'
  
  Plug 'hrsh7th/nvim-compe'
  Plug 'hrsh7th/vim-vsnip'
  
  Plug 'karb94/neoscroll.nvim'

  Plug 'folke/lsp-trouble.nvim'

  Plug 'mattn/emmet-vim'
  " Plug 'lukas-reineke/format.nvim'
  Plug 'sbdchd/neoformat'

  Plug 'kyazdani42/nvim-web-devicons' " neovim web dev icon
 
  Plug 'christoomey/vim-tmux-navigator' " tmux navigation integration

  Plug 'akinsho/nvim-bufferline.lua'
  " Plug 'datwaft/bubbly.nvim'
  Plug 'hoob3rt/lualine.nvim'


  " Plug 'folke/tokyonight.nvim'

  " Plug 'rktjmp/lush.nvim'
  " Plug 'mnabila/gruvboy.nvim'
  Plug 'Mofiqul/vscode.nvim'

  Plug 'rhysd/accelerated-jk' "navigate faster with jk
  Plug 'lukas-reineke/indent-blankline.nvim', {'branch': 'lua'} " indentLine
 
  Plug 'terrortylor/nvim-comment'
  Plug 'editorconfig/editorconfig-vim' " editorconfig for vim

  Plug 'junegunn/fzf', { 'build': './install --all', 'merged': 0 } " gui preview
  Plug 'junegunn/fzf.vim', { 'depends': 'fzf'}
  
  Plug 'mhinz/vim-startify' " start page for vim 

  Plug 'voldikss/vim-floaterm' " floating terminal
  Plug 'rbgrouleff/bclose.vim' " closing buffer wisdthout pane


  Plug 'AndrewRadev/tagalong.vim' " tag helper
  Plug 'alvan/vim-closetag' " auto close html tag
  
  Plug 'windwp/nvim-autopairs'
  
  
  " treesitter dan module tambahan
  Plug 'sheerun/vim-polyglot'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
  " Plug 'windwp/nvim-ts-autotag' "auto close tag
  Plug 'p00f/nvim-ts-rainbow' " rainbow
  
  " Plug 'theHamsta/nvim-treesitter-pairs'
  " Plug 'JoosepAlviste/nvim-ts-context-commentstring'
  

  Plug 'leafOfTree/vim-vue-plugin' " best vue integration

  Plug 'kyazdani42/nvim-tree.lua'
  Plug 'tweekmonster/startuptime.vim'


  Plug 'nvim-lua/plenary.nvim'
  Plug 'lewis6991/gitsigns.nvim'
call plug#end()
 
