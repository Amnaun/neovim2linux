return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" }, -- Load when commands are called
  ft = { "markdown" }, -- Load for markdown filetypes
  -- build = function()
  --   vim.fn["mkdp#util#install"]()
  -- end, -- Run build step
  config = function()
    -- Optional configuration, see plugin docs
    -- vim.g.mkdp_filetypes = { 'markdown' }
    -- vim.g.mkdp_theme = 'light' -- or 'dark' or 'auto'
  end,
}
