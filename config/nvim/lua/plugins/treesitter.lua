-- ================================================================================================
-- TITLE: nvim-treesitter
-- ABOUT:
--    Tree-sitter integration for Neovim; provides accurate syntax highlighting, indentation,
--    code navigation, and folding using incremental parsing.
--    https://github.com/nvim-treesitter/nvim-treesitter
-- ================================================================================================

return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "bash",
        "css",
        "dockerfile",
        "fish",
        "graphql",
        "html",
        "javascript",
        "jsdoc",
        "json",
        "jsonc",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "regex",
        "go",
        "gomod",
        "gosum",
        "gowork",
        "rust",
        "scss",
        "sql",
        "toml",
        "tsx",
        "typescript",
        "xml",
        "yaml",
      })
    end,
  },
}
