require('config.bufferline')
-- require('config.lsp')
--
vim.g.bubbly_palette = {
  background = "#34343c",
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

require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  -- ignore_install = { "javascript" }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    -- disable = { "c", "rust" },  -- list of language that will be disabled
  },
  autotag = {
    enable = true,
    filetypes = {
        'html', 'javascript', 'javascriptreact', 'typescriptreact', 'svelte', 'vue'
    },
  },
  indent = {
    enable = true
  },
  rainbow = {
    enable = true,
    extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
    max_file_lines = 1000, -- Do not enable for files with more than 1000 lines, int
  },
  pairs = {
    enable = true,
    disable = {},
    highlight_pair_events = {}, -- e.g. {"CursorMoved"}, -- when to highlight the pairs, use {} to deactivate highlighting
    highlight_self = false, -- whether to highlight also the part of the pair under cursor (or only the partner)
    goto_right_end = false, -- whether to go to the end of the right partner or the beginning
    fallback_cmd_normal = "call matchit#Match_wrapper('',1,'n')", -- What command to issue when we can't find a pair (e.g. "normal! %")
    keymaps = {
      goto_partner = "<leader>%"
    }
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  }
}

