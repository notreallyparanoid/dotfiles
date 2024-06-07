local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

local opts = {
    lockfile = vim.fn.stdpath("config") .. "/.lockfile.json",
    ui = {
        size = { width = 0.8, height = 0.75 },
        backdrop = 100,
        pills = false,
    },
}
require("lazy").setup("plugins", opts)
