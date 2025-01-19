local M = {
    'MeanderingProgrammer/render-markdown.nvim',
    opts = { enabled = false, anti_conceal = { enabled = false } },
    keys = { { '<leader>mr', '<cmd>RenderMarkdown toggle<cr>', desc = 'Render markdown file in buffer'}},
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
}

return M
