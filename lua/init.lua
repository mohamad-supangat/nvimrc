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
-- require'colorizer'.setup()

require'colorizer'.setup(
  {'*';},
  {
    RGB      = true;         -- #RGB hex codes
	  RRGGBB   = true;         -- #RRGGBB hex codes
	  names    = true;         -- "Name" codes like Blue
	  RRGGBBAA = true;         -- #RRGGBBAA hex codes
	  rgb_fn   = true;         -- CSS rgb() and rgba() functions
	  hsl_fn   = true;         -- CSS hsl() and hsla() functions
	  css      = true;         -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
	  css_fn   = true;         -- Enable all CSS *functions*: rgb_fn, hsl_fn
  })

