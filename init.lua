-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("lazy").setup({
  spec = { { "folke/lazy.nvim", version = "*" } },
  git = { url = "git@github.com:%s.git" },  -- 强制使用 SSH
})
