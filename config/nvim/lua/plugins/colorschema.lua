return {
  --   {
  --     "folke/tokyonight.nvim",
  --     lazy = true,
  --   },
  --   {
  --     "Shatur/neovim-ayu",
  --     lazy = true,
  --     priority = 1000,
  --   },
  --   {
  --     "LazyVim/LazyVim",
  --     opts = {
  --       colorscheme = "ayu-mirage",
  --       -- colorscheme = "folke/tokyonight.nvim",
  --     },
  --   },
  {
    "savq/melange-nvim",
    lazy = false,
    priority = 999,
    config = function()
      vim.cmd('colorscheme melange')
    end,
  },
  -- {
  --   "EdenEast/nightfox.nvim",
  --   lazy = false,
  --   priority = 999,
  --   config = function()
  --     local palette = require("nightfox.palette").load("duskfox")

  --     require("nightfox").setup({
  --       options = {
  --         transparent = false,
  --       },
  --       groups = {
  --         duskfox = {
  --           Visual = { bg = palette.bg1 },
  --         },
  --       },
  --     })
  --     vim.cmd("colorscheme duskfox")
  --   end,
  -- },
}
