M = {}

M.server_settings = {
	["lua_ls"] = {
		Lua = {
			diagnostics = { globals = { "vim" } },
			workspace = { library = { vim.env.VIMRUNTIME } },
			telemetry = { enable = false },
		},
	},
	["rust_analyzer"] = {},
    ["hls"] = {},
	["clangd"] = {},
	["taplo"] = {},
	["html"] = {},
	["emmet_ls"] = {},
}

M.servers = {}
for key, _ in pairs(M.server_settings) do
	table.insert(M.servers, key)
end

return M
