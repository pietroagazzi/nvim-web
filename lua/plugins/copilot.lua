return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 75,
        keymap = {
          accept = "<M-l>", -- Alt-l to accept suggestion
          accept_word = false,
          accept_line = false,
          next = "<M-]>",
          prev = "<M-[>",
          dismiss = "<C-]>",
        },
      },
      -- Disable Copilot for VCS commit messages (should be written manually)
      -- and other non-code filetypes where AI suggestions are not useful
      filetypes = {
        yaml = true,
        markdown = true,
        help = false,
        gitcommit = false,
        gitrebase = false,
        hgcommit = false,
        svn = false,
        cvs = false,
        ["."] = false,
      },
    })

    -- Reduce Copilot suggestion opacity for better visibility
    vim.api.nvim_set_hl(0, "CopilotSuggestion", {
      fg = "#555555",
      ctermfg = 8,
      italic = true,
    })
  end,
}
