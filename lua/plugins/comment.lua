return {
	"numToStr/Comment.nvim",
	config = function()
		require("Comment").setup()

		vim.keymap.set("n", "<C-/>", "gcc", { remap = true })
		vim.keymap.set("v", "<C-/>", "gc", { remap = true })
	end,
}
