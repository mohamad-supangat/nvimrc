require("nvim_comment").setup({
    -- Linters prefer comment and line to hae a space in between
    left_marker_padding = true,
    -- should comment out empty or whitespace only lines
    comment_empty = false,
    -- Should key mappings be created
    create_mappings = false,
 })
