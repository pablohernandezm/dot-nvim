local wk = require("which-key")
wk.add({
  {
    mode = { "n", "v" },
    { "<leader>q", "<cmd>q<cr>",                          desc = "Quit" },
    { "<leader>w", "<cmd>w<cr>",                          desc = "Write" },
    { "<leader>%", "<cmd>so ~/.config/nvim/init.lua<cr>", desc = "Reload env" },
  },

  -- Buffer group
  { "<leader>b",  group = "buffers" },
  { "<leader>bc", "<cmd>bd<cr>",    desc = 'Close buffer' },

  { "<leader>L",  "<cmd>Lazy<cr>",  desc = "Lazy",        mode = "n" },

  -- Dadbod group
  { "<leader>D",  group = "dadbod" },
})
