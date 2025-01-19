local M = {
  'iamcco/markdown-preview.nvim',
  cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
  ft = { 'markdown' },
  build = function()
    vim.fn['mkdp#util#install']()
  end,
}

function M.config()
  vim.cmd [[

function OpenMarkdownPreview (url)

let cmd = "export DISPLAY=:0;zen-browser --new-window " . shellescape(a:url) . " &"

silent call system(cmd)

endfunction

]]
  vim.g.mkdp_auto_start = 1
  vim.g.mkdp_auto_close = 0
  vim.g.mkdp_command_for_global = 0
  vim.g.mkdp_open_to_the_world = 1
  vim.g.combine_preview = 1
  vim.g.combine_preview_auto_refresh = 1
  vim.g.mkdp_browserfunc = 'OpenMarkdownPreview'
end

return M
