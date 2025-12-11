return {
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      -- Unnecessary: it's the default
      -- columns = {
      --   'icon',
      --   -- 'permissions',
      --   -- 'size',
      --   -- 'mtime',
      --   -- 'ctime',
      -- },
      -- INFO: Use keybind `g?` for keymap overview:
      -- Keybind `g.` toggles hidden files
      -- view_options = {
      --   show_hidden = true,
      -- },
      float = {
        border = 'rounded',
      },
      confirmation = {
        border = 'rounded',
      },
      progress = {
        border = 'rounded',
      },
      ssh = {
        border = 'rounded',
      },
      keymaps_help = {
        border = 'rounded',
      },
    },
    -- Optional dependencies
    dependencies = { { 'nvim-mini/mini.icons', opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
  },
}
