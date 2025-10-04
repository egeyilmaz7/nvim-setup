require("config.options")
require("core.lazy")
require("core.lsp")
require("config.mappings")
require("config.autocmd")


require("tiny-inline-diagnostic").setup({
    -- ...
    signs = {
      left = "",
      right = "",
      diag = "●",
      arrow = "    ",
      up_arrow = "    ",
      vertical = " │",
      vertical_end = " └",
    },
    blend = {
      factor = 0.22,
    },
    -- ...
  })