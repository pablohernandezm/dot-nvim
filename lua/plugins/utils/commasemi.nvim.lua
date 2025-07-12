return {
	{
		"saifulapm/commasemi.nvim",
		lazy = false,
		init = function()
			vim.g.commasemi_disable_commands = true -- disable commands before plugin loads
		end,
		opts = {
			keymaps = true,
			commands = false,
		},
	},
}
