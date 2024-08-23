-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      vim.cmd.colorscheme 'gruvbox'

      vim.cmd.hi 'Comment gui=none'
    end,
  },

  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup {
        'css',
        'scss',
        'html',
        'javascript',
      }
    end,
  },

  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        icons_enabled = vim.g.have_nerd_font,
        theme = 'gruvbox',
      }
    end,
  },
}
