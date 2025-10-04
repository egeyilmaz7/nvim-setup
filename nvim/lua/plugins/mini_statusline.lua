return {
  'echasnovski/mini.statusline',
  config = function()
      require('mini.statusline').setup({
          content = {
              active = nil,  -- Use default
          },
          use_icons = true,
          set_vim_settings = true,
      })
  end
}