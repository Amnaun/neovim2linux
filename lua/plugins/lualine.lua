return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status") -- to configure lazy pending updates count

    local colors = {
      blue = "#65D1FF",
      green = "#3EFFDC",
      violet = "#FF61EF",
      cyan = "#79dac8",
      yellow = "#FFDA7B",
      red = "#FF4A4A",
      fg = "#c3ccdc",
      bg = "#25283a",
      inactive_bg = "#2c3043",
    }

    local function zirs()
      return [[Amnaun 🦁]]
    end

    local function clockIcon()
      return [[🕐]]
    end

    --[[ local my_lualine_theme = {
			normal = {
				a = { bg = colors.blue, fg = colors.bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			insert = {
				a = { bg = colors.green, fg = colors.bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			visual = {
				a = { bg = colors.violet, fg = colors.bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			command = {
				a = { bg = colors.yellow, fg = colors.bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			replace = {
				a = { bg = colors.red, fg = colors.bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			inactive = {
				a = { bg = colors.inactive_bg, fg = colors.semilightgray, gui = "bold" },
				b = { bg = colors.inactive_bg, fg = colors.semilightgray },
				c = { bg = colors.inactive_bg, fg = colors.semilightgray },
			}, ]]
    --[[ } ]]

    --[[ local bubbles_theme = {
			normal = {
				a = { fg = colors.white, bg = colors.blue, gui = "bold" },
				b = { fg = colors.white, bg = colors.bg },
				c = { fg = colors.fg, bg = colors.bg },
			},

			insert = { a = { fg = colors.black, bg = colors.green, gui = "bold" } },
			visual = { a = { fg = colors.black, bg = colors.violet, gui = "bold" } },
			replace = { a = { fg = colors.black, bg = colors.red, gui = "bold" } },

			command = {
				a = { bg = colors.yellow, fg = colors.bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},

			inactive = {
				a = { fg = colors.white, bg = colors.black, gui = "bold" },
				b = { fg = colors.white, bg = colors.black },
				c = { fg = colors.black, bg = colors.black },
			},
		} ]]

    -- configure lualine with modified theme
    lualine.setup({
      options = {
        --[[ theme = my_lualine_theme, ]]
        --[[ theme = bubbles_theme, ]]
        --theme = "catppuccin",
        [[ theme = "tokyonight", ]],
        component_separators = "|",
        section_separators = { left = "", right = "" },
      },
      sections = {
        lualine_a = {
          { "mode", separator = { left = "" }, right_padding = 2 },
        },
        lualine_b = { "filename", { "branch", icon = "" } },
        lualine_c = { "diagnostics" },
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            --[[ color = { fg = "#ff9e64" }, ]]
          },
          --[[ { "encoding" }, ]]
          --[[ { "fileformat" }, ]]
          { "filetype" },
        },
        lualine_y = { zirs, "progress" },
        lualine_z = {
          { clockIcon, left_padding = 0 },
          { "datetime", style = "%H:%M", separator = { right = "" } },
          --[[ { "datetime", style = "%H:%M" }, ]]
        },
      },
    })
  end,
}
