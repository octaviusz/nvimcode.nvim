local nvimcode = {}
local theme = require("nvimcode.theme")

nvimcode.setup = function()
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "nvimcode"

    theme.set_highlights()
end

return nvimcode
