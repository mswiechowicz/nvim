return { 
  'echasnovski/mini.nvim',
  version = false,
  config = function ()
    require('mini.files').setup({
      options = {
        use_as_default_explorer = false,
      }
    })

		vim.keymap.set("n", "<leader>m", ":lua MiniFiles.open()<CR>", { desc = "Open mini map" })
  end
}
