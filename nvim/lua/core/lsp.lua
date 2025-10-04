-- write your lsps in here
vim.lsp.enable({
  "lua_ls",
  "rust_analyzer",
  "taplo",
})

--rust language support 
vim.lsp.config("rust_analyzer", {
  cmd = { "rust-analyzer" }, 
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        allFeatures = true,
        loadOutDirsFromCheck = true,
        buildScripts = {
          enable = true,
        },
      },
      check = {
        command = "clippy",
        extraArgs = { "--no-deps" }
      },
      procMacro = {
        enable = true,
        ignored = {
          leptos_macro = {
            "component",
            "server",
          },
        },
      },
      diagnostics = {
        enable = true,
        experimental = {
          enable = false,
        },
      },
    },
  },
})

-- hide overly long loop msg 
vim.lsp.handlers["window/logMessage"] = function(err, result, ctx, config)
  if result and result.message and result.message:match("overly long loop") then
    return
  end
  return vim.lsp.handlers["window/logMessage"](err, result, ctx, config)
end

-- Filter notifications
local notify = vim.notify
vim.notify = function(msg, ...)
  if msg:match("overly long loop") then
    return
  end
  notify(msg, ...)
end

-- diagnostic config
vim.diagnostic.config({
  underline = false,
  virtual_text = false,
  update_in_insert = false,
  severity_sort = true,
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = " ",
      [vim.diagnostic.severity.WARN] = " ",
      [vim.diagnostic.severity.HINT] = " ",
      [vim.diagnostic.severity.INFO] = " ",
    }
  }
})