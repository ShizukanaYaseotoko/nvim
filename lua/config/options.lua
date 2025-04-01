vim.opt.winborder = "rounded"

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.undofile = true

vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.foldmethod = "manual"
vim.opt.foldlevel = 99
vim.opt.foldenable = true

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
})
