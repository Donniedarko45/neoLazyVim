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
