return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "maxmx03/fluoromachine.nvim",

    lazy = false,
    priority = 1000,
    config = function()
      local fm = require("fluoromachine")

      fm.setup({
        glow = true,
        theme = "fluoromachine",
        transparent = true,
      })

      vim.cmd.colorscheme("fluoromachine")
    end,
  },
  {
    "EdenEast/nightfox.nvim",
    config = function()
      require("nightfox").setup({
        options = {
          transparent = true, -- Enable transparency
        },
      })
      vim.cmd("colorscheme duskfox") -- Set the colorscheme to duskfox
      require("config.theme").setup() -- Apply the transparency settings
    end,
  },
  { "ellisonleao/gruvbox.nvim" },
  { "shaunsingh/moonlight.nvim" },
  {
    "samharju/synthweave.nvim",
  },
}
