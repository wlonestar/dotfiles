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
					background = true,
					term_colors = true,
				},
				lualine_style = 'stealth'
			})

			vim.cmd("colorscheme material")
			vim.g.material_disable_background = true

			local keys = require("custom_keys")
			vim.keymap.set('n', keys.toggle_theme, require('material.functions').find_style, {})
		end,
	},
}
