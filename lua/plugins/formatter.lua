return {
  {
    "nvimtools/none-ls.nvim", -- Replaces null-ls
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
       "jay-babu/mason-null-ls.nvim",
    },
    config = function()
      local null_ls = require("null-ls")
      local mason_null_ls = require("mason-null-ls")

      local formatting = null_ls.builtins.formatting
      
      mason_null_ls.setup({
        ensure_installed = {
           "prettier",
           "stylua",
           "black",
           "isort",
        }
      })

      null_ls.setup({
        sources = {
          formatting.prettier.with({
             extra_filetypes = { "svelte" },
          }),
          formatting.stylua,
          formatting.isort,
          formatting.black,
        },
        on_attach = function(client, bufnr)
          if client.supports_method("textDocument/formatting") then
             vim.api.nvim_create_autocmd("BufWritePre", {
                group = vim.api.nvim_create_augroup("LspFormatting", { clear = true }),
                buffer = bufnr,
                callback = function()
                   vim.lsp.buf.format({ 
                      async = false,
                      filter = function(c)
                         return c.name == "null-ls"
                      end,
                   })
                end
             })
          end
        end,
      })
    end,
  },
}
