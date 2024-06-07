return {
	"stevearc/oil.nvim",
	name = "oil",
	lazy = false,
	priority = 1000,
	opts = {
		default_file_explorer = true,
		view_options = { show_hidden = true },
		preview = { border = "solid" },
	},
	keys = {
		{
			"<leader>pp",
			"<cmd>Oil<CR>",
			desc = "Open parent directory (Oil)",
		},
		{
			"-",
			"<cmd>Oil<CR>",
			desc = "Open parent directory (Oil)",
		},
	},
}
