return {
	{
		"mason-org/mason.nvim",
		opts = {},
	},
{
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
	opts = {
		highlight = {
			enable = true
		},
		indent = {
			enable = true
		}
	}
}
}
