local M = {
    'norcalli/nvim-colorizer.lua',
    event = "BufEnter"
}

function M.config()
    local colorizer = require('colorizer')
    DEFAULT_OPTIONS = {
        RGB      = true,         -- #RGB hex codes
        RRGGBB   = true,         -- #RRGGBB hex codes
        names    = false,        -- "Name" codes like Blue
        RRGGBBAA = false,        -- #RRGGBBAA hex codes
        rgb_fn   = false,        -- CSS rgb() and rgba() functions
        hsl_fn   = false,        -- CSS hsl() and hsla() functions
        css      = false,        -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn   = false,        -- Enable all CSS *functions*: rgb_fn, hsl_fn
        -- Available modes: foreground, background
        mode     = 'foreground', -- Set the display mode.
    }
    colorizer.setup(
        {
            '*',
            '!vim',
            '!oil',
            python = { names = false, }
        },
        DEFAULT_OPTIONS)
    vim.keymap.set('n', '<leader>ct', "<cmd>ColorizerToggle<CR>", { silent = true })
end

return M
