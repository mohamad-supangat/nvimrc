require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  -- ignore_install = { "javascript" }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    use_languagetree = true,

    -- disable = { "c", "rust" },  -- list of language that will be disabled
  },
  autotag = {
    enable = true,
    filetypes = {
        'html', 'javascript', 'javascriptreact', 'typescriptreact', 'svelte', 'vue', 'blade'
    },
  },
  indent = {
    enable = true
  },
  
  rainbow = {
    enable = true,
    -- extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
    -- max_file_lines = 1000, -- Do not enable for files with more than 1000 lines, int
  },
  -- pairs = {
  --   enable = false,
  --   disable = {},
  --   highlight_pair_events = {}, -- e.g. {"CursorMoved"}, -- when to highlight the pairs, use {} to deactivate highlighting
  --   highlight_self = false, -- whether to highlight also the part of the pair under cursor (or only the partner)
  --   goto_right_end = false, -- whether to go to the end of the right partner or the beginning
  --   fallback_cmd_normal = "call matchit#Match_wrapper('',1,'n')", -- What command to issue when we can't find a pair (e.g. "normal! %")
  --   keymaps = {
  --     goto_partner = "<leader>%"
  --   }
  -- },
  -- context_commentstring = {
  --   enable = true,
  --   enable_autocmd = false,
  -- }
}

