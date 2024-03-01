vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<C-a>", "ggVG")

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")

vim.keymap.set("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
vim.keymap.set("n", "]b", "<cmd>bnext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<C-b>", ":bd<cr>", { desc = "Close buffer" })

-- Allows to copy from and into clipboard
vim.opt.clipboard = "unnamedplus"

if vim.g.neovide then
  vim.o.guifont ="FiraCode Nerd Font Mono:h12"
  vim.keymap.set("n", "<D-s>", ":w<CR>")     -- Save
  vim.keymap.set("v", "<D-c>", '"+y')        -- Copy
  vim.keymap.set("n", "<D-v>", '"+P')        -- Paste normal mode
  vim.keymap.set("v", "<D-v>", '"+P')        -- Paste visual mode
  vim.keymap.set("c", "<D-v>", "<C-R>+")     -- Paste command mode
  vim.keymap.set("i", "<D-v>", '<ESC>l"+Pli') -- Paste insert mode
end
