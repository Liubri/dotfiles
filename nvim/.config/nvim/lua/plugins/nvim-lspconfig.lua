return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"kotlin_language_server",
          "ts_ls"
				},
			})
		end,
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			-- capabilities from nvim-cmp
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- NEW Neovim-native LSP config
			vim.lsp.config("lua_ls", {
				capabilities = capabilities,
			})

			vim.lsp.config("kotlin_language_server", {
				capabilities = capabilities,
			})

      vim.lsp.config("ts_ls", {
				capabilities = capabilities,
			})

			-- LSP keymaps (global)
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
