-- See `:help gitsigns` to understand what the configuration keys do
-- Adds git related signs to the gutter, as well as utilities for managing changes
local M = {
    'lewis6991/gitsigns.nvim',
    event = "BufEnter",
    cmd = "Gitsigns"
}

function M.config()
    local icons = require("user.icons")
    local gitsign = require('gitsigns')
    local opts = {
        signs = {
            add = {
                text = icons.ui.BoldLineMiddle,
            },
            change = {
                text = icons.ui.BoldLineDashedMiddle,
            },
            delete = {
                text = icons.ui.TriangleShortArrowRight,
            },
            topdelete = {
                text = icons.ui.TriangleShortArrowRight,
            },
            changedelete = {
                text = icons.ui.BoldLineMiddle,
            },
        },
        watch_gitdir = {
            interval = 1000,
            follow_files = true,
        },
        attach_to_untracked = true,
        current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
        current_line_blame_opts = {
            virt_text = true,
            virt_text_pos = 'right_align',
            delay = 500,
            ignore_whitespace = false,
            virt_text_priority = 100,
        },
        update_debounce = 200,
        max_file_length = 40000,
        preview_config = {
            border = "rounded",
            style = "minimal",
            relative = "cursor",
            row = 0,
            col = 1,
        },
    }
    gitsign.setup(opts)
    -- Shorten function name
    local keymap = vim.keymap.set
    -- Silent keymap option
    local opts = { silent = true }
    keymap("n", "<leader>gb", "<cmd>Gitsigns toggle_current_line_blame<CR>", opts)
    keymap("n", "<leader>gj", "<cmd>Gitsigns next_hunk<CR>", opts)
    keymap("n", "<leader>gk", "<cmd>Gitsigns prev_hunk<CR>", opts)
    keymap("n", "<leader>gd", "<cmd>Gitsigns diffthis<CR>", opts)
    keymap("n", "<leader>gr", "<cmd>Gitsigns reset_hunk<CR>", opts)
    keymap("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", opts)
    keymap("n", "<leader>gR", "<cmd>Gitsigns reset_buffer<CR>", opts)
end

return M
