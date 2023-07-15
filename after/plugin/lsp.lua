-- beware of this issue https://github.com/neovim/neovim/issues/11867
if vim.fn.has('nvim-0.5.0') ~= 1 then
    -- https://www.reddit.com/r/neovim/comments/pkgp1q/comment/hc3fftv/
    return
end

local diagnostics_fn

if vim.diagnostic.open_float then
    diagnostics_fn = vim.diagnostic.open_float
else
    diagnostics_fn = vim.lsp.diagnostic.show_line_diagnostics
end

-- https://www.reddit.com/r/neovim/comments/sm8c99/comment/i6ec9pw/
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
    callback = function()
        diagnostics_fn({scope="line"})
    end
})

function LspEnable()
    -- https://github.com/nvim-lua/diagnostic-nvim/issues/73
    vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
        vim.lsp.diagnostic.on_publish_diagnostics, {
            -- Enable underline, use default values
            underline = true,
            -- Enable virtual text, override spacing to 4
            virtual_text = {
                spacing = 4,
                prefix = '~',
            },
            -- Use a function to dynamically turn signs off
            -- and on, using buffer local variables
            signs = function(bufnr, client_id)
                local ok, result = pcall(vim.api.nvim_buf_get_var, bufnr, 'show_signs')
                -- No buffer local variable set, so just enable by default
                if not ok then
                    return true
                end

                return result
            end,
            -- Disable a feature
            update_in_insert = false,
        }
    )

    -- https://github.com/neovim/nvim-lspconfig#suggested-configuration
    local lspconfig = require('lspconfig')

    -- Global mappings.
    -- See `:help vim.diagnostic.*` for documentation on any of the below functions
    vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
    vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

    -- Use LspAttach autocommand to only map the following keys
    -- after the language server attaches to the current buffer
    vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('UserLspConfig', {}),
        callback = function(ev)
            -- Enable completion triggered by <c-x><c-o>
            vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

            -- Buffer local mappings.
            -- See `:help vim.lsp.*` for documentation on any of the below functions
            local opts = { buffer = ev.buf }
            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
            vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
            vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
            vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
            vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
            vim.keymap.set('n', '<space>wl', function()
                print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
            end, opts)
            vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
            vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
            vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
            vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
            vim.keymap.set('n', '<space>f', function()
                vim.lsp.buf.format { async = true }
            end, opts)
        end,
    })

    local servers = {
        'gopls',
        'tsserver',
        'intelephense',
        'pyright',
        'html',
        'cssls',
        'jsonls',
        'rust_analyzer',
        'metals',
        'ccls',
        'kotlin_language_server',
        'sourcekit',
        'ocamlls',
        'dartls',
        'terraformls',
        'lua_ls',
    }

    for _, lsp in ipairs(servers) do
        -- need to check for setup because some of
        -- lsp configurations exist but have no setup (i.e. are deprecated)
        if lspconfig[lsp] and lspconfig[lsp].setup then
            lspconfig[lsp].setup {
                flags = {
                    debounce_text_changes = 150,
                }
            }
        end
    end

    if vim.fn.bufname("%") ~= "" then
        vim.cmd('edit!')
    end
end

function LspDisable()
    vim.lsp.stop_client(vim.lsp.get_active_clients())

    if vim.fn.bufname("%") ~= "" then
        vim.cmd('edit!')
    end
end


vim.cmd([[command! LspEnable lua LspEnable()]])
vim.cmd([[command! LspDisable lua LspDisable()]])

LspEnable()
