return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "ts_ls",
          "phpactor",
          "pyright",
          "html",
          "cssls",
          "lua_ls",
        },
      })

      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      require("mason-lspconfig").setup_handlers({
        -- Default handler for all installed servers
        function(server_name)
          lspconfig[server_name].setup({
            capabilities = capabilities,
          })
        end,
        -- Specific handler for lua_ls
        ["lua_ls"] = function()
          lspconfig.lua_ls.setup({
            capabilities = capabilities,
            settings = {
              Lua = {
                diagnostics = {
                  globals = { "vim" },
                },
              },
            },
          })
        end,
      })

      -- Keymaps for LSP (only when attached)
      vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup("UserLspConfig", {}),
        callback = function(ev)
          -- Helper to define mappings
          local opts = { buffer = ev.buf }
          local map = function(mode, lhs, rhs, desc)
            opts.desc = desc
            vim.keymap.set(mode, lhs, rhs, opts)
          end

          -- Navigation
          map("n", "gd", vim.lsp.buf.definition, "Go to Definition")
          map("n", "gD", vim.lsp.buf.declaration, "Go to Declaration")
          map("n", "gr", vim.lsp.buf.references, "References")
          map("n", "gi", vim.lsp.buf.implementation, "Go to Implementation")

          -- Information
          map("n", "K", vim.lsp.buf.hover, "Hover Documentation")
          map("n", "<C-k>", vim.lsp.buf.signature_help, "Signature Help")

          -- Actions
          map("n", "<leader>rn", vim.lsp.buf.rename, "Rename Symbol")
          map("n", "<leader>ca", vim.lsp.buf.code_action, "Code Action")
          map({ "n", "v" }, "<leader>f", function()
            vim.lsp.buf.format({ async = true })
          end, "Format Buffer")
        end,
      })
    end,
  },
}
