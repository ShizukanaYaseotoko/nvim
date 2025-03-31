local map = vim.keymap.set

map("n", ";", ":")
map("n", "<leader>x", vim.cmd.bdelete)
map("n", "<tab>", vim.cmd.bnext)
map("n", "<S-tab>", vim.cmd.bprev)
map("n", "<leader>l", "<CMD>Lazy<CR>")
map("n", "<leader>m", "<CMD>Mason<CR>")
map("n", "<leader>n", "<CMD>set nu!<CR>")
map("n", "<leader>rn", "<CMD>set rnu!<CR>")

-- Find
map("n", "<leader>fb", function() Snacks.picker.buffers() end)
map("n", "<leader>fc", function() Snacks.picker.command_history() end)
map("n", "<leader>fn", function() Snacks.picker.notifications() end)
map("n", "<leader>ff", function() Snacks.picker.files() end)
map("n", "<leader>fj", function() Snacks.picker.jumps() end)

-- Explorer
map("n", "<leader>e", function() Snacks.picker.explorer() end)

-- Grep
map("n", "<leader>gf", function() Snacks.picker.grep() end)
map("n", "<leader>gc", function() Snacks.picker.lines() end)
map("n", "<leader>gb", function() Snacks.picker.grep_buffers() end)

-- Colorscheme picker
map("n", "<leader>ut", function() Snacks.picker.colorschemes() end)
