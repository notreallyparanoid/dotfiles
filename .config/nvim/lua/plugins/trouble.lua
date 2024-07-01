return {
    "folke/trouble.nvim",
    name = "trouble",
    opts = {
        keys = { ["esc"] = "close" }
    },
    keys = {
        {
            "<leader>t",
            "<cmd>Trouble diagnostics toggle<CR>",
            desc = "Diagnostics"
        }
    }
}
