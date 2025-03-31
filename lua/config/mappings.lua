local map = vim.keymap.set

map("n", ";", ":")
map("n", "<leader>l", "<CMD>Lazy<CR>")
map("n", "<leader>m", "<CMD>Mason<CR>")

-- Find
map("n", "<leader>fb", function() Snacks.picker.buffers() end)
map("n", "<leader>fc", function() Snacks.picker.command_history() end)
map("n", "<leader>fn", function() Snacks.picker.notification_history() end)
map("n", "<leader>ff", function() Snacks.picker.files() end)

-- Explorer
map("n", "<leader>e", function() Snacks.picker.explorer() end)

-- Grep
map("n", "<leader>gf", function() Snacks.picker.grep() end)
map("n", "<leader>gc", function() Snacks.picker.lines() end)
map("n", "<leader>gb", function() Snacks.picker.grep_buffers() end)

-- Colorscheme picker
map("n", "<leader>ut", function() Snacks.picker.colorschemes() end)
