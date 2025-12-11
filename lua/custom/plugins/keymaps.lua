-- [[ Custom Keymap Config ]]

-- [[ Inline Lua Goodness ]]
vim.keymap.set('n', '<leader>xf', '<cmd>source %<CR>', { desc = 'E[x]ecute [F]ile (lua)' })
vim.keymap.set('n', '<leader>xl', ':.lua<CR>', { desc = 'E[x]ecute [L]ine (lua)' })
vim.keymap.set('v', '<leader>x', ':lua<CR>', { desc = 'E[x]ecute Selection (lua)' })

return {}
