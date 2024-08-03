local M = {
    "stevearc/oil.nvim",
    event = "VeryLazy",
}

function M.config()
    local oil = require("oil")
    oil.setup()
    vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
end

return M
