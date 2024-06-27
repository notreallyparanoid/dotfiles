return {
	"neovim/nvim-lspconfig",
	name = "lsp-config",
	config = function()
		local lsp = require("lspconfig")

		-- Setup
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		local function on_attach(_, bufnr)
			local opts = { buffer = bufnr, noremap = true, silent = true }
			vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
		end

		for server, settings in pairs(require("language-server-settings").server_settings) do
			lsp[server].setup({ on_attach = on_attach, capabilities = capabilities, settings = settings })
		end

		-- Rice
		local signs = { Error = "●", Warn = "●", Hint = "●", Info = "●" }
		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
		end
	end,
}
