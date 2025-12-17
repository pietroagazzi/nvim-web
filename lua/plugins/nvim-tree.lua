return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local nvimtree = require("nvim-tree")

      -- Recommended settings from nvim-tree documentation
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      nvimtree.setup({
        view = {
          width = 35,
          relativenumber = true,
        },
        renderer = {
          indent_markers = {
            enable = true,
          },
          icons = {
            glyphs = {
              folder = {
                arrow_closed = "", -- arrow when folder is closed
                arrow_open = "", -- arrow when folder is open
              },
            },
          },
        },
        actions = {
          open_file = {
            window_picker = {
              enable = false,
            },
          },
        },
        filters = {
          custom = { ".DS_Store" },
        },
        git = {
          ignore = false,
        },
      })
    end,
    keys = {
       { "<leader>ee", "<cmd>NvimTreeToggle<CR>", desc = "Toggle file explorer" }, -- toggle file explorer
       { "<leader>ef", "<cmd>NvimTreeFindFile<CR>", desc = "Toggle file explorer on current file" }, -- toggle file explorer on current file
       { "<leader>ec", "<cmd>NvimTreeCollapse<CR>", desc = "Collapse file explorer" }, -- collapse file explorer
       { "<leader>er", "<cmd>NvimTreeRefresh<CR>", desc = "Refresh file explorer" }, -- refresh file explorer
    }
  },
}
