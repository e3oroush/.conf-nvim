if false then
  return {}
end

local keymap = vim.keymap

keymap.set('n', '<leader>ml', vim.cmd.MagmaEvaluateLine, { desc = 'Evaluate current line' })
keymap.set('v', '<leader>mv', ':<c-u>MagmaEvaluateVisual<CR>', { desc = 'Evaluate visualeline' })
keymap.set('n', '<leader>mo', vim.cmd.MagmaShowOutput, { desc = 'Show output cell' })
keymap.set('n', '<leader>mc', vim.cmd.MagmaReevaluateCell, { desc = 'Reevaluate the current cell' })
keymap.set('n', '<leader>mr', vim.cmd.MagmaRestart, { desc = 'Restart the current kernel' })
keymap.set('n', '<leader>mR', ':MagmaRestart!', { desc = 'Restart and delete the outputs' })
keymap.set('n', '<leader>mc', vim.cmd.MagmaReevaluateCell, { desc = 'Restart and delete the outputs' })
keymap.set('n', '<leader>md', vim.cmd.MagmaInterrupt, { desc = 'Interrupt the current running kernel' })
keymap.set('n', '<leader>mi', vim.cmd.MagmaInitPython, { desc = 'Initialize the python kernel' })

function MagmaInitPython()
  vim.cmd [[
    :MagmaInit python3
    ]]
end

vim.cmd [[
:command MagmaInitPython lua MagmaInitPython()
]]

return {
  {
    'dccsillag/magma-nvim',
    version = '*',
    run = 'UpdateRemotePlugins',
    'dccsillag/magma-nvim',
  },
}
