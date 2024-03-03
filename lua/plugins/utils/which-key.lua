local wk = require("which-key")

vim.o.timeout = true
vim.o.timeoutlen = 300
wk.setup {}
-- 这里绑定的命令会覆盖原来的
wk.register({
  ["<leader>f"] = { name = "File" },
  ["<leader>ff"] = { "<cmd>Telescope find_files<cr>", "Find File" },
  ["<leader>fg"] = { "<cmd>Telescope live_grep<cr>", "File Grep" },
  ["<leader>fr"] = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
  ["<leader>fb"] = { "<cmd>Telescope buffers<cr>", "Watch All Buffers" },
  ["<leader>fh"] = { "<cmd>Telescope help_tags<cr>", "Watch All Help" },
  ["<leader>fs"] = { ":Telescope persisted<cr>", "Find All Sessions" },
  -- ["<leader>fn"] = { "<cmd>enew<cr>", "New File" },
})

wk.register({
  ["<leader>b"] = { name = "Buffer" },
  ["<leader>bd"] = { "<cmd>lua MiniBufremove.delete()<CR>", "Delete Current buffer" },
  ["<leader>bo"] = { "<cmd>lua MiniBufremove.delete()<CR>", "Delete Other buffers" },
  -- ["<leader>fn"] = { "<cmd>enew<cr>", "New File" },
})
