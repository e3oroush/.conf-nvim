vim.keymap.set('n', '<leader>hgs', vim.cmd.Neogit, { silent = true, noremap = true, desc = 'open neogit window' })

vim.keymap.set('n', '<leader>hgc', ':Neogit commit<CR>', { silent = true, noremap = true, desc = 'Commit using neogit' })

vim.keymap.set('n', '<leader>hgp', ':Neogit pull<CR>', { silent = true, noremap = true, desc = 'pull using neogit' })

vim.keymap.set('n', '<leader>hgP', ':Neogit push<CR>', { silent = true, noremap = true, desc = 'push using neogit' })

vim.keymap.set('n', '<leader>hgb', ':Telescope git_branches<CR>', { silent = true, noremap = true, desc = 'neogit branches using telescope' })

vim.keymap.set('n', '<leader>hgB', ':G blame<CR>', { silent = true, noremap = true, desc = 'neogi blame' })
return {
  'NeogitOrg/neogit',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional - Diff integration
    'nvim-telescope/telescope.nvim', -- optional
  },
  config = true,
}
