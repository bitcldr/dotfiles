-- ================================================================================================
-- TITLE: nvim-treesitter
-- ABOUT:
--    Tree-sitter integration for Neovim; provides accurate syntax highlighting, indentation,
--    code navigation, and folding using incremental parsing.
--    https://github.com/nvim-treesitter/nvim-treesitter
-- ================================================================================================

return {
  -- since `vim.tbl_deep_extend`, can only merge tables and not lists, the code above
  -- would overwrite `ensure_installed` with the new value.
  -- If you'd rather extend the default config, use the code below instead:
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "bash",
        "css",
        "dockerfile",
        "fish",
        "gitignore",
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
        "query",
        "regex",
        "rust",
        "scss",
        "sql",
        "toml",
        "tsx",
        "typescript",
        "vim",
        "xml",
        "yaml",
      })
    end,
  },
}
