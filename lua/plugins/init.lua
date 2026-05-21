local w3_header = require "plugins.theme.header"
return {
  {
    "kyazdani42/nvim-web-devicons",
    lazy = true,
  },
  {
    "kylechui/nvim-surround",
    version = false,
    keys = { {
      "S",
      mode = "v",
    }, "ys", "yS", "cs", "ds" },
    config = true,
  },
  {
    "folke/trouble.nvim",
    config = true,
  },
  {
    "NvChad/nvim-colorizer.lua",
    event = { "BufReadPre", "BufNewFile" },
    config = true,
  },
  {
    "tpope/vim-fugitive",
    event = { "BufReadPre", "BufNewFile" },
    version = false,
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup {}
    end,
  },
  {
    "folke/ts-comments.nvim",
    opts = {},
    event = "VeryLazy",
    enabled = vim.fn.has "nvim-0.10.0" == 1,
  },
  {
    "mg979/vim-visual-multi",
    branch = "master",
    event = { "BufReadPost", "BufNewFile" },
  },
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
      require("dashboard").setup {
        config = {
          header = w3_header,
          center = {},
          footer = {},
          preview = {},
          package = {},
        },
      }
    end,
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
  },
}
