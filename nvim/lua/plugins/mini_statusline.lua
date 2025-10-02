return {
    "echasnovski/mini.statusline",
    version = false,
    config = function()
      require("mini.statusline").setup({
        use_icons = true, -- set false if you don’t want Nerd Font icons
      })
    end,
  }