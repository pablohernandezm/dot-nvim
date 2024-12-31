return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      'css',
      'typescript',
      'javascript',
      'html',
      'svelte',
      'bash',
      'sql',
    }
  },
  config = function(_, opts)
    require 'nvim-treesitter.configs'.setup(opts)
  end
}
