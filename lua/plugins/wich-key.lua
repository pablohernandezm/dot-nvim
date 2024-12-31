return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {},
    config = function(_, opts)
      local wk = require 'which-key'
      wk.setup(opts)

      wk.add({
        -- Buffer group
        { "<leader>b", group = "buffers" },
        { "<leader>L", "<cmd>Lazy<cr>",  desc = "Lazy", mode = "n" },

        -- Dadbod group
        { "<leader>D", group = "dadbod" },
      })
    end
  },
}
