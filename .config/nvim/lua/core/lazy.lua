local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	defaults = { lazy = false },
	pkg = { sources = { "lazy" } },
	spec = { { import = "plugins" } },
	lockfile = vim.fn.stdpath("config") .. "/.lazylock.json",
	change_detection = { notify = false },
	install = { colorscheme = { "habamax" } },
	ui = {
		wrap = false,
		backdrop = 100,
	},
})
