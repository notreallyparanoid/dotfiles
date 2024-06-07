return {
	"neovim/nvim-lspconfig",
	name = "lsp-config",
	config = function()
		local lsp = require("lspconfig")

		-- Server Setup
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		local function on_attach(_, bufnr)
			local opts = { buffer = bufnr, noremap = true, silent = true }
			vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
		end

		local servers = {
			"lua_ls",
			"rust_analyzer",
			"clangd",
		}

		for _, server in pairs(servers) do
			lsp[server].setup({ on_attach = on_attach, capabilities = capabilities })
		end

		-- Rice
		for _, diag in ipairs({ "Error", "Warn", "Info", "Hint" }) do
			vim.fn.sign_define("DiagnosticSign" .. diag, {
				text = "",
				texthl = "DiagnosticSign" .. diag,
				linehl = "",
				numhl = "DiagnosticSign" .. diag,
			})
		end
	end,
}
