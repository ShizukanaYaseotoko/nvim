vim.opt.winborder = "rounded"

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.colorcolumn = '90'
vim.opt.wrap = false

vim.opt.undofile = true

vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.foldlevel = 99
vim.opt.foldenable = true

vim.opt.conceallevel = 2

vim.diagnostic.config({
    virtual_text = true,
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "",
            [vim.diagnostic.severity.WARN] = "⚠",
            [vim.diagnostic.severity.HINT] = "",
            [vim.diagnostic.severity.INFO] = "",
        },
    },
    underline = true,
    update_in_insert = false,
    severity_sort = true,
})
