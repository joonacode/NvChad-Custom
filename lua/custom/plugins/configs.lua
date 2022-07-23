local M = {}
M.treesitter = {
    ensure_installed = "all",
    ignore_install = {"phpdoc"},
    highlight = {enable = true, additional_vim_regex_highlighting = false},
    -- textobjects = {select = {enable = true}},
    -- rainbow = {enable = true, extended_mode = true, max_file_lines = 1000},
    -- context_commentstring = {enable = true, enable_autocmd = false},
    -- matchup = {enable = true},
    -- context = {enable = true, throttle = true},
    autotag = {
        enable = true,
        filetypes = {
            "html", "xml", "javascript", "javascriptreact", "typescript",
            "typescriptreact", "vue", "svelte"
        }
    },
    autopairs = {enable = true},
    indent = {enable = true}
}

M.nvimtree = {
    git = {enable = true, ignore = false},
    view = {side = "left", width = 20, relativenumber = true},
    renderer = {
        highlight_git = true,
        highlight_opened_files = "icon",
        icons = {show = {git = true, folder_arrow = false}},
        indent_markers = {
            enable = true,
            icons = {corner = "└", edge = "│", item = "│", none = " "}
        }
    },
    diagnostics = {
        enable = true,
        show_on_dirs = true,
        debounce_delay = 50,
        icons = {hint = "", info = "", warning = "", error = ""}
    }
}

return M
