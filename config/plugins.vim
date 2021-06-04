if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
call plug#begin('~/.local/share/nvim/plugged')
  Plug 'KabbAmine/zeavim.vim'

  Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
  Plug 'kyazdani42/nvim-web-devicons' " neovim web dev icon
  Plug 'folke/lsp-colors.nvim'
  Plug 'romgrk/barbar.nvim' " bufferline for nvim

  Plug 'christoomey/vim-tmux-navigator' " tmux navigation integration
  Plug 'kyazdani42/nvim-tree.lua'
  Plug 'sainnhe/gruvbox-material'
  " Plug 'pineapplegiant/spaceduck'
   " Plug 'tjdevries/colorbuddy.nvim' " color scheme maker
  Plug 'rhysd/accelerated-jk' "navigate faster with jk
  Plug 'Yggdroot/indentLine' " show indentline
  " Plug 'lukas-reineke/indent-blankline.nvim' " indentLine

  Plug 'tpope/vim-commentary' " auto commennt
  Plug 'AndrewRadev/tagalong.vim' " tag helper
  " Plug 'kdheepak/lazygit.nvim' " lazy git nvim
  Plug 'norcalli/nvim-colorizer.lua' " show color of code

  Plug 'editorconfig/editorconfig-vim' " editorconfig for vim


  Plug 'junegunn/fzf', { 'build': './install --all', 'merged': 0 } " gui preview
  Plug 'junegunn/fzf.vim', { 'depends': 'fzf'}

  Plug 'blackcauldron7/surround.nvim'
  Plug 'windwp/nvim-autopairs'

  Plug 'neovim/nvim-lspconfig'
  Plug 'kabouzeid/nvim-lspinstall'
  Plug 'glepnir/lspsaga.nvim'
  Plug 'hrsh7th/vim-vsnip'
  Plug 'hrsh7th/nvim-compe'


  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'code-biscuits/nvim-biscuits'
  Plug 'windwp/nvim-ts-autotag'
  Plug 'p00f/nvim-ts-rainbow'
  Plug 'folke/trouble.nvim'
  Plug 'lukas-reineke/format.nvim'

  " Plug 'dense-analysis/ale' " linter && auto fixer
  Plug 'mhinz/vim-startify' " start page for vim

  Plug 'rbgrouleff/bclose.vim' " closing buffer wisdthout pane

  " language && syntax hightlight {{{
  " Plug 'sheerun/vim-polyglot' " solid syntax hightlight for  vim
  " }}}

  " Plug 'edkolev/tmuxline.vim'
  " Plug 'skanehira/docker.vim'
call plug#end()

