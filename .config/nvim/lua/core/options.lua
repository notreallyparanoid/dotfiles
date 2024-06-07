vim.g.mapleader = " "

vim.opt.nu = true
vim.opt.rnu = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.cindent = true
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"
vim.opt.undofile = true

vim.opt.incsearch = true

vim.opt.scrolloff = 8

--vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50

vim.opt.guicursor = ""
vim.opt.termguicolors = true
vim.opt.cmdheight = 1
vim.opt.showmode = false
vim.opt.cursorline = true
vim.opt.fillchars = "eob: "

vim.opt.pumheight = 20

vim.g.netrw_banner = 0
