return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		picker = {
			preview = false,
		},
		animate = {},
		dashboard = {
			preset = {
				header = [[
      ___                                      ___     
     /  /\          ___            ___        /  /\    
    /  /::\        /  /\          /__/\      /  /::|   
   /  /:/\:\      /  /:/          \__\:\    /  /:|:|   
  /  /::\ \:\    /  /:/           /  /::\  /  /:/|:|__ 
 /__/:/\:\ \:\  /__/:/  ___    __/  /:/\/ /__/:/_|::::\
 \  \:\ \:\_\/  |  |:| /  /\  /__/\/:/~~  \__\/  /~~/:/
  \  \:\ \:\    |  |:|/  /:/  \  \::/           /  /:/ 
   \  \:\_\/    |__|:|__/:/    \  \:\          /  /:/  
    \  \:\       \__\::::/      \__\/         /__/:/   
     \__\/           ~~~~                     \__\/    
        ]],
			},
		},
		notifier = {},
		terminal = {},
	},
	keys = {
		{
			"<leader><leader>", function() Snacks.picker.files({}) end, desc = "Open file picker"
		},
		{
			"<leader>b", function() Snacks.picker.buffers({}) end, desc = "Open buffer picker"
		}	
	}
}
