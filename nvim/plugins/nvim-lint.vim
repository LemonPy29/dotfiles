lua <<EOF
    require('lint').linters_by_ft = {
      markdown = {'vale',},
      sql = {'sqlfluff',}
    }

    require('lint').linters.sqlfluff.args = {
        'lint', '--format=json', '--dialect=snowflake',
    }
EOF

au BufWritePost * lua require('lint').try_lint()
