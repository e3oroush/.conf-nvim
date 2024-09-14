vim.keymap.set('n', '<leader>gs', vim.cmd.Neogit, { silent = true, noremap = true, desc = 'open neogit window' })

vim.keymap.set('n', '<leader>gc', ':Neogit commit<CR>', { silent = true, noremap = true, desc = 'Commit using neogit' })

vim.keymap.set('n', '<leader>gp', ':Neogit pull<CR>', { silent = true, noremap = true, desc = 'pull using neogit' })

vim.keymap.set('n', '<leader>gP', ':Neogit push<CR>', { silent = true, noremap = true, desc = 'push using neogit' })

vim.keymap.set('n', '<leader>gb', ':Telescope git_branches<CR>', { silent = true, noremap = true, desc = 'neogit branches using telescope' })

vim.keymap.set('n', '<leader>gB', ':G blame<CR>', { silent = true, noremap = true, desc = 'neogi blame' })
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
