-- lualine.nvim
-- https://github.com/nvim-lualine/lualine.nvim
return {

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
-- vim: ts=2 sts=2 sw=2 et
