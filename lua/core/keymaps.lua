vim.g.mapleader = " "

local keymap = vim.keymap
vim.api.nvim_set_keymap("n", "<leader>qs", [[<cmd>lua require("persistence").load()<cr>]], {})

-- leader keymap
keymap.set("n", "<leader>nh", ":nohl<CR>")
keymap.set("n", "<leader>wd", "<C-w>c") -- close window

-- ---------- 插入模式 ---------- ---
keymap.set("i", "jk", "<ESC>")
keymap.set("i", "<C-s>", "<ESC>:w<CR>")

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("v", "H", "^")
keymap.set("v", "L", "$")

-- ---------- 正常模式 ---------- ---
-- 窗口
keymap.set("n", "<leader>ss", "<C-w>v") -- 水平新增窗口
keymap.set("n", "<leader>sv", "<C-w>s") -- 垂直新增窗口
-- vim-navigator 插件有这个功能
-- keymap.set("n", "<C-h>", "<C-w>h") -- move to left window
-- keymap.set("n", "<C-l>", "<C-w>l") -- move to right window
keymap.set("n", "<C-s>", "<ESC>:w<CR>") -- save file
keymap.set("n", "<C-a>", "GVgg")        -- select all

-- quick move cursor
keymap.set("n", "H", "^")
keymap.set("n", "L", "$")
keymap.set("n", "dH", "d^")
keymap.set("n", "dL", "d$")

-- ---------- 选择模式 ---------- ---
keymap.set("s", "<C-s>", "<ESC>:w<CR>") -- save file


-- 切换buffer
keymap.set("n", "<tab>", ":bnext<CR>")
keymap.set("n", "<S-tab>", ":bprevious<CR>")

-- ---------- 插件 ---------- ---
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
