vim.keymap.set('n', '<leader>C', '<cmd>lua require"dap".continue()<CR>')
vim.keymap.set('n', '<leader>B', '<cmd>lua require"dap".toggle_breakpoint()<CR>')
vim.keymap.set('n', '<leader>so', '<cmd>lua require"dap".step_over()<CR>')

require'dapui'.setup({})
require'dap-vscode-js'.setup({
    debugger_path='/Users/alexismoraga/repos/vscode-js-debug',
    adapters = { 'pwa-node', 'node-terminal', 'pwa-extensionHost' },
})

for _, language in ipairs({ "typescript", "javascript" }) do
  require("dap").configurations[language] = {
      {
        type = "pwa-node",
        request = "launch",
        name = "Debug Jest Tests",
        -- trace = true, -- include debugger info
        runtimeExecutable = "node",
        runtimeArgs = {
          "./node_modules/jest/bin/jest.js",
          "--runInBand",
        },
        rootPath = "${workspaceFolder}",
        cwd = "${workspaceFolder}",
        console = "integratedTerminal",
        internalConsoleOptions = "neverOpen",
      }
  }
end
