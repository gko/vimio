-- https://github.com/L3MON4D3/LuaSnip/issues/22#issuecomment-847608031
local ok, ls = pcall(require, 'luasnip')

if not ok then return end

vim.keymap.set({ "i", "s" }, "<Tab>", function()
    if ls.expand_or_jumpable() then
        ls.jump(1)
    else
        -- https://www.reddit.com/r/neovim/comments/zrcrv1/comment/j12xw3x
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
    end
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
    if ls.expand_or_jumpable() then
        ls.jump(-1)
    else
        -- https://www.reddit.com/r/neovim/comments/zrcrv1/comment/j12xw3x
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
    end
end, { silent = true })

require("luasnip.loaders.from_snipmate").lazy_load()
