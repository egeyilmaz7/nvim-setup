--enable lsps
vim.lsp.enable({
  "rust_analyzer",
  "taplo",
})

--rust_analyzer config
vim.lsp.config("rust_analyzer", {
  cmd = { "rust-analyzer" },
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        allFeatures = true,
        loadOutDirsFromCheck = true,
        buildScripts = { enable = true },
      },
      check = {
        command = "clippy",
        extraArgs = { "--no-deps" },
      },
      procMacro = { enable = true },
      diagnostics = { enable = true },
    },
  },
  -- Disable ALL rust-analyzer handlers that spam messages
  handlers = {
    ["$/progress"] = function() end,
    ["experimental/serverStatus"] = function() end,
    ["rust-analyzer/serverStatus"] = function() end,
  },
  -- Set flags to reduce chattiness
  flags = {
    debounce_text_changes = 150,
  },
})

-- Filter out rust-analyzer spam from notifications
local original_notify = vim.notify
vim.notify = function(msg, level, opts)
  -- Block messages containing rust-analyzer spam keywords
  if type(msg) == "string" then
    if msg:match("rust%-analyzer") 
       or msg:match("prime_caches")
       or msg:match("overly long loop")
       or msg:match("ms") and msg:match("cancelled") then
      return
    end
  end
  original_notify(msg, level, opts)
end

-- diagnostics config with modern signs
vim.diagnostic.config({
  underline = true,
  virtual_text = false,
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = " ",
      [vim.diagnostic.severity.WARN]  = " ",
      [vim.diagnostic.severity.INFO]  = " ",
      [vim.diagnostic.severity.HINT]  = " ",
    },
  },
  update_in_insert = false,
  severity_sort = true,
})

-- toml support 
vim.lsp.config("taplo", {})