return {
  {
    "olimorris/onedarkpro.nvim",
    -- priority = 1000,
    -- config = function()
    -- 	vim.cmd("colorscheme onedark")
    -- end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd("colorscheme catppuccin-macchiato")
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    -- config = function()
    --   vim.cmd("colorscheme tokyonight-storm")
    -- end,
  },
}
