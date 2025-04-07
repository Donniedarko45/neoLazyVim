return {
  "folke/tokyonight.nvim",
  opts = {
    transparent = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
  },

  {
    "MeanderingProgrammer/render-markdown.nvim",
    version = "v2.0.0",
    enabled = false,
    config = function()
      require("render-markdown").setup({})
    end,
  },
}
