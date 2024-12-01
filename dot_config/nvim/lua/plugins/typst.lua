return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "tinymist",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    ---@class PluginLspOpts
    opts = {
      servers = {
        tinymist = {
          single_file_support = true,
          root_dir = function()
            return vim.fn.getcwd()
          end,
          offset_encoding = "utf-8",
          settings = {
            formatterMode = "typstyle",
          },
        },
      },
    },
  },
  {
    "chomosuke/typst-preview.nvim",
    lazy = false,
    version = "1.*",
    config = function()
      require("typst-preview").setup()
    end,
  },
  {
    "kaarmu/typst.vim",
    ft = "typst",
  },
}
