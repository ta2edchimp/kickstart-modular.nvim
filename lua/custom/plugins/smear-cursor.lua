return {
  -- Adds a nice smooth animation to the cursor for — imho — better
  -- visibility of the cursor, even when switching between buffers,
  -- as well as when moving down to the command line
  -- https://github.com/sphamba/smear-cursor.nvim
  'sphamba/smear-cursor.nvim',
  -- NOTE: This is actually required to activate the plugin at all, even when
  -- nothing special gets customized!
  opts = {
    -- Somehow, this changes the cursor smear's color, but not the cursor's
    -- actual color :(
    -- cursor_color = '#ff7000',
  },
}
