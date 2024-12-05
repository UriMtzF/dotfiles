return {
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    keys = {
      { "<leader>bsd", "<Cmd>BufferLineSortByDirectory<CR>", desc = "Sort by directory" },
      { "<leader>bse", "<Cmd>BufferLineSortByExtension<CR>", desc = "Sort by extension" },
      { "<leader>bsr", "<Cmd>BufferLineSortByRelativeDirectory<CR>", desc = "Sort by relative directory" },
      { "<leader>bst", "<Cmd>BufferLineSortByTabs<CR>", desc = "Sort by tabs" },
    },
    opts = {
      options = {
        always_show_bufferline = true,
      },
    },
  },
}
