return {
  'goolord/alpha-nvim',
  config = function()
    require('alpha').setup(require('alpha.themes.dashboard').config)
    local dashboard = require 'alpha.themes.dashboard'
    dashboard.section.header.val = {
      [[          ▀████▀▄▄              ▄█ ]],
      [[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
      [[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
      [[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
      [[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
      [[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
      [[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
      [[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
      [[   █   █  █      ▄▄           ▄▀   ]],
    }
    dashboard.section.buttons.val = {
      dashboard.button('f', '  Wind file', ':Telescope find_files <CR>'),
      dashboard.button('e', '  New file', ':ene <BAR> startinsert <CR>'),
      dashboard.button('r', '  Recently used files', ':Telescope oldfiles <CR>'),
      dashboard.button('t', '  FInd text!', ':Telescope live_grep <CR>'),
      dashboard.button('p', '  configoratjun', ':e ~/.config/nvim/init.vim<CR>'),
      dashboard.button('q', '  Quit Neovim', ':qa<CR>'),
    }
  end,
}
