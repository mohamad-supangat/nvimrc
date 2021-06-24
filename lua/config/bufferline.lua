require "bufferline".setup {
    options = {
        max_name_length = 18,
        max_prefix_length = 15, -- prefix used when a buffer is deduplicated
        tab_size = 18,
        show_buffer_icons = true,
        show_buffer_close_icons = false,
        show_close_icon = false,
        separator_style = "thick",
        offsets = {{filetype = "NvimTree", text = "File Explorer", text_align = "center"}}
    },
    highlights = {
        fill = {
            guifg = {attribute = "fg", highlight = "Normal"},
            guibg = {attribute = "bg", highlight = "StatusLineNC"}
        },
        background = {
            guifg = {attribute = "fg", highlight = "Normal"},
            guibg = {attribute = "bg", highlight = "StatusLine"}
        },
        buffer_visible = {
            gui = "",
            guifg = {attribute = "fg", highlight = "Normal"},
            guibg = {attribute = "bg", highlight = "Normal"}
        },
        buffer_selected = {
            gui = "",
            guifg = {attribute = "fg", highlight = "Normal"},
            guibg = {attribute = "bg", highlight = "Normal"}
        },
        separator = {
            guifg = {attribute = "bg", highlight = "Normal"},
            guibg = {attribute = "bg", highlight = "StatusLine"}
        },
        separator_selected = {
            guifg = {attribute = "fg", highlight = "Special"},
            guibg = {attribute = "bg", highlight = "Normal"}
        },
        separator_visible = {
            guifg = {attribute = "fg", highlight = "Normal"},
            guibg = {attribute = "bg", highlight = "StatusLineNC"}
        },
        close_button = {
            guifg = {attribute = "fg", highlight = "Normal"},
            guibg = {attribute = "bg", highlight = "StatusLine"}
        },
        close_button_selected = {
            guifg = {attribute = "fg", highlight = "normal"},
            guibg = {attribute = "bg", highlight = "normal"}
        },
        close_button_visible = {
            guifg = {attribute = "fg", highlight = "normal"},
            guibg = {attribute = "bg", highlight = "normal"}
        }
    }
}
