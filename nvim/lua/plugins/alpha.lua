return {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local alpha = require('alpha')
        local dashboard = require("alpha.themes.dashboard")

        dashboard.section.header.val = {

        }
        
        dashboard.section.buttons.val = {
            dashboard.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
            dashboard.button("f", "󰍉  Find file", ":Telescope find_files<CR>"),
            dashboard.button("b", "  Browse cwd", ":NvimTreeOpen<CR>"),
            dashboard.button("c", "  Config", ":e ~/.config/nvim/<CR>"),
            dashboard.button("m", "  Mappings", ":e ~/.config/nvim/lua/config/mappings.lua<CR>"),
            dashboard.button("p", "  Plugins", ":Lazy<CR>"),
            dashboard.button("q", "󰅙  Quit", ":q!<CR>"),
        }
        
        dashboard.section.buttons.opts.hl = "Keyword"
        dashboard.opts.opts.noautocmd = true
        alpha.setup(dashboard.opts)
    end,
}
