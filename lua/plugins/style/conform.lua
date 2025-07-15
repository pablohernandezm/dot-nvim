return {
	{
		"stevearc/conform.nvim",

		lazy = false,
		priority = 1000,

		keys = {
			{
				"<leader>bf",
				function()
					require("conform").format({ async = true, lsp_format = "fallback" })
				end,
				mode = "",
				desc = "Format buffer",
			},
		},

		config = function()
			---@module "conform"
			---@type conform.setupOpts
			local options = {
				formatters_by_ft = {
					-- General
					nix = { "alejandra" },
					lua = { "stylua" },
					rs = { "rustfmt" },
					sql = { "pg_format", "deno_fmt" },
					astro = { "deno_fmt" },
					html = { "deno_fmt" },
					ipynb = { "deno_fmt" },
					javascript = { "deno_fmt" },
					javascriptreact = { "deno_fmt" },
					markdown = { "deno_fmt" },
					njk = { "deno_fmt" },
					svelte = { "deno_fmt" },
					typescript = { "deno_fmt" },
					typescriptreact = { "deno_fmt" },
					vue = { "deno_fmt" },
					vto = { "deno_fmt" },
					yaml = { "deno_fmt" },
					typst = { "typstyle" },
					-- CSS variants
					css = { "deno_fmt" },
					less = { "deno_fmt" },
					sass = { "deno_fmt" },
					scss = { "deno_fmt" },
					-- Json variants
					json = { "deno_fmt" },
					jsonc = { "deno_fmt" },
				},
			}

			require("conform").setup(options)

			vim.api.nvim_create_autocmd("BufWritePre", {
				pattern = "*",
				callback = function(args)
					require("conform").format({ bufnr = args.buf, lsp_format = "fallback" })
				end,
			})
		end,
	},
}
