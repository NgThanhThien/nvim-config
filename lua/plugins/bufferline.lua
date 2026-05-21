return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = { "nvim-tree/nvim-web-devicons", "catppuccin" },
  lazy = false,
  config = function()
    local mocha = require("catppuccin.palettes").get_palette "mocha"
    require("bufferline").setup {
      highlights = require("catppuccin.special.bufferline").get_theme {
        styles = { "italic", "bold" },
      },
    }
  end,
}
