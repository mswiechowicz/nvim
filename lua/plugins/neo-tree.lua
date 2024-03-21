return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
		"3rd/image.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { desc = "Explorer NeoTree (root dir)" })
		vim.keymap.set("n", "<leader>ge", ":Neotree toggle git_status float<CR>", { desc = "Git explorer" })

		vim.g.loaded_netrwPlugin = 1
		vim.g.loaded_netrw = 1

		require("neo-tree").setup({
			window = {
				width = 30,
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
				hijack_netrw_behavior = "open_current",
			},
		})
	end,
}
