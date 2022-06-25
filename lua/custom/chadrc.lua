-- Just an example, supposed to be placed in /lua/custom/
local pluginConfs = require "custom.plugins.configs"

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
    theme = "tokyodark"
}

M.plugins = {
    options = {
        lspconfig = {
            setup_lspconf = "custom.plugins.lspconfig"
        }
    },
    user = {
        ["jose-elias-alvarez/null-ls.nvim"] = {
            after = "nvim-lspconfig",
            config = function()
                require("custom.plugins.null-ls").setup()
            end
        },
        ["lukas-reineke/indent-blankline.nvim"] = {
            after = "nvim-lspconfig",
            config = function()
                require("indent_blankline").setup {
                    buftype_exclude = {"terminal"},
                    filetype_exclude = {"dashboard", "NvimTree", "packer", "lsp-installer"},
                    show_current_context = true,
                    show_current_context_start = true,
                    context_patterns = {
                      "class", "return", "function", "method", "^if", "^while", "jsx_element", "^for", "^object",
                      "^table", "block", "arguments", "if_statement", "else_clause", "jsx_element",
                      "jsx_self_closing_element", "try_statement", "catch_clause", "import_statement",
                      "operation_type"
                    }
                  }
            end
        },
        ["goolord/alpha-nvim"] = {
            disable = false,
         },
    },
    override = {
        ["nvim-treesitter/nvim-treesitter"] = pluginConfs.treesitter,
        ["kyazdani42/nvim-tree.lua"] = pluginConfs.nvimtree,

    }
}



M.mappings = require "custom.mappings"
M.options = {
    user = function()
        vim.opt.list = true
        vim.opt.listchars:append("space:⋅")
        vim.opt.listchars:append("eol:↴")
    end
}

return M
