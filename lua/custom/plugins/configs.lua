local M = {}
M.treesitter = {
    ensure_installed = "all",
    ignore_install = {"phpdoc"},
    highlight = {enable = false, additional_vim_regex_highlighting = false}
    -- textobjects = {select = {enable = true}},
    -- rainbow = {enable = true, extended_mode = true, max_file_lines = 1000},
    -- context_commentstring = {enable = true, enable_autocmd = false},
    -- matchup = {enable = true},
    -- context = {enable = true, throttle = true},
    -- autotag = {
    --     enable = true,
    --     filetypes = {
    --         "html", "xml", "javascript", "javascriptreact", "typescript",
    --         "typescriptreact", "vue", "svelte"
    --     }
    -- },
    -- autopairs = {enable = true},
    -- indent = {enable = true}
}

M.nvimtree = {
    git = {enable = true},
    view = {side = "left", width = 20},
    renderer = {highlight_git = true, icons = {show = {git = true}}}
}

return M
