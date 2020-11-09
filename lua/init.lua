-- galaxy line status line
-- require('config/galaxyline')

-- start bufferline 
-- require'bufferline'.setup()
require'bufferline'.setup{
  options = {
    view = "multiwindow",
    number_style = "superscript",
    mappings = true,
    separator_style = "thick",
    enforce_regular_tabs = true,
    always_show_bufferline = true,
  }
}
-- start colorizer lua
require'colorizer'.setup()


