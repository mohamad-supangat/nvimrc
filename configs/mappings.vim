"###################################################################################
"       __  ___                      _                    
"      /  |/  /____ _ ____   ____   (_)____   ____ _ _____
"     / /|_/ // __ `// __ \ / __ \ / // __ \ / __ `// ___/
"    / /  / // /_/ // /_/ // /_/ // // / / // /_/ /(__  ) 
"   /_/  /_/ \__,_// .___// .___//_//_/ /_/ \__, //____/  
"                 /_/    /_/               /____/         
"
"###################################################################################

"***********************************************************************************

" Main Vim Keybinds

"***********************************************************************************


" Set leader to space bar
let mapleader = " "
let maplocalleader = " "

" Window Navigation {{{
" Navigate to left window.
nnoremap <C-h> <C-w>h
" Navigate to down window.
nnoremap <C-j> <C-w>j
" Navigate to top window.
nnoremap <C-k> <C-w>k
" Navigate to right window.
nnoremap <C-l> <C-w>l
" Horizontal split then move to bottom window.
nnoremap <Leader>- <C-w>s
" Vertical split then move to right window.
nnoremap <Leader>\| <C-w>v<C-w>l
" }}}

" Change Y to copy to end of line and behave like C
nnoremap Y y$

" map esc / exit insert mode && clear higthlight search
" map <ESC> :noh<cr>

"Faster ESC. {{{
inoremap <silent><nowait>  jk <ESC>
inoremap <silent><nowait>  kj <ESC>
inoremap <silent><nowait>  jj <ESC>
"}}}

" Indent controls
" Reselect text ater indent/unindent.
vnoremap <silent><nowait>  < <gv
vnoremap <silent><nowait>  > >gv

" Tab to indent in visual mode.
vnoremap  <silent><nowait> <Tab> >gv
" Shift+Tab to unindent in visual mode.
vnoremap  <silent><nowait> <S-Tab> <gv

" Text alignment {{{
nnoremap <Leader>Al :left<CR>
nnoremap <Leader>Ac :center<CR>
nnoremap <Leader>Ar :right<CR>
vnoremap <Leader>Al :left<CR>
vnoremap <Leader>Ac :center<CR>
vnoremap <Leader>Ar :right<CR>
" }}}

"***********************************************************************************

" Plugin specific keybinds

"***********************************************************************************
 
" Git keybinds {{
" Git status
nnoremap  <Leader>gs  :Gstatus<cr>
" Git diff in split window
nnoremap  <Leader>gd  :Gdiffsplit<cr>
" Git commit
nnoremap  <Leader>gc  :Gcommit<cr>
" Git push 
nnoremap  <Leader>gP  :Gpush<cr>
" Git pull 
nnoremap  <Leader>gp  :Gpull<cr>
" Git move 
nnoremap  <Leader>gm  :Gmove<cr>
" Git merge 
nnoremap  <Leader>gM  :Gmerge<cr>
" browse current file on web
nnoremap  <Leader>gb  :Gbrowse<cr>
" browse current line on web
nnoremap  <Leader>gbl  :CocCommand git.browserOpen<cr>
" View chunk information in preview window. 
nnoremap  <Leader>gh  :CocCommand git.chunkInfo<cr>
" View commit information in preview window. 
nnoremap  <Leader>gsc  :CocCommand git.showCommit<cr>
" Toggle git gutter sign columns
nnoremap  <Leader>gg  :CocCommand git.toggleGutters<cr>
" Lazygit
nnoremap <silent> <Leader>git :LazyGit<CR>
" }}

" vim commenter plugin {{
nnoremap <space>/ :Commentary<CR>
vnoremap <space>/ :Commentary<CR>
nnoremap <space>ni :Commentary<CR>
vnoremap <space>ni :Commentary<CR>
vnoremap / :Commentary<CR>

" }}

" Vista {{{
" Opens tagbar on right side of screen
nmap <F8> :Vista!!<CR>
" }}} end of vista mapping

" Markdown preview 
nmap <Leader>md <Plug>MarkdownPreviewToggle

" Cut, Paste, Copy {{
vmap <silent><nowait>  <C-x> d
vmap <silent><nowait>  <C-v> p
nmap <silent><nowait>  <C-v> p
imap <silent><nowait>  <C-v> <ESC>pi
vmap <silent><nowait>  <C-c> y
" }}

" delete word when alt + backspace {{{
set backspace=indent,eol,start
imap <silent><nowait>  <A-BS> <C-W>
" }}}

" select all {{
nmap <C-a> <Esc>ggVG
" }}

" undo redo {{{
nnoremap <silent><nowait>  <C-Z> u
nnoremap <silent><nowait>  <C-Y> <C-R>
inoremap <silent><nowait>  <C-Z> <C-O>u
inoremap <silent><nowait>  <C-Y> <C-O><C-R>
vnoremap <silent><nowait>  <C-Z> <C-O>u
vnoremap <silent><nowait>  <C-Y> <C-O><C-R>
" }}}

" FIXME: (broken) ctrl s to save {{{
noremap <silent><nowait>   <C-S> :update<CR>
vnoremap <silent><nowait>  <C-S> <C-C>:update<CR>
inoremap <silent><nowait>  <C-S> <Esc>:update<CR>
" }}}


" shift+arrow selection {{{
nmap <S-Up> v<Up>
nmap <S-Down> v<Down>
nmap <S-Left> v<Left>
nmap <S-Right> v<Right>
vmap <S-Up> <Up>
vmap <S-Down> <Down>
vmap <S-Left> <Left>
vmap <S-Right> <Right>
imap <S-Up> <Esc>v<Up>
imap <S-Down> <Esc>v<Down>
imap <S-Lef> <Esc>v<Left>
imap <S-Right> <Esc>v<Right>
" }}}

" shortcut for far.vim find {{{
nnoremap <silent> <Find-Shortcut>  :Farf<cr>
vnoremap <silent> <Find-Shortcut>  :Farf<cr>

" shortcut for far.vim replace
nnoremap <silent> <leader>h :Farr<cr>
vnoremap <silent> <leader>h :Farr<cr>
" }}}

" map ctrl + p fuzy filefinder
map <C-p> :Files<CR>

" Tabs {{{
nnoremap <C-t>  :enew<CR>
inoremap <C-t>  <Esc>:enew<CR>i
noremap <C-PageUp>  :bprevious<CR>
inoremap <C-PageUp>  <Esc>:bprevious<CR>i
nnoremap <C-PageDown>  :bnext<CR>
inoremap <C-PageDown>  <Esc>:bnext<CR>i

nnoremap <Leader>bn :bnext<CR>
nnoremap <Leader>bb :bprevious<CR>
" nnoremap <Leader>bd :bdelete<CR> 
nnoremap <silent> <Leader>bd :Bclose<CR>

" bufferline pick function from nvim  bufferline
nnoremap <silent> gb :BufferLinePick<CR>

" }}}
" replacing tabs with buffer


" mapping delete witout cut / copy to buffer {{{
vmap <BS> "_d
" }}}

" coc && fzf keybinds {{

" toogle explorer
nmap <F7> :CocCommand explorer<CR>

" toogle fzf coc
nmap <leader>coc :CocFzfList<CR>
nmap <leader>P :CocFzfList commands<CR>

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Remap <C-f> and <C-b> for scroll float windows/popups.
" Note coc#float#scroll works on neovim >= 0.4.0 or vim >= 8.2.0750
nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"

" NeoVim-only mapping for visual mode scroll
" Useful on signatureHelp after jump placeholder of snippet expansion
if has('nvim')
  vnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#nvim_scroll(1, 1) : "\<C-f>"
  vnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#nvim_scroll(0, 1) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
" nmap <silent> <C-s> <Plug>(coc-range-select)
" xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" coc - translator
nmap <Leader>t <Plug>(coc-translator-p)
vmap <Leader>t <Plug>(coc-translator-pv)

" }}}
