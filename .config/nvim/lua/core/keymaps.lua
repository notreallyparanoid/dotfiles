vim.keymap.set("n", "<leader>pp", vim.cmd.Ex)
local function is_search_active()
    local search_pattern = vim.fn.getreg('/')
    return search_pattern ~= '' and search_pattern ~= nil
end

vim.keymap.set("n", "n", function()
	if is_search_active() then
		vim.api.nvim_feedkeys("nzzzv", "n", true)
	end
end)
vim.keymap.set("n", "N", function()
	if is_search_active() then
		vim.api.nvim_feedkeys("Nzzzv", "n", true)
	end
end)
vim.keymap.set("n", "<esc>", function()
	if is_search_active() then
		vim.cmd(":let @/=''")
	else
		return "<esc>"
	end
end, { silent = true })

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
