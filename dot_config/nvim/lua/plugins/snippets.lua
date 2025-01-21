return {
  -- {
  --   "garymjr/nvim-snippets",
  --   opts = {
  --     friendly_snippets = true,
  --   },
  --   dependencies = { "rafamadriz/friendly-snippets" },
  -- },
  {
    "L3MON4D3/LuaSnip",
    config = function()
      local luasnip = require("luasnip")
      luasnip.filetype_extend("dart", { "flutter" })
      luasnip.filetype_extend("javascript", { "html" })
    end,
  },
}
