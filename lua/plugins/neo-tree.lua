return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
    "3rd/image.nvim",
  },
  keys = {
    {
      "<leader>fe",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
      end,
      desc = "Explorer NeoTree (root dir)",
    },
    {
      "<leader>e", "<leader>fe", desc = "Explorer NeoTree (cwd)", remap = true
    },
    {
      "<leader>ge",
      function()
        require("neo-tree.command").execute({ source = "git_status", position= "float", toggle = true })
      end,
      desc = "Git explorer",
    },
  },
  opts = {
    window = {
      width = 25
    },
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
      },
      follow_current_file = {
        enabled = true,
        leave_dirs_open = false,
      },
      -- doesnt work for some reason
      hijack_netrw_behavior = "open_current"
    },
  }
}
