if vim.g.loaded_fzf_vim then
    return
end

local success, telescope = pcall(require, "telescope")

if not success then return end

local telescopeConfig = require("telescope.config")

telescope.setup {
    pickers = {
        find_files = {
            -- hidden = true
            no_ignore = false
        },
        -- https://github.com/nvim-telescope/telescope.nvim/issues/179#issuecomment-907607683
        buffers = {
            sort_lastused = true
        }
    }
}

local opts = {silent=true}
-- Telescope mappings
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', opts)

-- Find files mapping
vim.api.nvim_set_keymap('n', '<C-p>', '<cmd>Telescope find_files<CR>', opts)

-- Show buffers mapping
vim.api.nvim_set_keymap('n', '<C-b>', '<cmd>Telescope buffers<CR>', opts)
