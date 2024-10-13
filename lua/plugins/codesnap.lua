vim.keymap.set('v', '<leader>zsc', vim.cmd.CodeSnap, { desc = 'Code snapshot to clipboard' })
vim.keymap.set('v', '<leader>zss', vim.cmd.CodeSnapSave, { desc = 'Code snapshot save' })
return {
  'mistricky/codesnap.nvim',
  build = 'make',
  config = function()
    require('codesnap').setup {
      border = 'rounded',
      has_breadcrumbs = true,
      bg_theme = 'grape',
      watermark = '',
    }
  end,
}
