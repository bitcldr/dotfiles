-- ================================================================================================
-- TITLE: nvim-sharegitlink
-- ABOUT:
--    Copies or opens a permalink to the current file/selection on the remote git host;
--    supports both normal and visual mode to link specific line ranges.
--    https://github.com/Le0Michine/nvim-sharegitlink
-- ================================================================================================

return {
  "Le0Michine/nvim-sharegitlink",
  branch = "main",
  keys = {
    {
      "<leader>gl",
      function()
        require("sharegitlink").copy_gitfarm_link()
      end,
      mode = { "n", "v" },
      desc = "Copy Link",
    },
    {
      "<leader>go",
      function()
        require("sharegitlink").open_gitfarm_link()
      end,
      mode = { "n", "v" },
      desc = "Open Link",
    },
  },
}
