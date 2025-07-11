return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		keys = {
			{
				"H",
				function()
					vim.cmd("BufferLineCyclePrev")
				end,
				desc = "Previous Buffer",
			},
			{
				"L",
				function()
					vim.cmd("BufferLineCycleNext")
				end,
				desc = "Next buffer",
			},
			{
				"<leader>bh",
				function()
					vim.cmd("BufferLineMovePrev")
				end,
				desc = "Mover hacia atras",
			},
			{
				"<leader>bl",
				function()
					vim.cmd("BufferLineMoveNext")
				end,
				desc = "Mover haca adelante",
			},
			{
				"<leader>b1",
				function()
					require("bufferline").move_to(1)
				end,
				desc = "Go to first buffer",
			},
			{
				"<leader>b$",
				function()
					require("bufferline").move_to(-1)
				end,
				desc = "Go to last buffer",
			},
			{
				"<leader>bse",
				function()
					vim.cmd("BufferLineSortByExtension")
				end,
				desc = "Sort buffers by extension",
			},
			{
				"<leader>bsd",
				function()
					vim.cmd("BufferLineSortByDirectory")
				end,
				desc = "Sort buffers by directory",
			},
		},
		opts = function()
			vim.opt.termguicolors = true
			require("bufferline").setup({})
		end,
	},
}
