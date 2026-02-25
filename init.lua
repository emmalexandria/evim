require("config.lazy")
require("config.opts")
require("config.autocmd")

vim.cmd("colorscheme neverglade")

vim.lsp.enable("jdtls")
vim.lsp.enable("lua_ls")
vim.lsp.enable("cmake")
vim.lsp.enable("mesonlsp")
vim.lsp.enable("zls")
vim.lsp.enable("texlab")
