-- ================================================================================================
-- TITLE: lualine.nvim
-- ABOUT:
--    Fast, configurable statusline written in Lua; supports themes, custom sections,
--    and integrates with git, LSP diagnostics, and many other plugins.
--    https://github.com/nvim-lualine/lualine.nvim
-- ================================================================================================

return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      options = {
        -- theme = "ayu",
        icons_enabled = true,
        section_separators = { left = "", right = "" },
        component_separators = "|",
        -- section_separators = "",
      },
    },
  },
}
