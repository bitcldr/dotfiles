-- ================================================================================================
-- TITLE: conform.nvim
-- ABOUT:
--    Lightweight, extensible formatter plugin; integrates with LSP and supports per-filetype
--    formatter chains with fallback and async support.
--    https://github.com/stevearc/conform.nvim
-- ================================================================================================

return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    opts.formatters_by_ft = opts.formatters_by_ft or {}

    opts.formatters_by_ft.typescript = {
      "eslint",
      "vtsls",
      "typescript-language-server",
      "typos",
    }

    return opts
  end,
}
