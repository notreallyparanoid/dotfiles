return {
	{
		"williamboman/mason.nvim",
		name = "mason",
		opts = {
			ui = {
				width = 0.8,
				height = 0.8,
				icons = {
					package_installed = "-",
					package_pending = "•",
					package_uninstalled = "+",
				},
			},
		},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		name = "mason-lsp-config",
		opts = {
			ensure_installed = require("language-server-settings").servers,
		},
	},
}
