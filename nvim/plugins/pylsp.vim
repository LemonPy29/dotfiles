lua << EOF
require'lspconfig'.pylsp.setup{
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          enabled = false
        },
        flake8 = {
          enabled = true
        },
        yapf = {
            enabled = false
        },
        mccabe = {
            enabled = false
        },
        autopep8 = {
            enabled = false
        },
        jedi_completion = {
            enabled = false
        },
        jedi_defintion = {
            enabled = false
        },
        jedi_references = {
            enabled = false
        },
        jedi_signature_help = {
            enabled = false
        },
        jedi_symbols = {
            enabled = false
        },
        pylint = {
            enabled = false
        },
      }
    }
  }
}
EOF
