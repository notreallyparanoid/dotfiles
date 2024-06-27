return {
	"hrsh7th/nvim-cmp",
	name = "cmp",
	dependencies = {
		-- Sources
		{ "hrsh7th/cmp-nvim-lsp", name = "cmp-src-lsp" },

		-- Snippet
		{ "rafamadriz/friendly-snippets", name = "friendly-snippets" },

		-- Snippet Engine
		{
			"garymjr/nvim-snippets",
			name = "snippets",
			opts = { create_cmp_source = true, friendly_snippets = true },
		},

		-- Rice
		{ "onsails/lspkind.nvim", name = "lsp-kind" },
	},
	config = function()
		-- Setup
		local cmp = require("cmp")
		cmp.setup({
			snippet = {
				expand = function(args)
					vim.snippet.expand(args.body)
				end,
			},
			sources = cmp.config.sources({ { name = "nvim_lsp" }, { name = "snippets" } }),
			mapping = cmp.mapping.preset.insert({
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-e>"] = cmp.mapping.abort(),
				["<CR>"] = cmp.mapping.confirm({ select = true }),
			}),

			-- Rice
			window = {
				completion = { scrollbar = false },
				documentation = { max_height = 10, max_width = 50 },
			},
			formatting = {
				fields = { "kind", "abbr", "menu" },
				format = function(entry, item)
					item.kind = require("lspkind").cmp_format({ mode = "symbol", preset = "codicons" })(entry, item).kind
					item.menu = nil
					if #item.abbr > 35 then
						item.abbr = string.sub(item.abbr, 0, 35) .. "…"
					else
						item.abbr = item.abbr .. (" "):rep(35 - #item.abbr) .. " "
					end
                    return item
				end,
			},
		})
	end,
}
