-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- Make line numbers default
vim.opt.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
vim.opt.relativenumber = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { eol = '', tab = '» ', trail = '·', nbsp = '␣' }

-- Hilight column 80 with a certain color
vim.opt.colorcolumn = '80'

-- Extracted from `lualine.nvim/lua/lualine/components/diagnostics/config`
local signs = { Error = '󰅚 ', Warn = '󰀪 ', Info = '󰋽 ', Hint = '󰌶 ' }
for type, icon in pairs(signs) do
  local hl = 'DiagnosticSign' .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

return {}
