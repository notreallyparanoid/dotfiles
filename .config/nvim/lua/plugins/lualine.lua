return {
    "nvim-lualine/lualine.nvim",
    name = "lualine",
    lazy = false,
    priority = 1000,
    opts = {
        options = {
            theme = "rose-pine-alt",
            component_separators = { left = "•", right = "•" },
            section_separators = { left = "", right = "" },
            globalstatus = true,
        },
        sections = {
            lualine_a = { "mode", "branch", "diff" },
            lualine_b = {},
            lualine_c = {},
            lualine_x = {},
            lualine_y = {},
            lualine_z = { "searchcount", "filename" },
        },
    },
}
