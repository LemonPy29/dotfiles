lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {
      "rust",
      "typescript",
      "json",
      "tsx",
      "javascript",
      "java",
      "c",
      "go",
      "haskell",
      "python",
      "vue",
      "html",
      "css",
      "toml"
      },

  highlight = {
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },

  textobjects = {
    select = {
      enable = true,

      -- Automatically jump forward to textobj, similar to targets.vim
      lookahead = true,

      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
        ["av"] = "@variable",
      },
    },

    move = {
        enable = true,
        set_jumps = true,
        goto_next_start = {
            ["]m"] = "@function.outer",
            ["]]"] = "@class.outer",
            ["]v"] = "@variable",
        },
        goto_next_end = {
          ["]M"] = "@function.outer",
          ["]["] = "@class.outer",
        },
        goto_previous_start = {
          ["[m"] = "@function.outer",
          ["[["] = "@class.outer",
        },
        goto_previous_end = {
          ["[M"] = "@function.outer",
          ["[]"] = "@class.outer",
        },
    }
  },
}
EOF

set foldenable
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
