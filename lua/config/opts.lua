vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.expandtab = false
vim.o.undofile = true
vim.o.clipboard = "unnamedplus"
vim.o.autoindent = true
vim.o.smartindent = false
vim.o.mouse = "a"

vim.o.relativenumber = true
vim.o.number = true

vim.diagnostic.config({
	virtual_text = {
		severity = { min = vim.diagnostic.severity.HINT },
		source = true,
	},
})
