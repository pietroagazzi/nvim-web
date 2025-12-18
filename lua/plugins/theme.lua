return {
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        style = "night",
        transparent = true,
        terminal_colors = true,
        styles = {
          comments = { italic = true },
          keywords = { italic = true },
          sidebars = "transparent",
          floats = "transparent",
        },
        on_highlights = function(hl, c)
          -- Copilot suggestions with subtle opacity
          hl.CopilotSuggestion = {
            fg = c.dark3,
            italic = true,
          }

          -- NvimTree transparent integration
          hl.NvimTreeNormal = { bg = c.none }
          hl.NvimTreeEndOfBuffer = { bg = c.none }
          hl.NvimTreeVertSplit = { fg = c.bg_dark, bg = c.none }

          -- Telescope transparent integration
          hl.TelescopeNormal = { bg = c.none }
          hl.TelescopeBorder = { fg = c.border_highlight, bg = c.none }
          hl.TelescopePromptNormal = { bg = c.none }
          hl.TelescopePromptBorder = { fg = c.border_highlight, bg = c.none }
          hl.TelescopeResultsNormal = { bg = c.none }
          hl.TelescopeResultsBorder = { fg = c.border_highlight, bg = c.none }
          hl.TelescopePreviewNormal = { bg = c.none }
          hl.TelescopePreviewBorder = { fg = c.border_highlight, bg = c.none }

          -- WhichKey transparent
          hl.WhichKeyFloat = { bg = c.none }

          -- Floating windows
          hl.NormalFloat = { bg = c.none }
          hl.FloatBorder = { fg = c.border_highlight, bg = c.none }
        end,
      })
      vim.cmd("colorscheme tokyonight")
    end,
  },
}
