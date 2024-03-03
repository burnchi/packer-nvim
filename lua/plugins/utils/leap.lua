require('leap').create_default_mappings()

-- search in current window
vim.keymap.set('n', 's', function()
  require('leap').leap { target_windows = { vim.api.nvim_get_current_win() } }
end)
