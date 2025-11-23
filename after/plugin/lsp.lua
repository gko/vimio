-- beware of this issue https://github.com/neovim/neovim/issues/11867
if vim.fn.has('nvim-0.5.0') ~= 1 then
    -- https://www.reddit.com/r/neovim/comments/pkgp1q/comment/hc3fftv/
    return
end

local servers = {             -------------- binaries
    'gopls',                  -- gopls
    'tsgo',                   -- tsgo
    -- 'ts_ls',               -- typescript-language-server
    'intelephense',           -- intelephense
    -- 'pyright',             -- pyright-langserver
    'pylsp',                  -- pylsp
    -- 'jedi_language_server',   -- jedi-language-server
    'html',                   -- vscode-html-language-server
    'cssls',                  -- vscode-css-language-server
    'jsonls',                 -- vscode-json-language-server
    'rust_analyzer',          -- rust-analyzer
    'metals',                 -- metals
    'ccls',                   -- ccls
    'kotlin_language_server', -- kotlin-language-server
    'sourcekit',              -- sourcekit-lsp
    'ocamlls',                -- ocaml-language-server
    'dartls',                 -- dart
    'terraformls',            -- terraform-ls
    'lua_ls',                 -- lua-language-server
    'zls'                     -- zls
}

function lsp_binary_exists(server_config)
    local valid_config = server_config and
        type(server_config.cmd) == "table" and
        #server_config.cmd >= 1

    if not valid_config then
        return false
    end

    local binary = server_config.cmd[1]
    -- print(binary)

    return vim.fn.executable(binary) == 1
end

-- https://github.com/mfussenegger/nvim-dap/discussions/294#discussioncomment-1347333
function close_all_popups()
    for _, win in ipairs(vim.api.nvim_list_wins()) do
        local config = vim.api.nvim_win_get_config(win)

        if config.relative ~= "" then
            vim.api.nvim_win_close(win, false)
        end
    end
end

-- Set up lspconfig.
local ok, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')

if not ok then return end

local capabilities = cmp_nvim_lsp.default_capabilities()

if vim.diagnostic.open_float then
    -- https://www.reddit.com/r/neovim/comments/sm8c99/comment/i6ec9pw/
    vim.api.nvim_create_autocmd({ "CursorHold", --[[ "CursorHoldI" --]] }, {
        callback = function()
            -- https://www.reddit.com/r/neovim/comments/tvy18v/comment/i3cfsr5
            for _, winid in pairs(vim.api.nvim_tabpage_list_wins(0)) do
                if vim.api.nvim_win_get_config(winid).zindex then
                    return
                end
            end

            vim.diagnostic.open_float({ scope = "line", focusable = true })
        end
    })
end

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
    local ok, lspconfig = pcall(require, 'lspconfig')

    if not ok then return end

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

            -- not a part of standard config
            vim.keymap.set('n', '<Esc>', close_all_popups)
        end,
    })

    for _, lsp in ipairs(servers) do
        -- local ok_inspect, dumped = pcall(vim.inspect, vim.lsp.config[lsp])
        -- if ok_inspect and dumped then
        --     vim.api.nvim_out_write("LSP config for " .. lsp .. ":\n" .. dumped .. "\n")
        -- end
        if vim.lsp.config[lsp] and lsp_binary_exists(vim.lsp.config[lsp]) then
            vim.lsp.enable(lsp)
        end
    end

    if not vim.lsp.get_clients and vim.fn.bufname("%") ~= "" then
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
