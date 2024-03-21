return {
  'nvimtools/none-ls.nvim',
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,

        null_ls.builtins.diagnostics.eslint_d.with({
          only_local = "node_modules/.bin"
        }),
        null_ls.builtins.code_actions.eslint_d.with({
          only_local = "node_modules/.bin"
        }),

        null_ls.builtins.formatting.prettier,
        null_ls.builtins.completion.spell,
      },
    })

    vim.keymap.set('n', '<leader>ff', vim.lsp.buf.format, {})
    vim.keymap.set('n', '<C-e>', ":EslintFixAll<CR>", {})
  end
}
