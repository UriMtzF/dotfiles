return {
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim",
    },
    config = function()
      require("flutter-tools").setup({
        closing_tags = {
          highlight = "Comment",
          prefix = "//",
          enabled = true,
        },
        lsp = {
          color = {
            enabled = true,
          },
          settings = {
            showTodos = true,
            completeFunctionCalls = true,
            renameFilesWithClasses = "prompt",
            enableSnippets = true,
            enableSdkFormatter = true,
            updateImportsOnRename = true,
          },
        },
      })
    end,
  },
  { "dart-lang/dart-vim-plugin" },
}
