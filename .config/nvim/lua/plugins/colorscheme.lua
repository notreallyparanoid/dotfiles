return {
    "neanias/everforest-nvim",
    lazy = false,
    priority = 1000,
    name = "everforest",
    opts = {
        background = "hard",
        italics = true,
        float_style = "dark",
    },
    init = function()
        vim.cmd("colorscheme everforest")
    end,
}
