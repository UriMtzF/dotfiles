---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@param opts AstroLSPOpts
  opts = function(opts)
    opts.servers = opts.servers or {}
    table.insert(opts.servers, "prolog_lsp")
    opts.config = require("astrocore").extend_tbl(opts.config or {}, {
      prolog_lsp = {
        cmd = {
          "swipl",
          "-g",
          "use_module(library(lsp_server)).",
          "-g",
          "lsp_server:main",
          "-t",
          "halt",
          "--",
          "stdio",
        },
        filetypes = { "prolog" },
        root_dir = require("lspconfig.util").root_pattern "pack.pl",
      },
    })
  end,
}
