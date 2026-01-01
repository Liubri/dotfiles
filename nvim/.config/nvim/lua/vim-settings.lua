vim.opt.clipboard = 'unnamedplus'
-- vim.opt.number = true
vim.opt.relativenumber = true
-- vim.opt.signcolumn = "number"
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
-- vim.lsp.enable("lua_ls", "kotlin_language_server")
vim.g.mapleader = " "
vim.diagnostic.config({
  virtual_text = {
    true,
    spacing = 4
  },
})
