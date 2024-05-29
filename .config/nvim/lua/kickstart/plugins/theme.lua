return {
  {
    'folke/tokyonight.nvim',
    priority = 1000, -- make sure to load this before all the other start plugins
    init = function()
      vim.cmd.colorscheme 'tokyonight-night'
      vim.cmd.hi 'Comment gui=none'
    end,

    --   'tiagovla/tokyodark.nvim',
    --   opts = {
    --     -- custom options here
    --   },
    --   config = function(_, opts)
    --     require('tokyodark').setup(opts) -- calling setup is optional
    --     vim.cmd [[colorscheme tokyodark]]
    --   end,
  },
}
