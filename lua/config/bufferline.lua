require"bufferline".setup{
        options = {
            max_name_length = 18,
            max_prefix_length = 15, -- prefix used when a buffer is deduplicated
            tab_size = 18,
            
            show_buffer_icons = true,
            show_buffer_close_icons = false,
            show_close_icon = false,
 
            separator_style = "slant",
            offsets = {{filetype = "NvimTree", text = "File Explorer", text_align = "center"}},
          }
    }
