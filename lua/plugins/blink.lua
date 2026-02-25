return {
	"saghen/blink.cmp",
	version = "1.*",
	opts = {
		keymap = { preset = "default" },
		sources = {
			default = { 'lsp', 'path', 'snippets', 'buffer' },
		},
		completion = {
			menu = {
				draw = {
					components = {
						kind_icon = {
							text = function(ctx)
								local kind_icon, _, _ = require('mini.icons').get('lsp', ctx.kind)
								return kind_icon
							end,
							-- (optional) use highlights from mini.icons
							highlight = function(ctx)
								local _, hl, _ = require('mini.icons').get('lsp', ctx.kind)
								return hl
							end,
						},
						kind = {
							-- (optional) use highlights from mini.icons
							highlight = function(ctx)
								local _, hl, _ = require('mini.icons').get('lsp', ctx.kind)
								return hl
							end,
						}
					}
				}
			}
		},

		-- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
		-- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
		-- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
		--
		-- See the fuzzy documentation for more information
		fuzzy = { implementation = "prefer_rust_with_warning" }

	}


}
