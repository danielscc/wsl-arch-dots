-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- -- ~/.config/nvim/lua/config/keymaps.lua


-- ~/.config/nvim/lua/config/keymaps.lua


-- Disable arrow keys in normal + visual mode to force hjkl muscle memory.
-- Insert mode is left alone on purpose — restricting it too adds friction
-- without much motion-learning payoff, since insert mode is for typing,

-- not navigating.


local arrows = { "<Up>", "<Down>", "<Left>", "<Right>" }

for _, key in ipairs(arrows) do
  vim.keymap.set({ "n", "v" }, key, "<Nop>", { noremap = true, silent = true })
end

vim.keymap.set({ "n", "v" }, "<C-d>", "<C-d>zz")
vim.keymap.set({ "n", "v" }, "<C-u>", "<C-u>zz")
