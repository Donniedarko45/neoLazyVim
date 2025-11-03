-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.api.nvim_set_hl(0, "TabLine", { bg = "none" })
vim.api.nvim_set_hl(0, "TabLineFill", { bg = "none" })
vim.api.nvim_set_hl(0, "TabLineSel", { bg = "none" })
vim.o.wrap = true
vim.o.linebreak = true

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.cmd("hi! Normal guibg=NONE ctermbg=NONE")
    vim.cmd("hi! NonText guibg=NONE ctermbg=NONE")
  end,
})
vim.cmd([[
  highlight StatusLine guibg=none
]])

vim.cmd([[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]])

vim.o.number = true
vim.opt.guicursor = ""

vim.api.nvim_create_autocmd("SwapExists", {
  callback = function(args)
    -- Automatically recover the swap file
    vim.v.swapchoice = "r"
  end,
})

vim.api.nvim_create_autocmd("SwapExists", {
  callback = function(args)
    print("Swap file found, auto-recovering: " .. args.file)
    vim.v.swapchoice = "r"
  end,
})

--[[ require("gruvbox").setup({
  terminal_colors = true,
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = false, -- Disable italic strings
    comments = false,
    operators = false, -- Enable italic operators
    folds = false,
  },
  strikethrough = true,
  invert_selection = true, -- Enable inverting selections
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true,
  contrast = "hard", -- Use hard contrast
  dim_inactive = true, -- Dim inactive windows
  transparent_mode = false,
})
  ]]
vim.cmd("colorscheme tokyonight")
