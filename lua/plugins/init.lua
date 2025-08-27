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
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        typescript = { "prettier" }, -- Or perhaps {"tsserver"}
        javascript = { "prettier" }, -- Or perhaps {"tsserver"}
        typescriptreact = { "prettier", "eslint_d" }, -- Or it could be {"tsserver"}
        javascriptreact = { "prettier", "eslint_d" }, -- Or it could be {"tsserver"}
        c = { "clang_format" },
        cpp = { "clang_format" },
        dockerfile = { "hadolint" },
        prisma = { "prismaFmt" },
        -- ... other filetypes
      },
      -- If tsserver is used directly by conform:
      formatters = {
        tsserver = {
          lsp_fallback = true, -- Indicates it will use LSP formatting
          -- Any specific args or config for tsserver via conform might go here,
          -- but the problematic function is more likely in the nvim-lspconfig setup.
        },
        prismaFmt = {
          command = "prisma",
          args = { "format", "--schema", "$FILENAME" },
          stdin = false,
        },
        hadolint = {
          command = "hadolint",
          args = { "--no-color", "-" },
          stdin = true,
        },
      },
    },
  },
}
