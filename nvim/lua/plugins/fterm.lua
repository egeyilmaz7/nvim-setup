return {
    "numToStr/FTerm.nvim",
    config = function()
        local fterm = require("FTerm")
        
        -- Clear floating window backgrounds
        vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'NONE', fg = '#ffffff' })
        vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'NONE' })
        
        fterm.setup({
            border = 'single',
            dimensions = {
                height = 0.9,
                width = 0.9,
            },
            blend = 0,
        })
        
        _G.htop = fterm:new({
            ft = 'fterm_htop',
            cmd = "htop",
        })
    end,
}