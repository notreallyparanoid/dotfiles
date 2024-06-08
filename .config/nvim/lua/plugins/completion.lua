return {
	"hrsh7th/nvim-cmp",
	name = "cmp",
	dependencies = {
		-- Sources
		{ "hrsh7th/cmp-path", name = "cmp-src-path" },
		{ "hrsh7th/cmp-nvim-lsp", name = "cmp-src-lsp" },
		{ "saadparwaiz1/cmp_luasnip", name = "cmp-src-luasnip" },

		-- Snippets
		{ "rafamadriz/friendly-snippets", name = "friendly-snippets" },

		-- Completion Engine
		{ "L3MON4D3/LuaSnip", name = "luasnip" },
	},
	opts = {
		window = {
			completion = {
				scrollbar = false,
				col_offset = 2,
			},
			documentation = {
				max_height = 10,
				max_width = 50,
			},
		},
		formatting = {
			fields = { "kind", "abbr" },
			format = function(entry, item)
				local kind = require("lspkind").cmp_format({ mode = "symbol", preset = "codicons" })(entry, item)
				kind.kind = (kind.kind or "")

				local ELLIPSIS_CHAR = "…"
				local MAX_LABEL_WIDTH = 35
				local content = item.abbr

				local get_ws = function(max, len)
					return (" "):rep(max - len)
				end

				if #content > MAX_LABEL_WIDTH then
					item.abbr = string.sub(content, 0, MAX_LABEL_WIDTH) .. ELLIPSIS_CHAR
				else
					item.abbr = content .. get_ws(MAX_LABEL_WIDTH, #content)
				end

				return kind
			end,
		},
	},
	init = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")
		require("luasnip.loaders.from_vscode").lazy_load()
		cmp.setup({
			snippet = {
				expand = function(args)
					vim.snippet.expand(args.body)
				end,
			},

			sources = cmp.config.sources({ { name = "nvim_lsp" }, { name = "luasnip" } }, { name = "buffer" }),

			mapping = cmp.mapping.preset.insert({
				["<C-b>"] = cmp.mapping.scroll_docs(-4),

				["<C-f>"] = cmp.mapping.scroll_docs(4),

				["<C-e>"] = cmp.mapping.abort(),

				["<CR>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						if luasnip.expandable() then
							luasnip.expand()
						else
							cmp.confirm({
								select = true,
							})
						end
					else
						fallback()
					end
				end),

				["<Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_next_item()
					elseif luasnip.locally_jumpable(1) then
						luasnip.jump(1)
					else
						fallback()
					end
				end, { "i", "s" }),

				["<S-Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_prev_item()
					elseif luasnip.locally_jumpable(-1) then
						luasnip.jump(-1)
					else
						fallback()
					end
				end, { "i", "s" }),
			}),
		})
	end,
}
