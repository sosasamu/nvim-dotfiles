require("me.set")
require("me.remap")
require("me.packer")

local augroup = vim.api.nvim_create_augroup
local group = augroup('me', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
    require("plenary.reload").reload_module(name)
end

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
    group = group,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

autocmd({"BufNewFile", "BufRead"}, {
    group = group,
    pattern = "*.tsx,*.jsx",
    command = [[set filetype=typescriptreact]],
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

vim.g.go_fmt_command = "goimports"
vim.g.go_list_type = "quickfix"
vim.g.go_highlight_methods = 1
vim.g.go_highlight_functions = 1
vim.g.go_highlight_structs = 1
vim.g.go_highlight_operators = 1
vim.g.go_highlight_build_constraints = 1
