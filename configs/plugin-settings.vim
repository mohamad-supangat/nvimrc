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


let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0

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
" set updatetime=300
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

" start bufferline 
lua require'bufferline'.setup()
" galaxyline

