local M = {}

--
-- M.disabled = {
--    "<C-n>",
-- }

M.treesitter = {
    n = {
        ["<leader>cu"] = {"<cmd> TSCaptureUnderCursor <CR>", "  find media"}
    }
}

M.general = {

    i = {

        -- go to  beginning and end
        ["<C-b>"] = {"<ESC>^i", "論 beginning of line"},
        ["<C-e>"] = {"<End>", "壟 end of line"},

        -- navigate within insert mode
        ["<C-h>"] = {"<Left>", "  move left"},
        ["<C-l>"] = {"<Right>", " move right"},
        ["<C-j>"] = {"<Down>", " move down"},
        ["<C-k>"] = {"<Up>", " move up"},
        ["jk"] = {"<ESC>", "Press jk fast to enter normal mode"}
    },

    n = {
        ["<C-Up>"] = {":resize -2<CR>", "Resize up"},
        ["<C-Down>"] = {":resize +2<CR>", "Resize Down"},
        ["<C-Left>"] = {":vertical resize -2<CR>", "Resize left"},
        ["<C-Right>"] = {":vertical resize +2<CR>", "Resize right"},
        ["<A-j>"] = {"<Esc>:m .+1<CR>==gi", "Move text down"},
        ["<A-k>"] = {"<Esc>:m .-2<CR>==gi", "Move text down"},
        ["<leader>h"] = {"0", "Move to first element"},
        ["<leader>l"] = {"$", "Move to last element"},
        ["<leader>e"] = {":NvimTreeToggle <CR>", "Toggle NvimTree"}
    },
    v = {
        ["<A-j>"] = {"<Esc>:m .+1<CR>==gi", "Move text down"},
        ["<A-k>"] = {"<Esc>:m .-2<CR>==gi", "Move text down"},
        ["p"] = {'"_dP', "Move text down"}
    },
    x = {
        ["J"] = {":move '>+1<CR>gv-gv", "Move text down"},
        ["K"] = {":move '<-2<CR>gv-gv", "Move text up"},
        ["<A-j>"] = {":move '>+1<CR>gv-gv", "Move text down"},
        ["<A-k>"] = {":move '<-2<CR>gv-gv", "Move text down"}
    }
}

return M
