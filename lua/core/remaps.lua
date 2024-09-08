vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`
local keymap = vim.keymap
-- undotree toggle
keymap.set('n', '<leader><F5>', vim.cmd.UndotreeToggle, { desc = 'Toggle undotree' })

keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = 'Exit current buffer go to directory' })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
keymap.set('t', 'jk', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
-- keymap.set('e', 'jk', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- inverse text wrapping
keymap.set('n', '<leader>zz', ':set invwrap<CR>', { desc = 'Inverse text wrapping' })

keymap.set('n', '\\', vim.cmd.NvimTreeToggle, { desc = 'Toggle nvim tree' })
keymap.set('n', '<leader>ts', ':split | terminal<CR>', { desc = 'Open terminal in a horizontal pane' })
keymap.set('n', '<leader>tv', ':vsplit | terminal<CR>', { desc = 'Open terminal in a vertical pane' })

-- buffer keymaps
keymap.set('n', '<leader>bn', ':bnext<CR>', { desc = '[B]buffer to next' })
keymap.set('n', '<leader>bp', ':bprevious<CR>', { desc = '[B]buffer to previous' })
keymap.set('n', '<leader>bx', ':bp|bd#<CR>', { desc = 'exit current [B]uffer' })
keymap.set('n', '<leader>bX', ':bp|bd!#<CR>', { desc = 'exit current [B]uffer' })

keymap.set('n', '<leader>mp', vim.cmd.Neogen, { desc = 'Auto doc string' })
