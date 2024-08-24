return {
  {
    'goolord/alpha-nvim',
    -- dependencies = { 'echasnovski/mini.icons' },
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local startify = require 'alpha.themes.startify'
      -- available: devicons, mini, default is mini
      -- if provider not loaded and enabled is true, it will try to use another provider
      startify.file_icons.provider = 'devicons'

      startify.section.header.val = {
        [[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
        [[ ████╗  ██║██╔════╝██╔════╝ ██║   ██║██║████╗ ████║ ]],
        [[ ██╔██╗ ██║█████╗  ██║  ███╗██║   ██║██║██╔████╔██║ ]],
        [[ ██║╚██╗██║██╔══╝  ██║   ██║██║   ██║██║██║╚██╔╝██║ ]],
        [[ ██║ ╚████║███████╗╚██████╔╝╚██████╔╝██║██║ ╚═╝ ██║ ]],
        [[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝  ╚═════╝ ╚═╝╚═╝     ╚═╝ ]],

        '',
        string.format('\tCurrent Directory: %s', vim.fn.getcwd()),
      }
      startify.section.mru.opts = {
        ignore = function()
          return false
        end,
      }

      startify.section.mru.val = { startify.mru(10) }

      require('alpha').setup(startify.config)
    end,
  },
}
