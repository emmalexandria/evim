vim.api.nvim_create_autocmd("ModeChanged", {
	pattern = "*:n",
	callback = function()
		vim.o.relativenumber = true
	end,
	desc = "Set relative numbering in normal/command mode",
})

vim.api.nvim_create_autocmd("ModeChanged", {
	pattern = "*:i",
	callback = function()
		vim.o.relativenumber = false
	end,
	desc = "Se absolute numbering in Insert mode",
})

-- Absolute numbering for Visual select mode
vim.api.nvim_create_autocmd("ModeChanged", {
	pattern = "*:vs",
	callback = function()
		vim.o.relativenumber = false
	end,
	desc = "Set absolute numbering in Visual select mode",
})

-- Relative numbering for Visual block mode
vim.api.nvim_create_autocmd("ModeChanged", {
	pattern = "*:v",
	callback = function()
		-- Check if we're in visual block mode specifically
		local mode = vim.fn.mode()
		if mode == "\22" then -- Visual block mode (Ctrl-V)
			vim.o.relativenumber = true
		end
	end,
	desc = "Set relative numbering in Visual block mode",
})

vim.api.nvim_create_autocmd("VimEnter", {
	pattern = "*",
	callback = function()
		pid = os.getenv("KITTY_PID")
		port = "unix:/tmp/kittyrc-" .. pid 
		vim.fn.system("kitty @ --to " .. port .. " set-spacing padding=0")
	end,
	desc = "Disable Kitty padding on VimEnter"
})

vim.api.nvim_create_autocmd("VimLeave", {
	pattern = "*",
	callback = function()
		pid = os.getenv("KITTY_PID")
		port = "unix:/tmp/kittyrc-" .. pid 
		vim.fn.system("kitty @ --to " .. port .. " set-spacing padding=16")
	end	,
	desc = "Disable Kitty padding on VimEnter"
})
