-- ================================================================================================
-- TITLE: nvim-lspconfig
-- ABOUT:
--    Official collection of LSP server configurations; wires language servers into Neovim's
--    built-in LSP client with sane per-server defaults.
--    https://github.com/neovim/nvim-lspconfig
-- ================================================================================================

return {
  "neovim/nvim-lspconfig",
  -- dependencies = {
  --   { "mason-org/mason.nvim", opts = {} }, -- LSP/DAP/Linter installer & manager
  --   "creativenull/efmls-configs-nvim",   -- Preconfigured EFM Language Server setups
  --   "hrsh7th/cmp-nvim-lsp",              -- nvim-cmp source for LSP-based completion
  -- },
  -- config = function()
  --   -- require("utils.diagnostics").setup()
  --   require("servers")
  -- end,
  -- opts = {
  --   servers = {
  --     tsserver = {
  --       keys = {
  --         { "<leader>co", "<cmd>TypescriptOrganizeImports<CR>", desc = "Organize Imports" },
  --         { "<leader>cR", "<cmd>TypescriptRenameFile<CR>",      desc = "Rename File" },
  --       },
  --     },
  --   },
  -- },
}
