return {
  -- A better C# LSP while using the Roslyn Language Server directly
  -- NOTE: Unfortunately, not available through the official Mason registry,
  -- so Mason has to be configured to use another besides the official.
  --
  -- in lua/kickstart/plugins/lspconfig.lua:
  -- {
  --   'mason-org/mason.nvim',
  --   opts = {
  --     -- This would be necessary for e.g. the roslyn lsp that is
  --     -- different from the one that comes with nvim-lspconfig:
  --     registries = {
  --       'github:mason-org/mason-registry',
  --       'github:Crashdummyy/mason-registry',
  --     },
  --   },
  -- },
  --
  -- After that, install the lsp using the UI via :Mason
  -- or install directly via :MasonInstall roslyn
  'seblyng/roslyn.nvim',
  ---@module 'roslyn.config'
  ---@type RoslynNvimConfig
  opts = {
    -- NOTE: Your configuration comes here; leave empty for default settings
    -- https://github.com/seblyng/roslyn.nvim?tab=readme-ov-file#%EF%B8%8F-configuration
  },
}
