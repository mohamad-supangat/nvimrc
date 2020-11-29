" indent line {{{
let g:indentLine_char = '▏'
" let g:indentLine_char_list = ['|', '¦', '┆', '┊']

let g:indent_guides_auto_colors = 1
let g:indentLine_fileTypeExclude = [
      \'defx',
      \'markdown',
      \'denite',
      \'startify',
      \'tagbar',
      \'vista_kind',
      \'vista'
      \]
" }}}

" fzf settings {{{
let g:fzf_preview_window = []
let $FZF_DEFAULT_COMMAND = 'rg --hidden --no-ignore --files'
" Hide status bar while using fzf commands                                                                          
if has('nvim') || has('gui_running')                                                                                
  autocmd! FileType fzf                                                                                             
  autocmd  FileType fzf set laststatus=0 | autocmd WinLeave <buffer> set laststatus=2                               
endif
" }}}


" far.vim config {{{
" let g:far#source='rgnvim'
let g:far#source='rg'
" let g:far#source='vimgrep'
" let g:far#source='ag'

let g:far#window_width=60
" Use %:p with buffer option only
let g:far#file_mask_favorites=['%:p', '**/*.*', '**/*.js', '**/*.py', '**/*.java', '**/*.css', '**/*.html', '**/*.vim', '**/*.cpp', '**/*.c', '**/*.h', ]
let g:far#window_min_content_width=30
let g:far#enable_undo=1
" }}}

" floating terminal plugin {{{
let g:floaterm_keymap_toggle = '<F1>'
let g:floaterm_keymap_next   = '<F2>'
let g:floaterm_keymap_prev   = '<F3>'
let g:floaterm_keymap_new    = '<F4>'

let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.8
let g:floaterm_height=0.8
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1
" }}}


" startify config  {{{
let g:startify_lists = [
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'files',     'header': ['   MRU']            },
          \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'commands',  'header': ['   Commands']       },
          \ ]
" }}}


" coc vim   {{{
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c
" }}}


" completion nvim {{{
" lua require'nvim_lsp'.pyls.setup{on_attach=require'completion'.on_attach}
" let g:completion_enable_snippet = 'vim-vsnip'
" }}}

" let g:vim_vue_plugin_load_full_syntax = 1 " enable vue for full syntax
let g:LanguageClient_serverCommands = {
    \ 'vue': ['vls']
    \ }

let g:rainbow_active = 1 " active rainbow in every vim



" lightline config {{{
" let g:lightline.enable.tabline = 0
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'enable': {
      \     'tabline': 0
      \   },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'gitbranch', 'readonly', 'absolutepath', 'modified' ] ],
      \   },
      \ 'separator': {
      \     'left': '', 'right': ''
      \   },
      \   'subseparator': {
      \   'left': '\u2502', 'right': '\u2502'
      \   },
      \ 'mode_map': {
      \     'n'      : ' N0RMAL',
      \     'i'      : ' INSERT',
      \     'R'      : ' REPLACE',
      \     'v'      : ' VISUAL',
      \     'V'      : ' V-LINE',
      \     "\<C-v>" : ' V-BL0CK',
      \     'c'      : ' COMMAND',
      \     's'      : ' SELECT',
      \     'S'      : ' S-LINE',
      \     "\<C-s>" : ' S-BL0CK',
      \     't'      : ' TERMINAL',
      \   }
      \ }

"}}}



" coc configuration {{{

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
" }}}



let g:tagalong_additional_filetypes = ['vue'] " tagalong aditional fileype
