return {
	"folke/trouble.nvim",
	name = "trouble",
	opts = {
		focus = true,
		follow = false,
		indent_guides = false,
		open_no_results = true,
		keys = {
			["<esc>"] = "close",
		},
	},
	keys = {
		{
			"<leader>t",
			"<cmd>Trouble diagnostics toggle<cr>",
			desc = "Diagnostics (Trouble)",
		},
	},
}
