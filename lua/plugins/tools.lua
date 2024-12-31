return {
	"folke/neodev.nvim",
	{
	  "folke/which-key.nvim",
	  event = "VeryLazy",
	  opts = {
	    -- your configuration comes here
	    -- or leave it empty to use the default settings
	    -- refer to the configuration section below
	  },
	},
	{ "folke/neoconf.nvim", cmd = "Neoconf" },
	'nvim-tree/nvim-web-devicons',
	{
		"nvim-tree/nvim-tree.lua",
		lazy = false,
	},
}
