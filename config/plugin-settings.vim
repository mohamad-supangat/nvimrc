let g:indentLine_enabled = 1
let g:indent_blankline_char = "▏"
" highlight IndentBlanklineChar guifg=#00FF00 gui=nocombine
" highlight IndentBlanklineSpaceChar guifg=#00FF00 gui=nocombine
let g:indent_blankline_filetype_exclude = ['help', 'startify']

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



let g:rainbow_active = 1 " active rainbow in every vim

" tagalong and close tag config
let g:tagalong_additional_filetypes = ['vue' , 'blade'] " tagalong aditional fileype
let g:closetag_filetypes = 'html,xhtml,phtml,vue,blade' " add vue to auto close html tag



autocmd FileType vue inoremap <buffer><expr> : InsertColon()

function! InsertColon()
  let tag = GetVueTag()
  return tag == 'template' ? ':' : ': '
endfunction

function! OnChangeVueSyntax(syntax)
  echom 'Syntax is '.a:syntax
  if a:syntax == 'html'
    setlocal commentstring=<!--%s-->
    setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
  elseif a:syntax =~ 'css'
    setlocal comments=s1:/*,mb:*,ex:*/ commentstring&
  else
    setlocal commentstring=//%s
    setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
  endif
endfunction


let g:LanguageClient_serverCommands = {
      \ 'vue': ['vls']
      \ }

" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

" let g:neoformat_enabled_php = ['phpcbf']
