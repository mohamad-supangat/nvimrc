if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  " call dein#add('Shougo/deoplete.nvim')
  call dein#add('wsdjeg/dein-ui.vim') " ui for dein

  call dein#add('kyazdani42/nvim-web-devicons') " neovim web dev icon
  call dein#add('akinsho/nvim-bufferline.lua') " bufferline for nvim 
  call dein#add('christoomey/vim-tmux-navigator') " tmux navigation integration
  call dein#add('gruvbox-community/gruvbox') " gruvbox color scheme
  call dein#add('tjdevries/colorbuddy.nvim') " color scheme maker
  call dein#add('cohama/lexima.vim') " auto pair brackes, braces, ete 
  call dein#add('rhysd/accelerated-jk') "navigate faster with jk
  call dein#add('Yggdroot/indentLine') " show indentline
  call dein#add('tpope/vim-commentary') " auto commennt 
  call dein#add('kdheepak/lazygit.nvim') " lazy git nvim 
  call dein#add('norcalli/nvim-colorizer.lua') " show color of code
  call dein#add('junegunn/rainbow_parentheses.vim') " show rainbow color in bracket
  call dein#add('ChristianChiarulli/far.vim') " find && replace in vim
  
  call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 }) " gui preview
  call dein#add('junegunn/fzf.vim', { 'depends': 'fzf'})
  call dein#add('neoclide/coc.nvim', { 'branch': 'release' })
  call dein#add('honza/vim-snippets')
  call dein#add('antoinemadec/coc-fzf')
 
  " auto complete && language server
  " call dein#add('neovim/nvim-lspconfig')
  " call dein#add('hrsh7th/vim-vsnip')
  " call dein#add('hrsh7th/vim-vsnip-integ')
  " call dein#add('nvim-lua/completion-nvim')
  
  " call dein#add('mhinz/vim-startify') " start page for vim 

  " call dein#add('voldikss/vim-floaterm') " floating terminal
  " call dein#add('micalexander/dein-fzf.vim') " dein gui with fzf
  call dein#add('rbgrouleff/bclose.vim') " closing buffer without pane

  " call dein#add('roxma/nvim-yarp')
  " call dein#add('roxma/vim-hug-neovim-rpc')
  call dein#add('nvim-treesitter/nvim-treesitter') " language 
  call dein#add('leafOfTree/vim-vue-plugin') " vue integration

  call dein#end()
  call dein#save_state()
endif

