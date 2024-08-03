local M = {
    "aserowy/tmux.nvim",
    event = "VeryLazy",
}


function M.config()
    local tmux = require("tmux")
    tmux.setup()
end

return M
