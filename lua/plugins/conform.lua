local function prettier_args()
	local prettier_config_files = {
		".prettierrc",
		".prettierrc.json",
		".prettierrc.js",
	}
	local root = vim.fs.find(prettier_config_files, { upward = true })

	if #root > 0 then
		return { "--stdin-filepath", "$FILENAME" }
	end

	return { "--stdin-filepath", "$FILENAME", "--single-quote", "--jsx-single-quote" }
end

return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters = {
				prettier = {
					command = "prettier",
					args = prettier_args,
					stdin = true,
				},
			},
			formatters_by_ft = {
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				svelte = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				graphql = { "prettier" },
				lua = { "stylua" },
				python = { "isort", "black" },
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>ff", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			})
		end)
	end,
}
