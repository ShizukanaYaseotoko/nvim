-- File picker
vim.keymap.set("n", "<leader>ff", function() Snacks.picker.files() end)

-- Color scheme picker
vim.keymap.set("n", "<leader>ut", function() Snacks.picker.colorschemes() end)
