vim.g.lsp_formatting_enabled = true

local function toggle_lsp_formatting()
    vim.g.lsp_formatting_enabled = not vim.g.lsp_formatting_enabled
    if vim.g.lsp_formatting_enabled then
        print("Formatting enabled")
    else
        print("Formatting disabled")
    end
end

vim.api.nvim_create_user_command("ToggleFormatting", toggle_lsp_formatting,
{ desc = "Toggle the automatic formatting" })

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function()
        if vim.g.lsp_formatting_enabled then
            vim.lsp.buf.format()
            vim.cmd("normal! mmgg=G`m")
        end
    end
})
