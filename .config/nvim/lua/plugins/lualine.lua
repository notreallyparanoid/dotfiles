return {
    "nvim-lualine/lualine.nvim",
    name = "lualine",
    lazy = false,
    priority = 1000,
    opts = {
        options = {
            component_separators = { left = "", right = "" },
            section_separators = { left = "", right = "" },
            globalstatus = true,
        },
        sections = {
            lualine_a = { "mode", "selectioncount" },
            lualine_b = { "branch", "diff" },
            lualine_c = {},
            lualine_x = {},
            lualine_y = { { "diagnostics", symbols = { error = "● ", warn = "● ", info = "● ", hint = "● " } } },
            lualine_z = { "searchcount", "filename" },
        },
    },
}
