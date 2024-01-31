return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-ui-select.nvim",
	},
	config = function()
		require("telescope").setup({
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown({
						-- even more opts
					}),
				},
			},
		})
		require("telescope").load_extension("ui-select")

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader><leader>", builtin.find_files, {})
		vim.keymap.set("n", "<leader>gf", builtin.git_files, {})
		vim.keymap.set("n", "<leader>pg", builtin.live_grep, {})
		vim.keymap.set("n", "<leader>th", builtin.help_tags, {})
		vim.keymap.set("n", "<leader>b", builtin.buffers, {})

		local colors = require("onedarkpro.helpers").get_colors()
		local TelescopeColor = {
			TelescopeBorder = { fg = colors.darker_black, bg = colors.darker_black, },
			TelescopePromptBorder = { fg = colors.black2, bg = colors.black2, },
			TelescopePromptNormal = { fg = colors.white, bg = colors.black2, },
			TelescopePromptPrefix = { fg = colors.red, bg = colors.black2 },
			TelescopeNormal = { bg = colors.darker_black },
			TelescopePreviewTitle = { fg = colors.black, bg = colors.green },
			TeescopePromptTitle = { fg = colors.black, bg = colors.red },
			TelescopeResultsTitle = { fg = colors.darker_black, bg = colors.darker_black },
			TelescopeSelection = { bg = colors.black2, fg = colors.white },
			TelescopeResultsDiffAdd = { fg = colors.green },
			TelescopeResultsDiffChange = { fg = colors.yellow },
			TelescopeResultsDiffDelete = { fg = colors.red },
		}

		for hl, col in pairs(TelescopeColor) do
			vim.api.nvim_set_hl(0, hl, col)
		end
	end,
}
