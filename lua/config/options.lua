-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
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

vim.g.avante_host_mount = "/" -- 允许访问根目录

--设置字体
vim.o.guifont = "Maple Mono NF CN:h24"

--设置退出Neovim时光标正确
vim.api.nvim_create_autocmd({ "ExitPre" }, {
  callback = function()
    vim.opt.guicursor = "a:ver30-blinkon1-blinkoff250-blinkwait10"
  end,
})
