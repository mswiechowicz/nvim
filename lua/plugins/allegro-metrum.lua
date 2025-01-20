return {
  "allegro-internal/vscode-allegro-metrum",
  build = "npm run build:neovim",
  config = function()
    require("allegro-metrum").setup({
      on_attach = on_attach,
    })
  end,
}
