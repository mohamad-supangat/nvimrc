require('config.bufferline')
require('config.treesitter')
require('config.treelua')
require('lsp.init')
require('config.completion')
require('config.neoscroll')
require('config.formatter')
require('config.comment')

--
vim.g.bubbly_palette = {
  background = "#1A1B26",
  foreground = "#c5cdd9",
  black = "#3e4249",
  red = "#ec7279",
  green = "#a0c980",
  yellow = "#deb974",
  blue = "#6cb6eb",
  purple = "#d38aea",
  cyan = "#5dbbc1",
  white = "#c5cdd9",
  lightgrey = "#57595e",
  darkgrey = "#404247",
}

vim.g.bubbly_statusline = {
  'mode',
  'truncate',
  'path',
  'branch',
  'signify',
  'coc',
  'divisor',
  'filetype',
  'progress',
}



require("nvim-autopairs").setup({
    pairs_map = {
        ["'"] = "'",
        ['"'] = '"',
        ["("] = ")",
        ["["] = "]",
        ["{"] = "}",
        ["`"] = "`",
    },
    disable_filetype = { "TelescopePrompt" },
    break_line_filetype = nil,
    check_line_pair = true,
    html_break_line_filetype = { "html", "vue", "typescriptreact", "svelte", "javascriptreact" },
    ignored_next_char = "%w",
    check_ts = true,
})
