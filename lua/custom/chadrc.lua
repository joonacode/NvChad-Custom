-- Just an example, supposed to be placed in /lua/custom/
local pluginConfs = require "custom.plugins.configs"

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

local my_highlights = require "custom.highlights"

M.ui = {theme = "kanagawa", transparency = true}

M.plugins = {
    options = {lspconfig = {setup_lspconf = "custom.plugins.lspconfig"}},
    user = {
        ["jose-elias-alvarez/null-ls.nvim"] = {
            after = "nvim-lspconfig",
            config = function()
                require("custom.plugins.null-ls").setup()
            end
        },
        ["mvllow/modes.nvim"] = {
            after = "nvim-lspconfig",
            config = function()
                require("custom.plugins.modes_nvim").setup()
            end
        },
        ["windwp/nvim-ts-autotag"] = {},
        ["lukas-reineke/indent-blankline.nvim"] = {
            after = "nvim-lspconfig",
            config = function()
                require("custom.plugins.indent-blankline").setup()
            end
        },
        ["goolord/alpha-nvim"] = {disable = false}
    },
    override = {
        ["nvim-treesitter/nvim-treesitter"] = pluginConfs.treesitter,
        ["kyazdani42/nvim-tree.lua"] = pluginConfs.nvimtree
    }
}

M.mappings = require "custom.mappings"
M.options = {
    user = function()
        vim.opt.relativenumber = true
        -- vim.opt.list = true
        -- vim.opt.listchars:append "space:⋅"
        -- vim.opt.listchars:append "eol:↴"
    end
}

return M
