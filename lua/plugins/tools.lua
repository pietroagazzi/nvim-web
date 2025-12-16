return {
  "nvim-lua/plenary.nvim",

  -- File explorer
  {
    "nvim-tree/nvim-tree.lua",
    config = function()
      require("nvim-tree").setup()
    end,
  },

  -- Fuzzy finder (fondamentale)
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  -- Git
  {
    "lewis6991/gitsigns.nvim",
    config = true,
  },
}

