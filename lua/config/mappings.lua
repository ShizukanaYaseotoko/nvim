vim.keymap.set("n", ";", ":")
-- File picker
vim.keymap.set("n", "<leader>ff", function() Snacks.picker.files() end)

-- Colorscheme picker
vim.keymap.set("n", "<leader>ut", function() Snacks.picker.colorschemes() end)

-- Persistence
vim.keymap.set("n", "<leader>pr", function() require("persistence").load({ last = true }) end)
