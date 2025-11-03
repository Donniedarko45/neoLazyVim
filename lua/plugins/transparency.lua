-- ~/.config/nvim/lua/plugins/transparency.lua
return {
  {
    "LazyVim/LazyVim", -- This targets the main LazyVim plugin
    opts = {
      -- This function runs when a colorscheme is loaded
      colorscheme_extras = function()
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
        vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
        vim.api.nvim_set_hl(0, "FoldColumn", { bg = "none" })
        vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })

        -- Add any other group you find with :Inspect
        -- e.g., if LeetCode uses a special group:
        vim.api.nvim_set_hl(0, "LeetCodeBackground", { bg = "none" })
      end,
    },
  },
}
