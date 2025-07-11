return {
	{ "echasnovski/mini.icons", version = false },
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		opts = {},

		config = function(_, opts)
			local wk = require("which-key")
			wk.setup(opts)

			wk.add({
				-- Buffer group
				{ "<leader>b", group = "buffers", icon = "󰓩" },

				-- Buffer group
				{ "<leader>b", group = "buffers", icon = "󰓩" },

				-- Git group
				{ "<leader>g", group = "Git", icon = "" },

				-- Lsp group
				{ "<leader>l", group = "lsp", icon = "" },

				-- Telescope group
				{ "<leader>t", group = "telescope" },

				-- Trouble group
				{ "<leader>x", group = "trouble", icon = "󱪘" },

				-- File key maps
				{ "<leader>w", "<cmd>w<cr>", desc = "Save file", mode = "n", icon = "" },
				{ "<leader>W", "<cmd>w!<cr>", desc = "Save file forced", mode = "n", icon = "" },
				{ "<leader>q", "<cmd>q<cr>", desc = "Quit", mode = "n" },
				{ "<leader>Q", "<cmd>q!<cr>", desc = "Force quit", mode = "n" },

				-- Buffer key maps
				{ "<leader>bc", "<cmd>bd<cr>", desc = "Close buffer", mode = "n" },
				{ "<leader>bn", "<cmd>bnext<cr>", desc = "Next buffer", mode = "n" },
				{ "<leader>bp", "<cmd>bprev<cr>", desc = "Previous buffer", mode = "n" },

				-- Lazy
				{
					"<leader>L",
					"<cmd>Lazy<cr>",
					desc = "Lazy",
					mode = "n",
				},
			})
		end,
	},
}
