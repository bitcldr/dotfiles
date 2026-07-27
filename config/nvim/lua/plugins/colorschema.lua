-- ================================================================================================
-- TITLE: melange-nvim
-- ABOUT:
--    Warm, earthy color scheme with careful contrast ratios; supports both dark and light
--    variants and is designed specifically for tree-sitter semantic highlights.
--    https://github.com/savq/melange-nvim
-- ================================================================================================

return {
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 999,
    config = function()
      require("gruvbox").setup({
        contrast = "",
        terminal_colors = true,
        styles = {
          comments = { italic = true },
          keywords = { bold = true },
        },
        overrides = {
          SignColumn = { bg = "NONE" },

          DiagnosticSignError = { bg = "NONE" },
          DiagnosticSignWarn = { bg = "NONE" },
          DiagnosticSignInfo = { bg = "NONE" },
          DiagnosticSignHint = { bg = "NONE" },
          DiagnosticSignOk = { bg = "NONE" },

          GitSignsAdd = { bg = "NONE" },
          GitSignsChange = { bg = "NONE" },
          GitSignsDelete = { bg = "NONE" },

          Keyword = { fg = "#61afef" },
          Conditional = { fg = "#61afef" },
          Repeat = { fg = "#61afef" },

          ["@keyword"] = { fg = "#61afef" },
          ["@keyword.function"] = { fg = "#61afef" },
          ["@keyword.return"] = { fg = "#61afef" },
        },
      })

      vim.o.background = "dark"
      vim.cmd.colorscheme("gruvbox")
    end,
  },
  {
    "savq/melange-nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme melange")
    end,
  },
}
