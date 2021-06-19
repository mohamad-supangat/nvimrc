let g:indentLine_enabled = 1
let g:indent_blankline_char = "▏"
" highlight IndentBlanklineChar guifg=#00FF00 gui=nocombine
" highlight IndentBlanklineSpaceChar guifg=#00FF00 gui=nocombine




" fzf settings {{{
let g:fzf_preview_window = []
let $FZF_DEFAULT_COMMAND = 'ag --hidden --depth 10 --ignore .git -f -g ""' " show hidden file in fzf

" Hide status bar while using fzf commands                                                                          
if has('nvim') || has('gui_running')                                                                                
  autocmd! FileType fzf                                                                                             
  autocmd  FileType fzf set laststatus=0 | autocmd WinLeave <buffer> set laststatus=2                               
endif
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
" global extension for coc syncs
let g:coc_global_extensions = ['coc-json', 'coc-marketplace', 'coc-pairs', 'coc-explorer']

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

" coc configuration {{{

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
" }}}

" auto format .vue file on save / write
autocmd BufWritePost *.vue :CocCommand prettier.formatFile
" }}}




