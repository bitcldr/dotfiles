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

    opts.formatters.eslint_d = {
      condition = function(_, ctx)
        return vim.fs.find({
          ".eslintrc", ".eslintrc.js", ".eslintrc.cjs",
          ".eslintrc.json", ".eslintrc.yaml", ".eslintrc.yml",
          "eslint.config.js", "eslint.config.mjs", "eslint.config.cjs",
        }, { path = ctx.dirname, upward = true })[1] ~= nil
      end,
    }
    opts.formatters_by_ft.typescript = { "eslint_d", "prettierd", stop_after_first = true }
    opts.formatters_by_ft.go = { "goimports" }

    return opts
  end,
}
