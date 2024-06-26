return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-neotest/nvim-nio",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "marilari88/neotest-vitest",
    'nvim-neotest/neotest-jest',
  },
  keys = {
    { "<leader>tt", function() require("neotest").run.run(vim.fn.expand("%")) end,                      desc = "Run File" },
    { "<leader>tT", function() require("neotest").run.run(vim.loop.cwd()) end,                          desc = "Run All Test Files" },
    { "<leader>tr", function() require("neotest").run.run() end,                                        desc = "Run Nearest" },
    { "<leader>tl", function() require("neotest").run.run_last() end,                                   desc = "Run Last" },
    { "<leader>ts", function() require("neotest").summary.toggle() end,                                 desc = "Toggle Summary" },
    { "<leader>to", function() require("neotest").output.open({ enter = true, auto_close = true }) end, desc = "Show Output" },
    { "<leader>tO", function() require("neotest").output_panel.toggle() end,                            desc = "Toggle Output Panel" },
    { "<leader>tS", function() require("neotest").run.stop() end,                                       desc = "Stop" },
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-vitest")({
          vitestCommand = "npm run test:unit --",
        }),

        require('neotest-jest')({
          jestCommand = "npm run test:unit --",
          env = { CI = true },
          cwd = function()
            return vim.fn.getcwd()
          end,
        }),
      }
    })
  end
}
