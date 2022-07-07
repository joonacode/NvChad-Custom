local M = {}

local util = require "lspconfig.util"

M.setup_lsp = function(attach, capabilities)
    local lspconfig = require "lspconfig"

    -- lspservers with default config
    -- tsserver conflict with volar
    local servers = {
        "html", "cssls", "clangd", "eslint", "stylelint_lsp", "tailwindcss",
        "sumneko_lua", "tsserver"
    }
    -- lspconfig.volar.setup {
    --
    --     filetypes = {
    --         "typescript", "javascript", "javascriptreact", "typescriptreact",
    --         "vue", "json"
    --     },
    --
    --     on_attach = function(client, bufnr) attach(client, bufnr) end,
    --     capabilities = capabilities
    -- }
    for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup {
            on_attach = function(client, bufnr)
                attach(client, bufnr)
                -- change gopls server capabilities
                if lsp == "gopls" then
                    client.resolved_capabilities.document_formatting = true
                    client.resolved_capabilities.document_range_formatting =
                        true
                end
            end,
            capabilities = capabilities
        }
    end
end

return M
