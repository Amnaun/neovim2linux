-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("lazy").setup({
  spec = { { "folke/lazy.nvim", version = "*" } },
  git = { url = "git@github.com:%s.git" }, -- 强制使用 SSH
  "louis_lifu/awesome-deepseek-integration",
  "yetone/avante.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
})

vim.opt.clipboard = "unnamedplus"

--配置Neovide
vim.g.neovide_curor_vfx_mode = "railgun" --设置主题
vim.g.neovide_cursor_vfx_opacity = 200 --设置粒子透明度
vim.g.neovide_refresh_rate = 165 --设置刷新率
vim.g.neovide_cursor_vfx_particle_size = 1.0 --设置光标宽度
vim.g.neovide_cursor_vfx_particle_lifetime = 3500 --设置光标粒子存在时间
vim.g.neovide_cursor_vfx_particle_speed = 2.5 --粒子扩散速度

-- 动态调整字体大小（仅限 Neovide）[[10]]
vim.g.neovide_scale_factor = 1.0 -- 初始缩放比例

vim.api.nvim_set_keymap(
  "n",
  "<C-ScrollWheelUp>",
  [[<Cmd>lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>]],
  { silent = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<C-ScrollWheelDown>",
  [[<Cmd>lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>]],
  { silent = true }
)

--设置透明度
vim.g.neovide_opacity = 0.75

vim.g.neovide_window_blurred = true
