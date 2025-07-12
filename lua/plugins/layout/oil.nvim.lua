-- Function that retrieves the current directory (CWD)
function _G.get_oil_winbar()
	local bufnr = vim.api.nvim_win_get_buf(vim.g.statusline_winid)
	local dir = require("oil").get_current_dir(bufnr)
	if dir then
		return vim.fn.fnamemodify(dir, ":~")
	else
		-- If there is no current directory (e.g. over ssh), just show the buffer name
		return vim.api.nvim_buf_get_name(0)
	end
end

return {
	{
		"stevearc/oil.nvim",
		dependencies = { { "echasnovski/mini.icons", opts = {} } },

		keys = {
			{
				"<leader>E",
				function()
					require("oil").toggle_float()
				end,
				desc = "Toggle floating explorer",
			},
			{
				"<leader>e",
				function()
					vim.cmd((vim.bo.filetype == "oil") and "bd" or "Oil")
				end,
				desc = "Toggle explorer",
			},
		},

		config = function()
			require("oil").setup({
				watch_for_changes = true,
				win_options = {
					winbar = "%!v:lua.get_oil_winbar()",
				},
				keymaps = {
					["L"] = { "actions.select" },
					["H"] = { "actions.parent" },
					["q"] = { "actions.close" },
				},
			})
		end,
	},
	{
		"benomahony/oil-git.nvim",
		dependencies = { "stevearc/oil.nvim" },
	},
	{
		"JezerM/oil-lsp-diagnostics.nvim",
		dependencies = { "stevearc/oil.nvim" },
		opts = {
			diagnostic_symbols = {
				error = "󰞏",
				warn = "",
				info = "",
				hint = "",
			},
		},
	},
}
