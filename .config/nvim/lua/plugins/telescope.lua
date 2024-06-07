return {
	"nvim-telescope/telescope.nvim",
	name = "telescope",
	dependencies = {
		{ "nvim-lua/plenary.nvim", name = "plenary" },
		{ "nvim-telescope/telescope-ui-select.nvim", name = "ui-select" },
	},
	config = function()
		local telescope = require("telescope")
		vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, {})
		telescope.setup({
			pickers = {
				find_files = {
					previewer = false,
					prompt_title = false,
				},
			},
			defaults = {
				prompt_prefix = " 　",
				selection_caret = "  ",
				entry_prefix = "  ",
				layout_strategy = "vertical",
				sorting_strategy = "ascending",
				layout_config = {
					vertical = { width = 0.5, height = 0.5 },
					prompt_position = "top",
				},
				mappings = {
					i = {
						["<esc>"] = require("telescope.actions").close,
					},
				},
			},
		})
		telescope.load_extension("ui-select")
	end,
}
