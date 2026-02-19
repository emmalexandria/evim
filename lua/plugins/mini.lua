return {
	{
		"nvim-mini/mini.clue",
		version = false,
		opts = {},
	},
	{
		"nvim-mini/mini.files",
		version = false,
		dependencies = {
			"nvim-mini/mini.icons",
		},
		opts = {},
		keys = {
			{ "<leader>e", "<cmd>:lua MiniFiles.open()<cr>", desc = "Open file explorer" },
		},
	},
	{
		"nvim-mini/mini.icons",
		version = false,
		opts = {},
	},
}
