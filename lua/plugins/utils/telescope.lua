return {
	{
		"nvim-telescope/telescope.nvim",

		dependencies = {
			{ "nvim-lua/plenary.nvim" },
			{ "nvim-tree/nvim-web-devicons", opts = {} },
		},

		keys = {
			{ "<leader>tf", "<cmd>Telescope find_files<cr>", desc = "Telescope find files" },
			{ "<leader>tg", "<cmd>Telescope live_grep<cr>", desc = "Telescope live grep" },
			{ "<leader>th", "<cmd>Telescope help_tags<cr>", desc = "Telescope help tags" },
			{ "<leader>tc", "<cmd>Telescope command_history<cr>", desc = "Telescope command history" },
			{ "<leader>tw", "<cmd>Telescope spell_suggest<cr>", desc = "Telescope word suggest" },

			{ "<leader>lr", "<cmd>Telescope lsp_references<cr>", desc = "Lsp references" },
			{ "<leader>ls", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Lsp document sybols" },
			{ "<leader>lws", "<cmd>Telescope lsp_workspace_symbols<cr>", desc = "Lsp workspace sybols" },
			{
				"<leader>lwd",
				"<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
				desc = "Lsp dynamic workspace sybols",
			},

			{ "<leader>lq", "<cmd>Telescope quickfix<cr>", desc = "Telescope quickfix list" },
			{ "<leader>lx", "<cmd>Telescope diagnostics<cr>", desc = "Lsp diagnostics" },
			{ "<leader>li", "<cmd>Telescope lsp_implementations<cr>", desc = "Lsp implementations" },
			{ "<leader>ld", "<cmd>Telescope lsp_definitions<cr>", desc = "Lsp definitions" },
			{ "<leader>lt", "<cmd>Telescope lsp_type_definitions<cr>", desc = "Lsp type definitions" },
		},

		opts = {},
	},
}
