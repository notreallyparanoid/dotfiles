return {
	"stevearc/oil.nvim",
	name = "oil",
	lazy = false,
	priority = 1000,
	opts = {
		default_file_explorer = true,
		default_keymaps = false,
		experimental_watch_for_changes = true,
		view_options = { show_hidden = true, natural_order = false },
		preview = { border = "solid", win_options = { winblend = 30 } },
	},
	keys = {
		{
			"<leader>pp",
			"<cmd>Oil<CR>",
			desc = "Open parent directory",
		},
		{
			"-",
			"<cmd>Oil<CR>",
			desc = "Open parent directory",
		},
	},
}
