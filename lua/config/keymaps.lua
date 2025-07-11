-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

--设置最上面是shift+l
vim.keymap.set(
  { "n", "v" }, -- {'n', 'v'} 表示在 Normal 和 Visual 模式下都生效
  "L", -- 'L' 代表 Shift + l
  "gg", -- 要执行的命令
  { noremap = true, silent = true, desc = "Go to first line" }
)

--设置同步全局粘贴板
vim.keymap.set("i", "jk", "<Esc>", { silent = true, noremap = true })

--设置CompetiTese插件
vim.keymap.set("n", "1a", ":CompetiTest add_testcase<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "1e", ":CompetiTest edit_testcase<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "1d", ":CompetiTest delete_testcase<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "1r", ":CompetiTest run<CR>", { silent = true, noremap = true })

--设置CodeSnap插件
vim.api.nvim_set_keymap("v", "<leader>cs", ":CodeSnap<CR>", { noremap = true, silent = true })

--设置Neovide全屏
function NeovideToggleFullScreen()
  if vim.g.neovide_fullscreen then
    vim.g.neovide_fullscreen = false
  else
    vim.g.neovide_fullscreen = true
  end
end

vim.api.nvim_set_keymap("n", "<F11>", ":lua NeovideToggleFullScreen()<CR>", { silent = true, noremap = true })
