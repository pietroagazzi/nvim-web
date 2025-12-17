return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {
    preset = "modern",
    spec = {
      { "<leader>f", group = "find/files" },
      { "<leader>s", group = "split" },
      { "<leader>t", group = "tab" },
      { "<leader>c", group = "code" },
      { "<leader>r", group = "rename/restart" },
      { "<leader>e", group = "explorer" },
      { "<leader>g", group = "git" },
      { "<leader>x", group = "diagnostics" },
    },
  },
}
