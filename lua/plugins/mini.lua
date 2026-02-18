return {
	{
		"nvim-mini/mini.clue",
		version = false,
		opts = {},
	},
	{
		"nvim-mini/mini.pick",
		version = false,
		opts = {},
		keys = {
			{
				"<leader><leader>",
				"<cmd>:lua MiniPick.builtin.files({tool = rg})<cr>",
			},
		},
	},
	{
		"nvim-mini/mini.files",
		version = false,
		dependencies = {
			"nvim-mini/mini.icons",
		},
		opts = {},
		keys = {
			{ "<leader>e", "<cmd>:lua MiniFiles.open()<cr>" },
		},
	},
	{
		"nvim-mini/mini.icons",
		version = false,
		opts = {},
	},
}
