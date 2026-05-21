return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        styles = {
          italic = false,
          transparency = true, -- Crucial for the wallpaper look
        },
      })
      vim.cmd("colorscheme rose-pine")
    end,
  },
}
