local null_ls = require "null-ls"
local b = null_ls.builtins

local sources = {
    -- diagnostics
    b.diagnostics.eslint_d, b.diagnostics.tsc.with {filetypes = {"typescript"}},
    b.diagnostics.luacheck.with {extra_args = {"--global vim"}}, -- Shell
    b.diagnostics.shellcheck.with {diagnostics_format = "#{m} [#{c}]"},

    -- code_actions
    b.code_actions.eslint_d, -- formatting
    b.formatting.eslint_d, b.formatting.prettier, b.formatting.deno_fmt, -- Lua
    b.formatting.stylua, b.formatting.lua_format, b.formatting.shfmt
}

local M = {}

M.setup = function()
    null_ls.setup {
        debug = true,
        sources = sources,

        -- format on save
        on_attach = function(client)
            if client.resolved_capabilities.document_formatting then
                vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()"
            end
        end
    }
end

return M
