vim.api.nvim_create_autocmd("BufReadPre", {
    pattern = "*",
    callback = function()
        vim.cmd("BufferOrderByBufferNumber")
    end
})
