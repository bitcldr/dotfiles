-- ================================================================================================
-- TITLE: nvim-lspconfig
-- ABOUT:
--    Official collection of LSP server configurations; wires language servers into Neovim's
--    built-in LSP client with sane per-server defaults.
--    https://github.com/neovim/nvim-lspconfig
-- ================================================================================================

return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ts_ls = {
        keys = {
          { "<leader>co", "<cmd>TypescriptOrganizeImports<CR>", desc = "Organize Imports" },
          { "<leader>cR", "<cmd>TypescriptRenameFile<CR>",      desc = "Rename File" },
        },
      },
      gopls = {},
    },
  },
}
