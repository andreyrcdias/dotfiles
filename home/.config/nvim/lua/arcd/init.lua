require("arcd.remap")
require("arcd.set")

local augroup = vim.api.nvim_create_augroup
local arcd = augroup('ThePrimeagen', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({"BufWritePre"}, {
    group = arcd,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

