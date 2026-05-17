-- ================================================================================================
-- TITLE: NeoVim keymaps
-- ABOUT:
--    Keymaps are automatically loaded on the VeryLazy event
--    Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- ================================================================================================

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- New tab
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Double jj to exit from insert mode
keymap.set("i", "jj", "<Esc>", opts)

-- Quick config editing
keymap.set("n", "<leader>rc", "<Cmd>e ~/.config/nvim/init.lua<CR>", { desc = "Edit config" })

keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down (centered)" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up (centered)" })

keymap.set("x", "<leader>p", '"_dP', { desc = "Paste without yanking" })
keymap.set({ "n", "v" }, "<leader>x", '"_d', { desc = "Delete without yanking" })

keymap.set("n", "J", "mzJ`z", { desc = "Join lines and keep cursor position" })

keymap.set("n", "<leader>cp", function()
  local path = vim.fn.expand("%:p")
  vim.fn.setreg("+", path)
  print("file:", path)
end, { desc = "Copy full file path" })
