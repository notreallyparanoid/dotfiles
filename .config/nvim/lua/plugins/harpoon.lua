return {
    "ThePrimeagen/harpoon",
    name = "harpoon",
    dependencies = {
        { "nvim-lua/plenary.nvim", name = "plenary" },
    },
    config = function()
        require("harpoon").setup({})
        vim.keymap.set("n", "<leader>a", require("harpoon.mark").add_file)
        vim.keymap.set("n", "<leader>/", require("harpoon.ui").toggle_quick_menu)
    end,
}
