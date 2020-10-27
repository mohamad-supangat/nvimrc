"*****************************************************************************************
"   ___    __                _               ____       __   __    _                   
"  / _ \  / / __ __  ___ _  (_)  ___        / __/ ___  / /_ / /_  (_)  ___   ___ _  ___
" / ___/ / / / // / / _ `/ / /  / _ \      _\ \  / -_)/ __// __/ / /  / _ \ / _ `/ (_-<
"/_/    /_/  \_,_/  \_, / /_/  /_//_/     /___/  \__/ \__/ \__/ /_/  /_//_/ \_, / /___/
"                  /___/                                                   /___/       
"
"*****************************************************************************************


"""""""""""""""
" Git Gutter  "
"""""""""""""""
let g:gitgutter_enabled = 1
let g:gitgutter_grep=''


"""""""""""
" Vista  "
"""""""""""
let g:vista_executive_for = {
      \ 'c': 'coc',
      \ }
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista#renderer#enable_icon = 1
let g:vista_sidebar_width = 50

""""""""""
" Emoji  "
""""""""""
set completefunc=emoji#complete


"""""""""""""""""
"Indent Guides  "
"""""""""""""""""
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



"""""""""""""
"Autopairs  "
"""""""""""""
let g:AutoPairsFlyMode = 1
let g:AutoPairsMultilineClose = 0

" KEY REMAPS
set updatetime=30
" let g:ycm_server_python_interpreter = '/usr/bin/python3'
let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'

"""""""""""""""""
"Nerd Commenter "
"""""""""""""""""
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Allow commenting and inverting empty lines (useful when commenting a region)


" Hide status bar while using fzf commands                                                                          
if has('nvim') || has('gui_running')                                                                                
  autocmd! FileType fzf                                                                                             
  autocmd  FileType fzf set laststatus=0 | autocmd WinLeave <buffer> set laststatus=2                               
endif    

" change fzf default command to include hidden and ignore git
" let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
let $FZF_DEFAULT_COMMAND = 'rg --hidden --no-ignore --files'

" notational notes
let g:nv_search_paths = ['~/notes']
let g:nv_default_extension = '.md'
let g:nv_main_directory = '~/notes'


" Centered floating window for fzf
" let g:fzf_layout = { 'window': 'call CreateCenteredFloatingWindow()' }

"""""""""""""""""
" Autosaving    "
"""""""""""""""""
let g:auto_save        = 0
let g:auto_save_silent = 1
let g:auto_save_events = ["InsertLeave", "TextChanged", "FocusLost"]

"""""""""""""""""
" Translator    "
"""""""""""""""""
let g:translator_target_lang = "id"

""""""""""""""""""""
" Markdown Preview "
""""""""""""""""""""
" Contains CSS for markdown + page + higlight
" let g:mkdp_markdown_css = '/home/gideon/.config/nvim/static/markdown-preview/customStyle.css' 
" Trick plugin into hosting colors.css so we get nice themes
" let g:mkdp_highlight_css = '/home/gideon/.cache/wal/colors.css'
let g:mkdp_port = '3456'



""""""""""""""""""
" Vim table mode "
""""""""""""""""""
let g:table_mode_corner='|'


"""""""""""""""""""
" Vim easy motion "
"""""""""""""""""""

hi EasyMotionTarget ctermbg=none ctermfg=green
hi EasyMotionShade  ctermbg=none ctermfg=cyan
hi EasyMotionTarget2First ctermbg=none ctermfg=red
hi EasyMotionTarget2Second ctermbg=none ctermfg=cyan

""""""""""""""""""
" airline "
""""""""""""
""""""""""""
"Airline   "
""""""""""""
"main settings
let g:airline_theme='base16_gruvbox_dark_hard'
let g:airline_powerline_fonts = 1
let g:airline_symbols = {}
let g:airline_skip_empty_sections = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols_branch = ''
let g:airline_powerline_fonts = 1
let g:airline_symbols.crypt = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.modified = ' '
let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'
"extensions
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#unicode#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#vista#enabled = 1
let g:airline#extensions#hunks#enabled = 1
"extension settings
let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'
let airline#extensions#coc#warning_symbol = ':'
let airline#extensions#coc#error_symbol = ':'
let g:airline#extensions#hunks#hunk_symbols = [':', ':', ':']
let g:airline#extensions#branch#format = 2


"""""""""""""
"Devicons   "
"""""""""""""
let g:webdevicons_enable = 1
let g:webdevicons_enable_unite = 1
let g:webdevicons_enable_denite = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_vimfiler = 1
let g:WebDevIconsUnicodeDecorateFileNodes = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:webdevicons_enable_airline_statusline = 1
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
let g:DevIconsDefaultFolderOpenSymbol = ''


" lightline
"
" let g:lightline = {
" \   'colorscheme': 'Tomorrow_Night',
" \   'active': {
" \    'left' :[[ 'mode', 'paste' ],
" \             [ 'fugitive', 'readonly' ],
" \             [ 'filename', 'modified' ]],
" \    'right':[[ 'lineinfo' ],
" \             [ 'percent' ],
" \             [ 'filetype', 'fileencoding', 'fileformat' ]]
" \   },
" \   'component': {
" \     'lineinfo': ' %3l:%-2v',
" \     'filename': '%<%f'
" \   },
" \}


" let g:lightline.tabline = {
" \   'left': [['buffers']],
" \   'right': [['string1'], ['string2']]
" \}

" let g:lightline.component_expand = {
" \   'buffers': 'lightline#bufferline#buffers',
" \   'string1': 'String1',
" \   'string2': 'String2'
" \}


" let g:lightline.component_type = {
" \   'buffers': 'tabsel'
" \}

" function! LightlineModified()
  " return &modified ? '●' : ''
" endfunction

" function! LightlineReadonly()
  " return &readonly ? '' : ''
" endfunction

" function! LightlineFugitive()
  " if exists('*fugitive#head')
    " let branch = fugitive#head()
    " return branch !=# '' ? ' '.branch : ''
  " endif
  " return fugitive#head()
" endfunction

" function! String1()
  " return 'Supangat'
" endfunction

" function! String2()
  " return 'BUFFERS'
" endfunction

" autoreload
" command! LightlineReload call LightlineReload()

" function! LightlineReload()
  " call lightline#init()
  " call lightline#colorscheme()
  " call lightline#update()
" endfunction

" set showtabline=2  " Show tabline
" set guioptions-=e  " Don't use GUI tabline

" far.vim
let g:far#enable_undo=1

" let g:comfortable_motion_scroll_down_key = "j"
" let g:comfortable_motion_scroll_up_key = "k"



" vim ascoc-explorer {{{
let g:coc_explorer_global_presets = {
\   '.vim': {
\     'root-uri': '~/.vim',
\   },
\   'tab': {
\     'position': 'tab',
\     'quit-on-open': v:true,
\   },
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingTop': {
\     'position': 'floating',
\     'floating-position': 'center-top',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingLeftside': {
\     'position': 'floating',
\     'floating-position': 'left-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingRightside': {
\     'position': 'floating',
\     'floating-position': 'right-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'simplify': {
\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   }
\ }

" Use preset argument to open it
nmap <space>ed :CocCommand explorer --preset .vim<CR>
nmap <space>ef :CocCommand explorer --preset floating<CR>

" List all presets
nmap <space>el :CocList explPresets
" }}}
