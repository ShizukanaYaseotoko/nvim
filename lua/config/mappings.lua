local map = vim.keymap.set
local wk = require("which-key")

map("n", ";", ":")
map("n", "j", "gj")
map("n", "k", "gk")
map("n", "<leader>x", vim.cmd.bdelete)
map("n", "<tab>", vim.cmd.bnext)
map("n", "<S-tab>", vim.cmd.bprev)
map("n", "<leader>l", "<CMD>Lazy<CR>", { desc = "Open Lazy" })
map("n", "<leader>m", "<CMD>Mason<CR>", { desc = "Open Mason" })
map("n", "<leader>n", "<CMD>set nu!<CR>", { desc = "Toggle line numbers" })
map("n", "<leader>rn", "<CMD>set rnu!<CR>", { desc = "Toggle relative line numbers" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" })
map("n", "<leader>cx", "<CMD>ContextToggle<CR>", { desc = "Toggle context" })
map("n", "<leader>cs", function() require("aerial").snacks_picker() end, { desc = "Search symbols" })
map("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "<leader>rf", function() Snacks.rename.rename_file() end, { desc = "Rename File" })
map("n", "<leader>ra", "<CMD>lua vim.lsp.buf.rename()<CR>", { desc = "Rename" })

-- Pywal
map("n", "<leader>rs", function()
    require("pywal16").setup()
    require("lualine").setup(
        {
            theme = "pywal16"
        }
    )
end, { desc = "Set theme to pywal" })
map("n", "rs", "<CMD>colorscheme pywal16<CR>", { desc = "Set theme to pywal" })

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

-- Silicon
wk.add({
    mode = { "v" },
    { "<leader>s",  group = "Silicon" },
    { "<leader>sc", function() require("nvim-silicon").clip() end,  desc = "Copy code screenshot to clipboard" },
    { "<leader>sf", function() require("nvim-silicon").file() end,  desc = "Save code screenshot as file" },
    { "<leader>ss", function() require("nvim-silicon").shoot() end, desc = "Create code screenshot" },
})

-- Obsidian
wk.add({
    mode = { "n" },
    { "<leader>o",        group = "Obsidian" },
    { "<leader>oo",       "<CMD>ObsidianOpen<CR>",           desc = "Open current note in Obsidian" },
    { "<leader>on",       "<CMD>ObsidianNew<CR>",            desc = "Create new note" },
    { "<leader>oq",       "<CMD>ObsidianQuickSwitch<CR>",    desc = "Open note switcher" },
    { "<leader>of",       "<CMD>ObsidianFollowLink<CR>",     desc = "Follow link" },
    { "<leader>ow",       "<CMD>ObsidianWorkspace<CR>",      desc = "Switch workspaces" },
    { "<leader>or",       "<CMD>ObsidianRename<CR>",         desc = "Rename current note" },
    { "<leader>ot",       "<CMD>ObsidianTOC<CR>",            desc = "Open Table of Contents" },
    { "<leader>op",       "<CMD>ObsidianPasteImg<CR>",       desc = "Paste an image" },
    { "<leader><leader>", "<CMD>ObsidianToggleCheckbox<CR>", desc = "Toggle checkbox" },
})
