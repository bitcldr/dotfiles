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
        "stylua",
        "shellcheck",
        "shfmt",
        "hadolint",
        "flake8",
        "rust-analyzer",
      },
    },
  },
}
