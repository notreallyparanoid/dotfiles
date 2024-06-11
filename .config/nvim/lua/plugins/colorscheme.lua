return {
	"rose-pine/neovim",
	name = "rose-pine",
	lazy = false,
	priortiy = 1000,
	opts = {
		variant = "main",
		styles = {
			italic = false,
		},
		highlight_groups = {
			-- Nitpicks
			PmenuSel = { bg = "highlight_med" },
			Comment = { italic = true },

			-- Borderless Telescope
			TelescopeNormal = { bg = "surface" },
			TelescopeBorder = { fg = "surface", bg = "surface" },

			TelescopePromptNormal = { bg = "overlay" },
			TelescopePromptBorder = { fg = "overlay", bg = "overlay" },
			TelescopePromptTitle = { fg = "overlay", bg = "foam" },
			TelescopePromptCounter = { fg = "overlay" },

			TelescopeResultsTitle = { fg = "surface" },

			-- Trouble
			TroubleNormal = { bg = "base" },

			-- Cmp
			CmpItemAbbrDeprecated = { fg = "muted", strikethrough = false },
			CmpItemAbbrMatch = { fg = "rose" },
			CmpItemAbbrMatchFuzzy = { fg = "subtle" },
		},
	},
	init = function()
		vim.cmd("colorscheme rose-pine")
	end,
}
