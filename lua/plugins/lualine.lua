return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      theme = "solarized-osaka",
      section_separators = { left = "", right = "" },
    },
    sections = {
      lualine_c = {
        { "filename" },
      },
    },
  },
}
