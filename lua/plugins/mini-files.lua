return {
  "echasnovski/mini.nvim",
  version = false,
  config = function()
    require("mini.files").setup({
      options = {
        use_as_default_explorer = false,
      },
    })

    vim.keymap.set("n", "<leader>m", function()
      if #vim.api.nvim_list_bufs() > 2 then
        MiniFiles.open(vim.api.nvim_buf_get_name(0), false)
      else 
        MiniFiles.open()
      end
    end)
  end,
}
