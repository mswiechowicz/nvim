return {
	"allegro-internal/vscode-allegro-metrum",
	build = "npm run build:neovim",
	config = function()
		require("allegro-metrum").setup({
			on_attach = on_attach, -- pass your on_attach function
			-- here you can pass rest of standard lsp options
		})
	end,
}
