-- Creates a new autocommand group to display the diagnostics floating window
-- when the cursor is over an according buffer line.
-- Autohides the floating window when entering Insert mode.

local group = vim.api.nvim_create_augroup('ta2edchimp.custom.diagnostics', {})

local function au(typ, pattern, commandOrFn)
  if type(commandOrFn) == 'function' then
    vim.api.nvim_create_autocmd(typ, { pattern = pattern, callback = commandOrFn, group = group })
  else
    vim.api.nvim_create_autocmd(typ, { pattern = pattern, command = commandOrFn, group = group })
  end
end

au({ 'CursorHold', 'InsertLeave' }, nil, function()
  local opts = {
    focusable = false,
    scope = 'cursor',
    close_events = { 'BufLeave', 'CursorMoved', 'InsertEnter' },
  }
  vim.diagnostic.open_float(nil, opts)
end)

au('InsertEnter', nil, function()
  vim.diagnostic.enable(false)
end)

au('InsertLeave', nil, function()
  vim.diagnostic.enable(true)
end)

return {}
