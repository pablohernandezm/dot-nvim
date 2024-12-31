return {
  'stevearc/oil.nvim',
  dependencies = {
    { 'nvim-tree/nvim-web-devicons' },
  },
  config = function()
    require('oil').setup({
      columns = { 'icon' },
      view_options = {
        show_hidden = true,
      },
      keymaps = {
        ['l'] = { 'actions.select' },
        ['q'] = { 'actions.close', mode = 'n' },
        ['g?'] = false,
        ['?'] = { 'actions.show_help', mode = 'n' },
        ['g.'] = false,
        ['<S-h>'] = { 'actions.toggle_hidden', mode = 'n' },
      },
    })

    vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
    vim.keymap.set("n", "<leader>E", require('oil').toggle_float, { desc = "Toggle floating explorer" })
    vim.keymap.set(
      'n', '<leader>e',
      function()
        vim.cmd((vim.bo.filetype == 'oil') and 'bd' or 'Oil')
      end,
      { desc = 'Toggle explorer' }
    )
  end
}
