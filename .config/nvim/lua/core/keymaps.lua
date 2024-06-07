vim.keymap.set("n", "<leader>pp", vim.cmd.Ex)

vim.keymap.set("n", "<leader>c", ":silent! nohls<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

vim.keymap.set("n", "<leader>x", "<cmd>!chmod u+x %<CR>", { silent = true })
