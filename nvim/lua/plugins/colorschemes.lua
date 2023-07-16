return {
	{
		"marko-cerovac/material.nvim",
		name = "material",
		lazy = false,
		priority = 1000,
		config = function()
			vim.opt.termguicolors = true
			vim.g.material_style = "darker"
			require('material').setup({
				styles = {
					comments = { italic = false }
				},
				plugins = {
					"nvim-cmp",
					"nvim-web-devicons",
					"telescope",
				},
				disable = {
					background = false,
					term_colors = false,
				},
				lualine_style = 'stealth'
			})

			vim.cmd("colorscheme material")

			local keys = require("custom_keys")
			vim.keymap.set('n', keys.toggle_theme, require('material.functions').find_style, {})
		end,
	},
}
