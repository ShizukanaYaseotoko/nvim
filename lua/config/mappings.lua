vim.keymap.set("n", ";", ":")
vim.keymap.set("n", "<leader>l", "<CMD>Lazy<CR>")

-- File picker
vim.keymap.set("n", "<leader>ff", function() Snacks.picker.files() end)

-- Colorscheme picker
vim.keymap.set("n", "<leader>ut", function() Snacks.picker.colorschemes() end)
