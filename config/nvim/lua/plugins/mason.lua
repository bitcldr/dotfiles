-- ================================================================================================
-- TITLE: mason.nvim
-- ABOUT:
--    Portable package manager for Neovim; installs and manages LSP servers, DAP adapters,
--    linters, and formatters from a unified registry.
--    https://github.com/mason-org/mason.nvim
-- ================================================================================================

return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",                     -- Lua
        "shellcheck",                 -- Shell
        "shfmt",                      -- Shell
        "hadolint",                   -- Dockerfile
        "flake8",                     -- Python
        "typescript-language-server", -- TypeScript / JavaScript
        "prettierd",                  -- TypeScript / JavaScript / CSS / HTML
        "eslint_d",                   -- TypeScript / JavaScript
        "gopls",                      -- Go (LSP)
        "goimports",                  -- Go (formatter)
        "golangci-lint",              -- Go (linter)
      },
    },
  },
}
