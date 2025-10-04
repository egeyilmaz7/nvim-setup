vim.lsp.enable({
  "lua_ls",
  "rust_analyzer",
})

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
          checkOnSave = {
            command = "clippy",
          },
          procMacro = {
            enable = true,
          },
        },
      },
    })
    

    vim.diagnostic.config(
      {
        underline = false,
        virtual_text = false,
        update_in_insert = false,
        severity_sort = true,
        signs = {
          text = {
            [vim.diagnostic.severity.ERROR] = " ",
            [vim.diagnostic.severity.WARN] = " ",
            [vim.diagnostic.severity.HINT] = " ",
            [vim.diagnostic.severity.INFO] = " ",
          }
        }
      }
    )
    
    vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
      virtual_text = false,
    })


    