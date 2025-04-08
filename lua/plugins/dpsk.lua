return {
  "yetone/avante.nvim",
  custom = true,
  event = "VeryLazy",
  -- lazy = false,
  -- version = false, -- Set this to "*" to always pull the latest release version, or set it to false to update to the latest code changes.
  opts = {
    -- add any opts here
    -- for example
    provider = "deepseek",
    vendors = {
      deepseek = {
        __inherited_from = "openai",
        api_key_name = "DEEPSEEK_API_KEY",
        endpoint = "https://api.deepseek.com",
        model = "deepseek-coder",
      },
    },
    windows = {
      sidebar_header = {
        rounded = false,
      },
      edit = {
        border = "single",
      },
      ask = {
        border = "single",
      },
    },
    file_selector = {
      provider = "fzf", -- Avoid native provider issues
      provider_opts = {},
    },
  },
  -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  build = LazyVim.is_win() and "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false"
    or "http_proxy=127.0.0.1:7890 https_proxy=127.0.0.1:7890 make",
  dependencies = {
    -- "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    -- The below dependencies are optional,
    -- "echasnovski/mini.pick", -- for file_selector provider mini.pick
    -- "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
    -- "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
    "ibhagwan/fzf-lua", -- for file_selector provider fzf
    "echasnovski/mini.icons", -- or echasnovski/mini.icons
    "zbirenbaum/copilot.lua", -- for providers='copilot'
    "HakonHarnes/img-clip.nvim", -- support for image pasting
    -- "MeanderingProgrammer/render-markdown.nvim",  -- Make sure to set this up properly if you have lazy=true
    {
      "saghen/blink.cmp",
      opts = {
        sources = {
          default = { "avante_commands", "avante_mentions", "avante_files" },
          compat = {
            "avante_commands",
            "avante_mentions",
            "avante_files",
          },
          -- LSP score_offset is typically 60
          providers = {
            avante_commands = {
              name = "avante_commands",
              module = "blink.compat.source",
              score_offset = 90,
              opts = {},
            },
            avante_files = {
              name = "avante_files",
              module = "blink.compat.source",
              score_offset = 100,
              opts = {},
            },
            avante_mentions = {
              name = "avante_mentions",
              module = "blink.compat.source",
              score_offset = 1000,
              opts = {},
            },
          },
        },
      },
    },
    {
      "saghen/blink.compat",
      opts = function()
        -- monkeypatch cmp.ConfirmBehavior for Avante
        require("cmp").ConfirmBehavior = {
          Insert = "insert",
          Replace = "replace",
        }
      end,
    },
    {
      "folke/which-key.nvim",
      optional = true,
      opts = {
        spec = {
          { "<leader>a", group = "ai" },
        },
      },
    },
  },
}
