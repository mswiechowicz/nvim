return {
  "romgrk/barbar.nvim",
  dependencies = {
    "lewis6991/gitsigns.nvim",   -- OPTIONAL: for git status
    "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
  },
  init = function()
    vim.g.barbar_auto_setup = false
    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }

    -- Move to previous/next
    map("n", "<C-,>", "<Cmd>BufferPrevious<CR>", opts)
    map("n", "<C-.>", "<Cmd>BufferNext<CR>", opts)
    map('n', '<C-1>', '<Cmd>BufferGoto 1<CR>', opts)
    map('n', '<C-2>', '<Cmd>BufferGoto 2<CR>', opts)
    map('n', '<C-3>', '<Cmd>BufferGoto 3<CR>', opts)
    map('n', '<C-4>', '<Cmd>BufferGoto 4<CR>', opts)
    map('n', '<C-5>', '<Cmd>BufferGoto 5<CR>', opts)
    map('n', '<C-6>', '<Cmd>BufferGoto 6<CR>', opts)
    map('n', '<C-7>', '<Cmd>BufferGoto 7<CR>', opts)
    map('n', '<C-8>', '<Cmd>BufferGoto 8<CR>', opts)
    map('n', '<C-9>', '<Cmd>BufferGoto 9<CR>', opts)
    map('n', '<C-0>', '<Cmd>BufferLast<CR>', opts)
    map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
  end,
  opts = {
    -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
    -- animation = true,
    -- insert_at_start = true,
    -- …etc.
  },
  version = "^1.0.0", -- optional: only update when a new 1.x version is released
}
