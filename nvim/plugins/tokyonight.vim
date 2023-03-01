lua <<EOF
require("tokyonight").setup({
    style="moon",
    transparent = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent"
    },
    on_colors = function(colors)
    end,
    on_highlights = function(highlights, colors) 
        highlights.LineNr = { fg = colors.blue, bold = true }
        highlights.CursorLineNr = { fg = colors.purple, bold = true }
    end,
})
EOF
"
" vim.g.tokyonight_transparent = true
" vim.g.tokyonight_transparent_sidebar = true
" vim.g.tokyonight_style = "storm"
" vim.g.tokyonight_colors = { fg_gutter = "#707cb2", comment = "#709db2", dark5 = "#709db2" }
