return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup {
      -- latte / mocha / frappe /macchiato
      flavour = "mocha",
      transparent_background = false,
      no_italic = false, -- Force no italic
      no_bold = false, -- Force no bold
      no_underline = false, -- Force no underline
      integrations = {
        hop = false,
        lsp_saga = false,
        indent_blankline = {
          enabled = true,
          scope_color = "", -- catppuccin color (eg. `lavender`) Default: text
          colored_indent_levels = false,
        },
        telescope = {
          enabled = true,
        },
        treesitter = true,
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
            ok = { "italic" },
          },
          underlines = {
            errors = { "underline" },
            hints = { "underline" },
            warnings = { "underline" },
            information = { "underline" },
            ok = { "underline" },
          },
          inlay_hints = {
            background = true,
          },
        },
      },
      custom_highlights = function(colors)
        return {
          -- Change the visual selection color here (e.g., surface1, surface2, overlay0)

          -- Matches VS Code tokenColorCustomizations for 'variable'
          ["@variable"] = { fg = "#ff9c83", style = { "italic" } },
          Identifier = { fg = "#ff9c83", style = { "italic" } },
       
  
        }
      end,
    }
    vim.cmd.colorscheme "catppuccin"
  end,
}
