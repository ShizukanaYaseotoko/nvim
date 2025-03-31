vim.keymap.set("n", ";", ":")
-- File picker
vim.keymap.set("n", "<leader>ff", function() Snacks.picker.files() end)

-- Colorscheme picker
vim.keymap.set("n", "<leader>ut", function() Snacks.picker.colorschemes() end)
