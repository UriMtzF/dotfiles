-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--

vim.api.nvim_create_autocmd({ "BufReadPre", "BufNewFile" }, {
  pattern = { "*.pdf", "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp" },
  callback = function(args)
    if vim.fn.executable("xdg-open") == 0 then
      vim.notify("xdg-open isn't installed in the system", vim.log.levels.ERROR)
      return
    end

    local filename = vim.fn.fnameescape(args.file)
    local bufferline = require("bufferline")
    vim.notify("Opening file with external editor", vim.log.levels.INFO)
    vim.system({ "xdg-open", filename })
    vim.schedule(function()
      if bufferline and vim.api.nvim_buf_is_valid(args.buf) then
        bufferline.cycle(-1)
        vim.api.nvim_buf_delete(args.buf, { force = true })
      end
    end)
  end,
})
