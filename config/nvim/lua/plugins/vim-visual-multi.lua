-- ================================================================================================
-- TITLE: vim-visual-multi
-- ABOUT:
--    Multiple-cursor plugin inspired by Sublime Text; supports adding cursors by pattern,
--    column selection, and independent per-cursor editing.
--    https://github.com/mg979/vim-visual-multi
-- ================================================================================================

return {
  {
    "mg979/vim-visual-multi",
    config = function()
      vim.g.VM_maps = {
        ["Select Cursor Up"] = "<C-k>",
        ["Select Cursor Down"] = "<C-j>",
      }
    end,
  },
}
