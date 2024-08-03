local M = {
  "lukas-reineke/indent-blankline.nvim",
  event = "VeryLazy",
}

function M.config()
  local ibl = require("ibl")
  ibl.setup()
end

return M
