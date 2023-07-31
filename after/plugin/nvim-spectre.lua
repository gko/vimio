local ok, spectre = pcall(require, "spectre")

if not ok then return end

-- https://github.com/nvim-pack/nvim-spectre#usage
vim.keymap.set('n', '<leader>S', '<cmd>lua require("spectre").toggle()<CR>', {
    desc = "Toggle Spectre"
})

vim.keymap.set('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
    desc = "Search current word"
})

vim.keymap.set('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
    desc = "Search current word"
})

vim.keymap.set('n', '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
    desc = "Search on current file"
})

-- https://github.com/nvim-pack/nvim-spectre#customization
spectre.setup({
    color_devicons = true,
    open_cmd       = 'vnew',
    live_update    = false, -- auto execute search again when you write to any file in vim
    line_sep_start = '┌-----------------------------------------',
    result_padding = '¦  ',
    line_sep       = '└-----------------------------------------',
    highlight      = {
        ui = "String",
        search = "DiffDelete",
        replace = "DiffAdd"
    },
})
