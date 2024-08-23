-- nvim-colorizer
-- https://github.com/norcalli/nvim-colorizer.lua
return {

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
}
-- vim: ts=2 sts=2 sw=2 et
