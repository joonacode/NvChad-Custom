local M = {}

M.treesitter = {
    ensure_installed = {"vim", "html", "css", "javascript", "typescript", "svelte", "vue", "json", "markdown", "c",
                        "bash", "lua"},
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    },
    autotag = {
        enable = true
    },
    rainbow = {
        enable = true,
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil -- Do not enable for files with more than n lines, int
        -- colors = {}, -- table of hex strings
        -- termcolors = {} -- table of colour name strings
    },
    autopairs = {
        enable = true
    },
    indent = {
        enable = true
    }
}

M.nvimtree = {
    git = {
        enable = true
    },
    view = {
        side = "left",
        width = 20
    },
    renderer = {
        highlight_git = true,
        icons = {
            show = {
                git = true
            }
        }
    }
}

return M
