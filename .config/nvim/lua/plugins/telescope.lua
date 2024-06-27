return {
	"nvim-telescope/telescope.nvim",
	lazy = false,
	name = "telescope",
	dependencies = {
		{ "nvim-lua/plenary.nvim", name = "plenary" },
		{ "nvim-telescope/telescope-ui-select.nvim", name = "ui-select" },
	},
	config = function()
		vim.keymap.set("n", "<leader>ff", function()
			require("telescope.builtin").find_files()
		end)
		require("telescope").setup({
			pickers = { find_files = { previewer = false } },
			defaults = {
				prompt_prefix = "  ",
				selection_caret = "  ",
				entry_prefix = "  ",
				layout_strategy = "vertical",
				sorting_strategy = "ascending",
				layout_config = { vertical = { width = 0.5 }, prompt_position = "top" },
				mappings = { i = { ["<esc>"] = require("telescope.actions").close } },
			},
		})
		require("telescope").load_extension("ui-select")
	end,
}
