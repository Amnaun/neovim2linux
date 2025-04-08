-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

--设置同步全局粘贴板
vim.keymap.set("i", "jk", "<Esc>", { silent = true, noremap = true })

--设置CompetiTese插件
vim.keymap.set("n", "1a", ":CompetiTest add_testcase", { silent = true, noremap = true })
vim.keymap.set("n", "1e", ":CompetiTest edit_testcase", { silent = true, noremap = true })
vim.keymap.set("n", "1d", ":CompetiTest delete_testcase", { silent = true, noremap = true })
