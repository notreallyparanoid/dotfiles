return {
	{
		"windwp/nvim-autopairs",
		name = "autopairs",
		event = "InsertEnter",
		config = true,
	},
	{
		"onsails/lspkind.nvim",
		name = "lsp-kind",
	},
	{
		"m4xshen/hardtime.nvim",
		name = "hardtime",
		dependencies = { { "MunifTanjim/nui.nvim", name = "nui" }, { "nvim-lua/plenary.nvim", name = "plenary" } },
		config = true,
	},
}
