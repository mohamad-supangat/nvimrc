require('config.bufferline')
require('config.lualine')
-- require('config.treesiter')
require('config.treelua')
require('lsp.init')
require('config.completion')
require('config.neoscroll')
require('config.formatter')
require('config.comment')
-- require('gruvboy')

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

require('gitsigns').setup()

