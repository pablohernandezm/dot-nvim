local wk = require("which-key")
wk.add({
  { "<leader>f",  group = "file" },
  { "<leader>ff", "<cmd>Telescope find_files<cr>",  desc = "Find File",   mode = "n" },
  { "<leader>fb", function() print("hello") end,    desc = "Foobar" },
  { "<leader>fn", desc = "New File" },
  { "<leader>f1", hidden = true },

  { "<leader>b",  group = "buffers" },
  { "<leader>bc", "<cmd>bd<cr>" },
  { "<leader>bo", "<cmd>BufferLineCloseOthers<cr>", desc = "Close others" },
  { "<leader>bl", "<cmd>BufferLineCloseRight<cr>",  desc = "Close right" },
  { "<leader>bh", "<cmd>BufferLineCloseLeft<cr>",   desc = "Close left" },
  {
    "<leader>ba",
    function()
      for _, e in ipairs(require("bufferline").get_elements().elements) do
        vim.schedule(function()
          vim.cmd("bd " .. e.id)
        end)
      end
    end,
    desc = "Close all"
  },

  { "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
  { "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Previous buffer" },
  {
    mode = { "n", "v" },
    { "<leader>q", "<cmd>q<cr>", desc = "Quit" },
    { "<leader>w", "<cmd>w<cr>", desc = "Write" },
  },
  {
    "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Explorer", mode = "n"
  },
  { "<leader>L",  "<cmd>Lazy<cr>",                       desc = "Lazy",       mode = "n" },
  { "<leader>%",  "<cmd>so ~/.config/nvim/init.lua<cr>", desc = "Reload env", mode = 'n' },

  -- DADBOD
  { "<leader>D",  group = "dadbod" },
  { "<leader>DT", "<cmd>DBUIToggle<cr>",                 desc = "Switch UI" },
  { "<leader>DF", "<cmd>DBUIFindBuffer<cr>",             desc = "Find buffer" },
})
