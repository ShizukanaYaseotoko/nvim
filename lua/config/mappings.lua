local map = vim.keymap.set

map("n", ";", ":")
map("n", "<leader>x", vim.cmd.bdelete)
map("n", "<tab>", vim.cmd.bnext)
map("n", "<S-tab>", vim.cmd.bprev)
map("n", "<leader>l", "<CMD>Lazy<CR>", { desc = "Open Lazy" })
map("n", "<leader>m", "<CMD>Mason<CR>", { desc = "Open Mason" })
map("n", "<leader>n", "<CMD>set nu!<CR>", { desc = "Toggle line numbers" })
map("n", "<leader>rn", "<CMD>set rnu!<CR>", { desc = "Toggle relative line numbers" })

-- Find
map("n", "<leader>fb", function() Snacks.picker.buffers() end, { desc = "Search buffers" })
map("n", "<leader>fc", function() Snacks.picker.command_history() end, { desc = "Show commands history" })
map("n", "<leader>ff", function() Snacks.picker.files() end, { desc = "Search files" })
map("n", "<leader>fj", function() Snacks.picker.jumps() end, { desc = "Search jumps" })

-- Git
map("n", "<leader>gl", function() Snacks.picker.git_log() end, { desc = "Git log" })
map("n", "<leader>gd", function() Snacks.picker.git_diff() end, { desc = "Git diff" })
map("n", "<leader>gs", function() Snacks.picker.git_status() end, { desc = "Git status" })
map("n", "<leader>gb", function() Snacks.picker.git_branches() end, { desc = "Git branches" })

-- Notifications
map("n", "<leader>fn", function() Snacks.notifier.show_history() end, { desc = "Show notification history" })
map("n", "<leader>dn", function() Snacks.notifier.hide() end, { desc = "Dismiss all notifications" })

-- Explorer
map("n", "<leader>e", function() Snacks.picker.explorer() end, { desc = "Toggle file explorer" })

-- Grep
map("n", "<leader>gf", function() Snacks.picker.grep() end, { desc = "Grep all files" })
map("n", "<leader>gc", function() Snacks.picker.lines() end, { desc = "Grep the current buffer" })
map("n", "<leader>ga", function() Snacks.picker.grep_buffers() end, { desc = "Grep all buffers" })

-- Colorscheme picker
map("n", "<leader>ut", function() Snacks.picker.colorschemes() end, { desc = "Switch the color scheme" })

-- Trouble
map("n", "<leader>tx", "<CMD>Trouble diagnostics toggle<CR>", { desc = "Diagnostics (Trouble)" })
map("n", "<leader>tb", "<CMD>Trouble diagnostics toggle filter.buf=0<CR>", { desc = "Buffer diagnostics (Trouble)" })
map("n", "<leader>tq", "<CMD>Trouble qflist toggle<CR>", { desc = "Trouble quickfix list" })
