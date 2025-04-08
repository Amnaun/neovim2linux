return {
  "mistricky/codesnap.nvim",
  build = "make build_generator",
  requires = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    require("codesnap").setup({
      has_line_number = true,
      bg_theme = "dusk",
      has_breadcrumbs = true,
      show_workspace = true,
      breadcrumbs_separator = "🌟",
      watermark = "Amnaun",
    })
  end,
  opts = {
    save_path = "~/Pictures",
    has_breadcrumbs = true,
    bg_theme = "bamboo",
  },
}
