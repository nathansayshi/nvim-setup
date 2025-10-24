vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local keymap = vim.keymap

--[[
Key mapping template:
keymap.set("X", "COMBO", "<COMMAND>", { desc = "help text" })
--]]

-- Allow easy escape with either jk or kj
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("i", "kj", "<ESC>", { desc = "Exit insert mode with kj" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>=", "<C-a>", { desc = "Increment number" }) -- same key as + plus no need for shift
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- window management: easier movement
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to window above" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to window below" })

-- window management: splits
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- window management: tabs
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

