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

        -- Dadbod group
        { "<leader>D", group = "dadbod" },
      })
    end
  },
}
